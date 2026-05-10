package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type SurgeRuleService struct{}

var SurgeRuleServiceApp = new(SurgeRuleService)

func (s *SurgeRuleService) CreateSurgeRule(req hxzReq.SurgeRuleCreateReq) (err error) {
	rule := hxz.SurgeRule{
		CityCode:         req.CityCode,
		TriggerType:      req.TriggerType,
		TriggerCondition: req.TriggerCondition,
		SurgeRate:        req.SurgeRate,
		MaxSurgeRate:     req.MaxSurgeRate,
		TimeStart:        req.TimeStart,
		TimeEnd:          req.TimeEnd,
		IsActive:         req.IsActive,
		EffectiveDate:    req.EffectiveDate,
	}
	err = global.GVA_DB.Create(&rule).Error
	return
}

func (s *SurgeRuleService) UpdateSurgeRule(rule hxz.SurgeRule) (err error) {
	err = global.GVA_DB.Save(&rule).Error
	return
}

func (s *SurgeRuleService) DeleteSurgeRule(id uint) (err error) {
	err = global.GVA_DB.Where("id = ?", id).Delete(&hxz.SurgeRule{}).Error
	return
}

func (s *SurgeRuleService) GetSurgeRuleByID(id uint) (rule hxz.SurgeRule, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&rule).Error
	return
}

func (s *SurgeRuleService) GetSurgeRuleList(info hxzReq.SurgeRuleSearch) (list interface{}, total int64, err error) {
	db := global.GVA_DB.Model(&hxz.SurgeRule{})
	if info.CityCode != "" {
		db = db.Where("city_code = ?", info.CityCode)
	}
	if info.TriggerType != "" {
		db = db.Where("trigger_type = ?", info.TriggerType)
	}
	if info.IsActive != nil {
		db = db.Where("is_active = ?", *info.IsActive)
	}
	var ruleList []hxz.SurgeRule
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Order("id desc").Scopes(info.Paginate()).Find(&ruleList).Error
	return ruleList, total, err
}
