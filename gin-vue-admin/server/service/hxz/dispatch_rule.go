package hxz

import (
	"context"
	"encoding/json"
	"fmt"
	"time"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type DispatchRuleService struct{}

var DispatchRuleServiceApp = new(DispatchRuleService)

func (s *DispatchRuleService) CreateDispatchRule(rule hxz.DispatchRule) (err error) {
	rule.Version = 1
	err = global.GVA_DB.Create(&rule).Error
	if err != nil {
		return err
	}
	snapshot, _ := json.Marshal(rule)
	versionRecord := hxz.DispatchRuleVersion{
		RuleID:     rule.ID,
		Version:    1,
		Snapshot:   string(snapshot),
		ChangeDesc: "创建规则",
	}
	return global.GVA_DB.Create(&versionRecord).Error
}

func (s *DispatchRuleService) DeleteDispatchRule(id uint) (err error) {
	err = global.GVA_DB.Delete(&hxz.DispatchRule{}, id).Error
	return err
}

func (s *DispatchRuleService) DeleteDispatchRuleByIds(ids []uint) (err error) {
	err = global.GVA_DB.Delete(&hxz.DispatchRule{}, ids).Error
	return err
}

func (s *DispatchRuleService) UpdateDispatchRule(rule *hxz.DispatchRule) (err error) {
	var oldRule hxz.DispatchRule
	if err = global.GVA_DB.Where("id = ?", rule.ID).First(&oldRule).Error; err != nil {
		return err
	}
	rule.Version = oldRule.Version + 1
	err = global.GVA_DB.Save(rule).Error
	if err != nil {
		return err
	}
	snapshot, _ := json.Marshal(rule)
	versionRecord := hxz.DispatchRuleVersion{
		RuleID:     rule.ID,
		Version:    rule.Version,
		Snapshot:   string(snapshot),
		ChangeDesc: fmt.Sprintf("更新规则至版本%d", rule.Version),
	}
	if err = global.GVA_DB.Create(&versionRecord).Error; err != nil {
		return err
	}
	cacheKey := fmt.Sprintf("hxz:dispatch:rule:%s:%s", rule.CityCode, rule.VehicleType)
	global.GVA_REDIS.Del(context.Background(), cacheKey)
	return nil
}

func (s *DispatchRuleService) GetDispatchRule(id uint) (rule hxz.DispatchRule, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&rule).Error
	return
}

func (s *DispatchRuleService) GetDispatchRuleList(info request.DispatchRuleSearch) (list []hxz.DispatchRule, total int64, err error) {
	db := global.GVA_DB.Model(&hxz.DispatchRule{})
	if info.CityCode != "" {
		db = db.Where("city_code = ?", info.CityCode)
	}
	if info.VehicleType != "" {
		db = db.Where("vehicle_type = ?", info.VehicleType)
	}
	if info.IsActive != nil {
		db = db.Where("is_active = ?", *info.IsActive)
	}
	if info.Keyword != "" {
		db = db.Where("rule_name LIKE ?", "%"+info.Keyword+"%")
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Order("priority desc, id desc").Scopes(info.Paginate()).Find(&list).Error
	return
}

func (s *DispatchRuleService) RollbackDispatchRule(rollbackReq request.DispatchRuleRollback, operatorID uint) (err error) {
	var versionRecord hxz.DispatchRuleVersion
	if err = global.GVA_DB.Where("rule_id = ? AND version = ?", rollbackReq.RuleID, rollbackReq.Version).First(&versionRecord).Error; err != nil {
		return err
	}
	var rule hxz.DispatchRule
	if err = json.Unmarshal([]byte(versionRecord.Snapshot), &rule); err != nil {
		return err
	}
	var currentRule hxz.DispatchRule
	if err = global.GVA_DB.Where("id = ?", rollbackReq.RuleID).First(&currentRule).Error; err != nil {
		return err
	}
	rule.ID = rollbackReq.RuleID
	rule.Version = currentRule.Version + 1
	err = global.GVA_DB.Save(&rule).Error
	if err != nil {
		return err
	}
	newSnapshot, _ := json.Marshal(rule)
	newVersion := hxz.DispatchRuleVersion{
		RuleID:     rule.ID,
		Version:    rule.Version,
		Snapshot:   string(newSnapshot),
		ChangeDesc: fmt.Sprintf("回滚至版本%d", rollbackReq.Version),
	}
	if err = global.GVA_DB.Create(&newVersion).Error; err != nil {
		return err
	}
	cacheKey := fmt.Sprintf("hxz:dispatch:rule:%s:%s", rule.CityCode, rule.VehicleType)
	global.GVA_REDIS.Del(context.Background(), cacheKey)
	return nil
}

func (s *DispatchRuleService) GetDispatchRuleFromCache(cityCode, vehicleType string) (rule hxz.DispatchRule, err error) {
	cacheKey := fmt.Sprintf("hxz:dispatch:rule:%s:%s", cityCode, vehicleType)
	ctx := context.Background()
	cached, err := global.GVA_REDIS.Get(ctx, cacheKey).Result()
	if err == nil {
		if jsonErr := json.Unmarshal([]byte(cached), &rule); jsonErr == nil {
			return rule, nil
		}
	}
	err = global.GVA_DB.Where("city_code = ? AND vehicle_type = ? AND is_active = ?", cityCode, vehicleType, true).
		Order("priority desc").First(&rule).Error
	if err != nil {
		return
	}
	if data, marshalErr := json.Marshal(rule); marshalErr == nil {
		global.GVA_REDIS.Set(ctx, cacheKey, string(data), 10*time.Minute)
	}
	return
}

func (s *DispatchRuleService) GetDispatchMonitorData(cityCode string) (data map[string]interface{}, err error) {
	var activeCount int64
	var totalCount int64
	global.GVA_DB.Model(&hxz.DispatchRule{}).Where("city_code = ? AND is_active = ?", cityCode, true).Count(&activeCount)
	global.GVA_DB.Model(&hxz.DispatchRule{}).Where("city_code = ?", cityCode).Count(&totalCount)
	var recentLogs []hxz.DispatchManualLog
	global.GVA_DB.Where("reason LIKE ?", "%"+cityCode+"%").Order("id desc").Limit(10).Find(&recentLogs)
	data = map[string]interface{}{
		"activeRuleCount": activeCount,
		"totalRuleCount":  totalCount,
		"recentManualLogs": recentLogs,
	}
	return data, nil
}
