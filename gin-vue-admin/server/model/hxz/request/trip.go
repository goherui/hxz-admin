package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"time"
)

type TripSearch struct {
	request.PageInfo
	TripNo      string     `json:"tripNo" form:"tripNo"`
	OrderID     *uint      `json:"orderId" form:"orderId"`
	DriverID    *uint      `json:"driverId" form:"driverId"`
	PassengerID *uint      `json:"passengerId" form:"passengerId"`
	IsAbnormal  *int       `json:"isAbnormal" form:"isAbnormal"`
	RiskFlag    *int       `json:"riskFlag" form:"riskFlag"`
	StartTime   *time.Time `json:"startTime" form:"startTime"`
	EndTime     *time.Time `json:"endTime" form:"endTime"`
}

type TripMarkAbnormalReq struct {
	ID           uint   `json:"id" binding:"required"`
	AbnormalTags string `json:"abnormalTags" binding:"required"`
}

type TripSetRiskFlagReq struct {
	ID       uint `json:"id" binding:"required"`
	RiskFlag int  `json:"riskFlag" binding:"required"`
}
