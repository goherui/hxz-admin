package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type FareRuleService struct{}

var FareRuleServiceApp = new(FareRuleService)

func (s *FareRuleService) CreateFareRule(req hxzReq.FareRuleCreateReq) (err error) {
	rule := hxz.FareRule{
		CityCode:      req.CityCode,
		VehicleType:   req.VehicleType,
		BaseDistance:  req.BaseDistance,
		BasePrice:     req.BasePrice,
		PerKmPrice:    req.PerKmPrice,
		PerMinPrice:   req.PerMinPrice,
		MinPrice:      req.MinPrice,
		NightStart:    req.NightStart,
		NightEnd:      req.NightEnd,
		NightRate:     req.NightRate,
		IsActive:      req.IsActive,
		EffectiveDate: req.EffectiveDate,
	}
	err = global.GVA_DB.Create(&rule).Error
	return
}

func (s *FareRuleService) UpdateFareRule(rule hxz.FareRule) (err error) {
	err = global.GVA_DB.Save(&rule).Error
	return
}

func (s *FareRuleService) DeleteFareRule(id uint) (err error) {
	err = global.GVA_DB.Where("id = ?", id).Delete(&hxz.FareRule{}).Error
	return
}

func (s *FareRuleService) GetFareRuleByID(id uint) (rule hxz.FareRule, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&rule).Error
	return
}

func (s *FareRuleService) GetFareRuleList(info hxzReq.FareRuleSearch) (list interface{}, total int64, err error) {
	db := global.GVA_DB.Model(&hxz.FareRule{})
	if info.CityCode != "" {
		db = db.Where("city_code = ?", info.CityCode)
	}
	if info.VehicleType != "" {
		db = db.Where("vehicle_type = ?", info.VehicleType)
	}
	if info.IsActive != nil {
		db = db.Where("is_active = ?", *info.IsActive)
	}
	var ruleList []hxz.FareRule
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Order("id desc").Scopes(info.Paginate()).Find(&ruleList).Error
	return ruleList, total, err
}
