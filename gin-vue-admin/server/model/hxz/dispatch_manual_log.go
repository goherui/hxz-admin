package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

type DispatchManualLog struct {
	global.GVA_MODEL
	OrderID          uint   `json:"orderId" form:"orderId" gorm:"column:order_id;comment:订单ID"`
	Action           string `json:"action" form:"action" gorm:"column:action;comment:操作类型"`
	OriginalDriverID uint   `json:"originalDriverId" form:"originalDriverId" gorm:"column:original_driver_id;comment:原司机ID"`
	TargetDriverID   uint   `json:"targetDriverId" form:"targetDriverId" gorm:"column:target_driver_id;comment:目标司机ID"`
	Reason           string `json:"reason" form:"reason" gorm:"column:reason;comment:干预原因"`
	OperatorID       uint   `json:"operatorId" form:"operatorId" gorm:"column:operator_id;comment:操作人ID"`
}

func (DispatchManualLog) TableName() string {
	return "hxz_dispatch_manual_logs"
}
