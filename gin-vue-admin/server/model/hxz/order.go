package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

type Order struct {
	global.GVA_MODEL
	OrderNo         string     `json:"orderNo" form:"orderNo" gorm:"column:order_no;type:varchar(64);uniqueIndex;comment:订单号"`
	PassengerID     uint       `json:"passengerId" form:"passengerId" gorm:"column:passenger_id;comment:乘客ID"`
	DriverID        uint       `json:"driverId" form:"driverId" gorm:"column:driver_id;comment:司机ID"`
	CityCode        string     `json:"cityCode" form:"cityCode" gorm:"column:city_code;type:varchar(20);comment:城市编码"`
	OrderType       int        `json:"orderType" form:"orderType" gorm:"column:order_type;type:tinyint;default:1;comment:订单类型 1实时 2预约 3拼车"`
	Status          int        `json:"status" form:"status" gorm:"column:status;type:tinyint;default:1;comment:状态 1待接单 2已接单 3已上车 4已完成 5已取消"`
	PickupAddress   string     `json:"pickupAddress" form:"pickupAddress" gorm:"column:pickup_address;type:varchar(255);comment:上车地址"`
	PickupLng       float64    `json:"pickupLng" form:"pickupLng" gorm:"column:pickup_lng;type:decimal(10,6);comment:上车经度"`
	PickupLat       float64    `json:"pickupLat" form:"pickupLat" gorm:"column:pickup_lat;type:decimal(10,6);comment:上车纬度"`
	DropoffAddress  string     `json:"dropoffAddress" form:"dropoffAddress" gorm:"column:dropoff_address;type:varchar(255);comment:下车地址"`
	DropoffLng      float64    `json:"dropoffLng" form:"dropoffLng" gorm:"column:dropoff_lng;type:decimal(10,6);comment:下车经度"`
	DropoffLat      float64    `json:"dropoffLat" form:"dropoffLat" gorm:"column:dropoff_lat;type:decimal(10,6);comment:下车纬度"`
	ActualPickupAt  *time.Time `json:"actualPickupAt" form:"actualPickupAt" gorm:"column:actual_pickup_at;comment:实际上车时间"`
	ActualDropoffAt *time.Time `json:"actualDropoffAt" form:"actualDropoffAt" gorm:"column:actual_dropoff_at;comment:实际下车时间"`
	Distance        float64    `json:"distance" form:"distance" gorm:"column:distance;type:decimal(10,2);default:0;comment:距离(km)"`
	Duration        int        `json:"duration" form:"duration" gorm:"column:duration;type:int;default:0;comment:时长(秒)"`
	OriginalAmount  float64    `json:"originalAmount" form:"originalAmount" gorm:"column:original_amount;type:decimal(12,2);default:0;comment:原价"`
	DiscountAmount  float64    `json:"discountAmount" form:"discountAmount" gorm:"column:discount_amount;type:decimal(12,2);default:0;comment:优惠金额"`
	ActualAmount    float64    `json:"actualAmount" form:"actualAmount" gorm:"column:actual_amount;type:decimal(12,2);default:0;comment:实付金额"`
	PlatformFee     float64    `json:"platformFee" form:"platformFee" gorm:"column:platform_fee;type:decimal(12,2);default:0;comment:平台服务费"`
	DriverIncome    float64    `json:"driverIncome" form:"driverIncome" gorm:"column:driver_income;type:decimal(12,2);default:0;comment:司机收入"`
	CancelReason    string     `json:"cancelReason" form:"cancelReason" gorm:"column:cancel_reason;type:varchar(500);comment:取消原因"`
	CancelBy        int        `json:"cancelBy" form:"cancelBy" gorm:"column:cancel_by;type:tinyint;default:0;comment:取消方 0无 1乘客 2司机 3系统"`
	IsAbnormal      int        `json:"isAbnormal" form:"isAbnormal" gorm:"column:is_abnormal;type:tinyint;default:0;comment:是否异常 0否 1是"`
	AbnormalType    string     `json:"abnormalType" form:"abnormalType" gorm:"column:abnormal_type;type:varchar(100);comment:异常类型"`
	RiskFlag        int        `json:"riskFlag" form:"riskFlag" gorm:"column:risk_flag;type:tinyint;default:0;comment:风控标记 0正常 1低风险 2中风险 3高风险"`
}

func (Order) TableName() string {
	return "orders"
}
