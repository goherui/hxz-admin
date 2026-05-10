package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type RiskRuleService struct{}

var RiskRuleServiceApp = new(RiskRuleService)

func (s *RiskRuleService) CreateRiskRule(rule hxz.RiskRule) (err error) {
	err = global.GVA_DB.Create(&rule).Error
	return
}

func (s *RiskRuleService) UpdateRiskRule(rule hxz.RiskRule) (err error) {
	err = global.GVA_DB.Save(&rule).Error
	return
}

func (s *RiskRuleService) DeleteRiskRule(id uint) (err error) {
	err = global.GVA_DB.Where("id = ?", id).Delete(&hxz.RiskRule{}).Error
	return
}

func (s *RiskRuleService) GetRiskRuleByID(id uint) (rule hxz.RiskRule, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&rule).Error
	return
}

func (s *RiskRuleService) GetRiskRuleList(info hxzReq.RiskRuleSearch) (list interface{}, total int64, err error) {
	db := global.GVA_DB.Model(&hxz.RiskRule{})
	if info.Name != "" {
		db = db.Where("name LIKE ?", "%"+info.Name+"%")
	}
	if info.Type != "" {
		db = db.Where("type = ?", info.Type)
	}
	if info.RiskLevel != nil {
		db = db.Where("risk_level = ?", *info.RiskLevel)
	}
	if info.IsActive != nil {
		db = db.Where("is_active = ?", *info.IsActive)
	}
	var ruleList []hxz.RiskRule
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Order("id desc").Scopes(info.Paginate()).Find(&ruleList).Error
	return ruleList, total, err
}

func (s *RiskRuleService) ToggleRiskRule(id uint, isActive int) (err error) {
	err = global.GVA_DB.Model(&hxz.RiskRule{}).Where("id = ?", id).Update("is_active", isActive).Error
	return
}
