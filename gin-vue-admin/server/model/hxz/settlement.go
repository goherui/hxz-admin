package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

type Settlement struct {
	global.GVA_MODEL
	SettlementNo string     `json:"settlementNo" form:"settlementNo" gorm:"column:settlement_no;comment:结算单号"`
	DriverID     uint       `json:"driverId" form:"driverId" gorm:"column:driver_id;comment:司机ID"`
	PeriodStart  time.Time  `json:"periodStart" form:"periodStart" gorm:"column:period_start;comment:结算周期开始"`
	PeriodEnd    time.Time  `json:"periodEnd" form:"periodEnd" gorm:"column:period_end;comment:结算周期结束"`
	TotalAmount  float64    `json:"totalAmount" form:"totalAmount" gorm:"column:total_amount;comment:总金额"`
	PlatformFee  float64    `json:"platformFee" form:"platformFee" gorm:"column:platform_fee;comment:平台抽成"`
	ActualAmount float64    `json:"actualAmount" form:"actualAmount" gorm:"column:actual_amount;comment:实结金额"`
	OrderCount   int        `json:"orderCount" form:"orderCount" gorm:"column:order_count;comment:订单数量"`
	Status       string     `json:"status" form:"status" gorm:"column:status;comment:状态"`
	AuditBy      uint       `json:"auditBy" form:"auditBy" gorm:"column:audit_by;comment:审核人"`
	AuditAt      *time.Time `json:"auditAt" form:"auditAt" gorm:"column:audit_at;comment:审核时间"`
	PayBy        uint       `json:"payBy" form:"payBy" gorm:"column:pay_by;comment:打款人"`
	PayAt        *time.Time `json:"payAt" form:"payAt" gorm:"column:pay_at;comment:打款时间"`
	Remark       string     `json:"remark" form:"remark" gorm:"column:remark;comment:备注"`
}

func (Settlement) TableName() string {
	return "hxz_settlements"
}
