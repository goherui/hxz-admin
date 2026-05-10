package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"time"
)

type OrderSearch struct {
	request.PageInfo
	OrderNo     string     `json:"orderNo" form:"orderNo"`
	PassengerID *uint      `json:"passengerId" form:"passengerId"`
	DriverID    *uint      `json:"driverId" form:"driverId"`
	CityCode    string     `json:"cityCode" form:"cityCode"`
	OrderType   *int       `json:"orderType" form:"orderType"`
	Status      *int       `json:"status" form:"status"`
	IsAbnormal  *int       `json:"isAbnormal" form:"isAbnormal"`
	StartTime   *time.Time `json:"startTime" form:"startTime"`
	EndTime     *time.Time `json:"endTime" form:"endTime"`
}

type OrderMarkAbnormalReq struct {
	ID           uint   `json:"id" binding:"required"`
	AbnormalType string `json:"abnormalType" binding:"required"`
}

type OrderChangeStatusReq struct {
	ID       uint   `json:"id" binding:"required"`
	ToStatus int    `json:"toStatus" binding:"required"`
	Remark   string `json:"remark"`
}
