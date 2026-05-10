package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
)

type DriverSearch struct {
	request.PageInfo
	Phone        string `json:"phone" form:"phone"`
	RealName     string `json:"realName" form:"realName"`
	Status       *int   `json:"status" form:"status"`
	AuditStatus  *int   `json:"auditStatus" form:"auditStatus"`
	CityCode     string `json:"cityCode" form:"cityCode"`
	ServiceStatus *int  `json:"serviceStatus" form:"serviceStatus"`
}

type DriverAuditReq struct {
	ID         uint   `json:"id" binding:"required"`
	AuditType  string `json:"auditType" binding:"required"`
	Action     string `json:"action" binding:"required"`
	Reason     string `json:"reason"`
}

type DriverBanReq struct {
	ID     uint   `json:"id" binding:"required"`
	Reason string `json:"reason" binding:"required"`
	BanType string `json:"banType" binding:"required"`
}

type DriverUnbanReq struct {
	ID             uint   `json:"id" binding:"required"`
	UnbannedReason string `json:"unbannedReason" binding:"required"`
}

type DriverLicenseSearch struct {
	request.PageInfo
	DriverID    uint `json:"driverId" form:"driverId"`
	AuditStatus *int `json:"auditStatus" form:"auditStatus"`
}

type VehicleSearch struct {
	request.PageInfo
	DriverID uint   `json:"driverId" form:"driverId"`
	PlateNo  string `json:"plateNo" form:"plateNo"`
	Status   *int   `json:"status" form:"status"`
}

type DriverAuditLogSearch struct {
	request.PageInfo
	DriverID  uint   `json:"driverId" form:"driverId"`
	AuditType string `json:"auditType" form:"auditType"`
}
