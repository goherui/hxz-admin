package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type VehicleService struct{}

var VehicleServiceApp = new(VehicleService)

func (s *VehicleService) CreateVehicle(data hxz.Vehicle) (vehicle hxz.Vehicle, err error) {
	err = global.GVA_DB.Create(&data).Error
	return data, err
}

func (s *VehicleService) GetVehicleList(info hxzReq.VehicleSearch) (list []hxz.Vehicle, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	db := global.GVA_DB.Model(&hxz.Vehicle{})
	if info.DriverID != 0 {
		db = db.Where("driver_id = ?", info.DriverID)
	}
	if info.PlateNo != "" {
		db = db.Where("plate_no LIKE ?", "%"+info.PlateNo+"%")
	}
	if info.Status != nil {
		db = db.Where("status = ?", *info.Status)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Offset(offset).Limit(limit).Order("id desc").Find(&list).Error
	return
}
