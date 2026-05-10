package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

type Activity struct {
	global.GVA_MODEL
	Name              string     `json:"name" form:"name" gorm:"column:name;comment:活动名称"`
	Type              string     `json:"type" form:"type" gorm:"column:type;comment:活动类型"`
	Description       string     `json:"description" form:"description" gorm:"column:description;comment:活动描述"`
	StartAt           time.Time  `json:"startAt" form:"startAt" gorm:"column:start_at;comment:开始时间"`
	EndAt             time.Time  `json:"endAt" form:"endAt" gorm:"column:end_at;comment:结束时间"`
	CouponTemplateIDs string     `json:"couponTemplateIds" form:"couponTemplateIds" gorm:"column:coupon_template_ids;type:text;comment:优惠券模板ID列表JSON"`
	Rules             string     `json:"rules" form:"rules" gorm:"column:rules;type:text;comment:活动规则JSON"`
	Status            string     `json:"status" form:"status" gorm:"column:status;comment:状态"`
}

func (Activity) TableName() string {
	return "hxz_activities"
}
