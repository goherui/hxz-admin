package hxz

import (
	"context"
	"time"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type CityService struct{}

var CityServiceApp = new(CityService)

func (s *CityService) CreateCity(city hxz.City) (err error) {
	err = global.GVA_DB.Create(&city).Error
	return
}

func (s *CityService) UpdateCity(city hxz.City) (err error) {
	err = global.GVA_DB.Save(&city).Error
	if err != nil {
		return
	}
	s.deleteCityCache()
	return
}

func (s *CityService) DeleteCity(id uint) (err error) {
	err = global.GVA_DB.Where("id = ?", id).Delete(&hxz.City{}).Error
	if err != nil {
		return
	}
	s.deleteCityCache()
	return
}

func (s *CityService) GetCityByID(id uint) (city hxz.City, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&city).Error
	return
}

func (s *CityService) GetCityList(info hxzReq.CitySearch) (list interface{}, total int64, err error) {
	db := global.GVA_DB.Model(&hxz.City{})
	if info.CityCode != "" {
		db = db.Where("city_code = ?", info.CityCode)
	}
	if info.CityName != "" {
		db = db.Where("city_name LIKE ?", "%"+info.CityName+"%")
	}
	if info.Province != "" {
		db = db.Where("province = ?", info.Province)
	}
	if info.IsOpened != nil {
		db = db.Where("is_opened = ?", *info.IsOpened)
	}
	var cityList []hxz.City
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Order("id desc").Scopes(info.Paginate()).Find(&cityList).Error
	return cityList, total, err
}

func (s *CityService) OpenCity(req hxzReq.CityOpenReq) (err error) {
	now := time.Now()
	err = global.GVA_DB.Model(&hxz.City{}).Where("id = ?", req.ID).Updates(map[string]interface{}{
		"is_opened": 1,
		"open_date": &now,
	}).Error
	if err != nil {
		return
	}
	s.deleteCityCache()
	return
}

func (s *CityService) CloseCity(req hxzReq.CityCloseReq) (err error) {
	err = global.GVA_DB.Model(&hxz.City{}).Where("id = ?", req.ID).Update("is_opened", 0).Error
	if err != nil {
		return
	}
	s.deleteCityCache()
	return
}

func (s *CityService) deleteCityCache() {
	global.GVA_REDIS.Del(context.Background(), "hxz:config:cities")
}
