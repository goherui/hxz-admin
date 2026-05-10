package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type DriverAuditLogService struct{}

var DriverAuditLogServiceApp = new(DriverAuditLogService)

func (s *DriverAuditLogService) GetDriverAuditLogList(info hxzReq.DriverAuditLogSearch) (list []hxz.DriverAuditLog, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	db := global.GVA_DB.Model(&hxz.DriverAuditLog{})
	if info.DriverID != 0 {
		db = db.Where("driver_id = ?", info.DriverID)
	}
	if info.AuditType != "" {
		db = db.Where("audit_type = ?", info.AuditType)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Offset(offset).Limit(limit).Order("id desc").Find(&list).Error
	return
}
