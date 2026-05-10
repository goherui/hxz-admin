package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

type ReconciliationRecord struct {
	global.GVA_MODEL
	ReconcileDate    time.Time `json:"reconcileDate" form:"reconcileDate" gorm:"column:reconcile_date;comment:对账日期"`
	TotalOrders      int       `json:"totalOrders" form:"totalOrders" gorm:"column:total_orders;comment:总订单数"`
	MatchedOrders    int       `json:"matchedOrders" form:"matchedOrders" gorm:"column:matched_orders;comment:匹配订单数"`
	MismatchOrders   int       `json:"mismatchOrders" form:"mismatchOrders" gorm:"column:mismatch_orders;comment:差异订单数"`
	TotalAmount      float64   `json:"totalAmount" form:"totalAmount" gorm:"column:total_amount;comment:总金额"`
	DifferenceAmount float64   `json:"differenceAmount" form:"differenceAmount" gorm:"column:difference_amount;comment:差异金额"`
	Status           string    `json:"status" form:"status" gorm:"column:status;comment:状态"`
	OperatorID       uint      `json:"operatorId" form:"operatorId" gorm:"column:operator_id;comment:操作人ID"`
	Remark           string    `json:"remark" form:"remark" gorm:"column:remark;comment:备注"`
}

func (ReconciliationRecord) TableName() string {
	return "hxz_reconciliation_records"
}
