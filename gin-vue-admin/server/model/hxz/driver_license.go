package hxz

import (
	"time"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

type DriverLicense struct {
	global.GVA_MODEL
	DriverID    uint       `json:"driverId" form:"driverId" gorm:"column:driver_id;comment:司机ID"`
	LicenseType string     `json:"licenseType" form:"licenseType" gorm:"column:license_type;type:varchar(20);comment:驾驶证类型"`
	LicenseNo   string     `json:"licenseNo" form:"licenseNo" gorm:"column:license_no;type:varchar(50);comment:驾驶证号"`
	LicenseImg  string     `json:"licenseImg" form:"licenseImg" gorm:"column:license_img;type:varchar(255);comment:驾驶证照片"`
	ExpireDate  *time.Time `json:"expireDate" form:"expireDate" gorm:"column:expire_date;comment:过期日期"`
	AuditStatus int        `json:"auditStatus" form:"auditStatus" gorm:"column:audit_status;type:tinyint;default:0;comment:审核状态 0未审核 1审核中 2通过 3拒绝"`
	AuditRemark string     `json:"auditRemark" form:"auditRemark" gorm:"column:audit_remark;type:varchar(500);comment:审核备注"`
}

func (DriverLicense) TableName() string {
	return "driver_licenses"
}
