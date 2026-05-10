package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

type OrderStatusLog struct {
	global.GVA_MODEL
	OrderID      uint   `json:"orderId" form:"orderId" gorm:"column:order_id;index;comment:订单ID"`
	FromStatus   int    `json:"fromStatus" form:"fromStatus" gorm:"column:from_status;type:tinyint;comment:原状态"`
	ToStatus     int    `json:"toStatus" form:"toStatus" gorm:"column:to_status;type:tinyint;comment:新状态"`
	OperatorType int    `json:"operatorType" form:"operatorType" gorm:"column:operator_type;type:tinyint;comment:操作类型 1系统 2人工"`
	OperatorID   uint   `json:"operatorId" form:"operatorId" gorm:"column:operator_id;comment:操作人ID"`
	Remark       string `json:"remark" form:"remark" gorm:"column:remark;type:varchar(500);comment:备注"`
}

func (OrderStatusLog) TableName() string {
	return "order_status_logs"
}
