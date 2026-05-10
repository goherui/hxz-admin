package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type CommissionConfigService struct{}

var CommissionConfigServiceApp = new(CommissionConfigService)

func (s *CommissionConfigService) CreateCommissionConfig(config hxz.CommissionConfig) (err error) {
	err = global.GVA_DB.Create(&config).Error
	return
}

func (s *CommissionConfigService) DeleteCommissionConfig(id uint) (err error) {
	err = global.GVA_DB.Delete(&hxz.CommissionConfig{}, id).Error
	return
}

func (s *CommissionConfigService) UpdateCommissionConfig(config *hxz.CommissionConfig) (err error) {
	err = global.GVA_DB.Save(config).Error
	return
}

func (s *CommissionConfigService) GetCommissionConfig(id uint) (config hxz.CommissionConfig, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&config).Error
	return
}

func (s *CommissionConfigService) GetCommissionConfigList(info request.CommissionConfigSearch) (list []hxz.CommissionConfig, total int64, err error) {
	db := global.GVA_DB.Model(&hxz.CommissionConfig{})
	if info.CityCode != "" {
		db = db.Where("city_code = ?", info.CityCode)
	}
	if info.VehicleType != "" {
		db = db.Where("vehicle_type = ?", info.VehicleType)
	}
	if info.IsActive != nil {
		db = db.Where("is_active = ?", *info.IsActive)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Order("id desc").Scopes(info.Paginate()).Find(&list).Error
	return
}
