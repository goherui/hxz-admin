package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

type DriverAuditLog struct {
	global.GVA_MODEL
	DriverID   uint   `json:"driverId" form:"driverId" gorm:"column:driver_id;comment:司机ID"`
	AuditType  string `json:"auditType" form:"auditType" gorm:"column:audit_type;type:varchar(30);comment:审核类型"`
	Action     string `json:"action" form:"action" gorm:"column:action;type:varchar(20);comment:操作 approve/reject"`
	Reason     string `json:"reason" form:"reason" gorm:"column:reason;type:varchar(500);comment:审核原因"`
	OperatorID uint   `json:"operatorId" form:"operatorId" gorm:"column:operator_id;comment:操作人ID"`
}

func (DriverAuditLog) TableName() string {
	return "driver_audit_logs"
}
