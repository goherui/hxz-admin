package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"time"
)

type FinanceRecordSearch struct {
	RecordNo   string    `json:"recordNo" form:"recordNo"`
	OrderID    uint      `json:"orderId" form:"orderId"`
	Type       string    `json:"type" form:"type"`
	Category   string    `json:"category" form:"category"`
	TargetType string    `json:"targetType" form:"targetType"`
	TargetID   uint      `json:"targetId" form:"targetId"`
	Status     string    `json:"status" form:"status"`
	StartTime  time.Time `json:"startTime" form:"startTime"`
	EndTime    time.Time `json:"endTime" form:"endTime"`
	request.PageInfo
}

type SettlementSearch struct {
	SettlementNo string    `json:"settlementNo" form:"settlementNo"`
	DriverID     uint      `json:"driverId" form:"driverId"`
	Status       string    `json:"status" form:"status"`
	PeriodStart  time.Time `json:"periodStart" form:"periodStart"`
	PeriodEnd    time.Time `json:"periodEnd" form:"periodEnd"`
	request.PageInfo
}

type SettlementGenerate struct {
	DriverID    uint      `json:"driverId" binding:"required"`
	PeriodStart time.Time `json:"periodStart" binding:"required"`
	PeriodEnd   time.Time `json:"periodEnd" binding:"required"`
	Remark      string    `json:"remark"`
}

type SettlementAudit struct {
	ID     uint   `json:"id" binding:"required"`
	Status string `json:"status" binding:"required"`
	Remark string `json:"remark"`
}

type SettlementPay struct {
	ID     uint   `json:"id" binding:"required"`
	Remark string `json:"remark"`
}

type CommissionConfigSearch struct {
	CityCode    string `json:"cityCode" form:"cityCode"`
	VehicleType string `json:"vehicleType" form:"vehicleType"`
	IsActive    *bool  `json:"isActive" form:"isActive"`
	request.PageInfo
}

type ReconciliationRecordSearch struct {
	Status     string    `json:"status" form:"status"`
	StartDate  time.Time `json:"startDate" form:"startDate"`
	EndDate    time.Time `json:"endDate" form:"endDate"`
	request.PageInfo
}

type ReconciliationExecute struct {
	ReconcileDate time.Time `json:"reconcileDate" binding:"required"`
	Remark        string    `json:"remark"`
}
