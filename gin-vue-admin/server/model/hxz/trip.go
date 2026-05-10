package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

type Trip struct {
	global.GVA_MODEL
	TripNo        string     `json:"tripNo" form:"tripNo" gorm:"column:trip_no;type:varchar(64);uniqueIndex;comment:行程编号"`
	OrderID       uint       `json:"orderId" form:"orderId" gorm:"column:order_id;index;comment:关联订单ID"`
	DriverID      uint       `json:"driverId" form:"driverId" gorm:"column:driver_id;comment:司机ID"`
	PassengerID   uint       `json:"passengerId" form:"passengerId" gorm:"column:passenger_id;comment:乘客ID"`
	StartAt       *time.Time `json:"startAt" form:"startAt" gorm:"column:start_at;comment:开始时间"`
	EndAt         *time.Time `json:"endAt" form:"endAt" gorm:"column:end_at;comment:结束时间"`
	TotalDistance  float64    `json:"totalDistance" form:"totalDistance" gorm:"column:total_distance;type:decimal(10,2);default:0;comment:总距离(km)"`
	TotalDuration  int       `json:"totalDuration" form:"totalDuration" gorm:"column:total_duration;type:int;default:0;comment:总时长(秒)"`
	RouteSummary  string     `json:"routeSummary" form:"routeSummary" gorm:"column:route_summary;type:text;comment:路线摘要"`
	IsAbnormal    int        `json:"isAbnormal" form:"isAbnormal" gorm:"column:is_abnormal;type:tinyint;default:0;comment:是否异常 0否 1是"`
	AbnormalTags  string     `json:"abnormalTags" form:"abnormalTags" gorm:"column:abnormal_tags;type:varchar(500);comment:异常标签"`
	RiskFlag      int        `json:"riskFlag" form:"riskFlag" gorm:"column:risk_flag;type:tinyint;default:0;comment:风控标记 0正常 1低风险 2中风险 3高风险"`
}

func (Trip) TableName() string {
	return "trips"
}
