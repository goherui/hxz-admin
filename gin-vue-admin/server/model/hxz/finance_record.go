package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

type FinanceRecord struct {
	global.GVA_MODEL
	RecordNo      string  `json:"recordNo" form:"recordNo" gorm:"column:record_no;comment:流水号"`
	OrderID       uint    `json:"orderId" form:"orderId" gorm:"column:order_id;comment:订单ID"`
	Type          string  `json:"type" form:"type" gorm:"column:type;comment:流水类型"`
	Amount        float64 `json:"amount" form:"amount" gorm:"column:amount;comment:金额"`
	BalanceBefore float64 `json:"balanceBefore" form:"balanceBefore" gorm:"column:balance_before;comment:变动前余额"`
	BalanceAfter  float64 `json:"balanceAfter" form:"balanceAfter" gorm:"column:balance_after;comment:变动后余额"`
	Category      string  `json:"category" form:"category" gorm:"column:category;comment:分类"`
	TargetType    string  `json:"targetType" form:"targetType" gorm:"column:target_type;comment:对象类型"`
	TargetID      uint    `json:"targetId" form:"targetId" gorm:"column:target_id;comment:对象ID"`
	Status        string  `json:"status" form:"status" gorm:"column:status;comment:状态"`
	Remark        string  `json:"remark" form:"remark" gorm:"column:remark;comment:备注"`
}

func (FinanceRecord) TableName() string {
	return "hxz_finance_records"
}
