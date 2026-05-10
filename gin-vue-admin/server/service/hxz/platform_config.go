package hxz

import (
	"context"
	"fmt"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type PlatformConfigService struct{}

var PlatformConfigServiceApp = new(PlatformConfigService)

func (s *PlatformConfigService) CreatePlatformConfig(config hxz.PlatformConfig) (err error) {
	err = global.GVA_DB.Create(&config).Error
	return
}

func (s *PlatformConfigService) UpdatePlatformConfig(config *hxz.PlatformConfig) (err error) {
	err = global.GVA_DB.Save(config).Error
	if err != nil {
		return
	}
	s.deleteConfigCache(config.ConfigKey, config.CityCode)
	return
}

func (s *PlatformConfigService) UpsertPlatformConfig(req hxzReq.PlatformConfigUpsertReq) (config hxz.PlatformConfig, err error) {
	var existing hxz.PlatformConfig
	result := global.GVA_DB.Where("config_key = ? AND city_code = ?", req.ConfigKey, req.CityCode).First(&existing)
	if result.Error != nil {
		config = hxz.PlatformConfig{
			ConfigKey:   req.ConfigKey,
			ConfigValue: req.ConfigValue,
			ConfigType:  req.ConfigType,
			CityCode:    req.CityCode,
			Description: req.Description,
			IsActive:    req.IsActive,
		}
		err = global.GVA_DB.Create(&config).Error
	} else {
		err = global.GVA_DB.Model(&existing).Updates(map[string]interface{}{
			"config_value": req.ConfigValue,
			"config_type":  req.ConfigType,
			"description":  req.Description,
			"is_active":    req.IsActive,
		}).Error
		config = existing
	}
	if err != nil {
		return
	}
	s.deleteConfigCache(req.ConfigKey, req.CityCode)
	return
}

func (s *PlatformConfigService) GetPlatformConfigByID(id uint) (config hxz.PlatformConfig, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&config).Error
	return
}

func (s *PlatformConfigService) GetPlatformConfigList(info hxzReq.PlatformConfigSearch) (list interface{}, total int64, err error) {
	db := global.GVA_DB.Model(&hxz.PlatformConfig{})
	if info.ConfigKey != "" {
		db = db.Where("config_key LIKE ?", "%"+info.ConfigKey+"%")
	}
	if info.ConfigType != "" {
		db = db.Where("config_type = ?", info.ConfigType)
	}
	if info.CityCode != "" {
		db = db.Where("city_code = ?", info.CityCode)
	}
	if info.IsActive != nil {
		db = db.Where("is_active = ?", *info.IsActive)
	}
	var configList []hxz.PlatformConfig
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Order("id desc").Scopes(info.Paginate()).Find(&configList).Error
	return configList, total, err
}

func (s *PlatformConfigService) DeletePlatformConfig(id uint) (err error) {
	var config hxz.PlatformConfig
	err = global.GVA_DB.Where("id = ?", id).First(&config).Error
	if err != nil {
		return
	}
	err = global.GVA_DB.Delete(&config).Error
	if err != nil {
		return
	}
	s.deleteConfigCache(config.ConfigKey, config.CityCode)
	return
}

func (s *PlatformConfigService) GetConfigValue(configKey, cityCode string) (value string, err error) {
	redisKey := fmt.Sprintf("hxz:config:%s:%s", configKey, cityCode)
	value, err = global.GVA_REDIS.Get(context.Background(), redisKey).Result()
	if err == nil {
		return
	}
	var config hxz.PlatformConfig
	err = global.GVA_DB.Where("config_key = ? AND city_code = ? AND is_active = 1", configKey, cityCode).First(&config).Error
	if err != nil {
		return
	}
	value = config.ConfigValue
	global.GVA_REDIS.Set(context.Background(), redisKey, value, 0)
	return
}

func (s *PlatformConfigService) deleteConfigCache(configKey, cityCode string) {
	redisKey := fmt.Sprintf("hxz:config:%s:%s", configKey, cityCode)
	global.GVA_REDIS.Del(context.Background(), redisKey)
}
