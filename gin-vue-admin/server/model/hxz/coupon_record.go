package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

type CouponRecord struct {
	global.GVA_MODEL
	TemplateID  uint       `json:"templateId" form:"templateId" gorm:"column:template_id;comment:模板ID"`
	CouponCode  string     `json:"couponCode" form:"couponCode" gorm:"column:coupon_code;comment:优惠券码"`
	PassengerID uint       `json:"passengerId" form:"passengerId" gorm:"column:passenger_id;comment:乘客ID"`
	Source      string     `json:"source" form:"source" gorm:"column:source;comment:来源"`
	ActivityID  uint       `json:"activityId" form:"activityId" gorm:"column:activity_id;comment:活动ID"`
	Status      string     `json:"status" form:"status" gorm:"column:status;comment:状态"`
	UsedAt      *time.Time `json:"usedAt" form:"usedAt" gorm:"column:used_at;comment:使用时间"`
	UsedOrderID uint       `json:"usedOrderId" form:"usedOrderId" gorm:"column:used_order_id;comment:使用订单ID"`
	ExpiredAt   *time.Time `json:"expiredAt" form:"expiredAt" gorm:"column:expired_at;comment:过期时间"`
}

func (CouponRecord) TableName() string {
	return "hxz_coupon_records"
}
