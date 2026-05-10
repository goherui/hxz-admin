package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type DriverLicenseService struct{}

var DriverLicenseServiceApp = new(DriverLicenseService)

func (s *DriverLicenseService) CreateDriverLicense(data hxz.DriverLicense) (driverLicense hxz.DriverLicense, err error) {
	err = global.GVA_DB.Create(&data).Error
	return data, err
}

func (s *DriverLicenseService) GetDriverLicenseList(info hxzReq.DriverLicenseSearch) (list []hxz.DriverLicense, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	db := global.GVA_DB.Model(&hxz.DriverLicense{})
	if info.DriverID != 0 {
		db = db.Where("driver_id = ?", info.DriverID)
	}
	if info.AuditStatus != nil {
		db = db.Where("audit_status = ?", *info.AuditStatus)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Offset(offset).Limit(limit).Order("id desc").Find(&list).Error
	return
}
