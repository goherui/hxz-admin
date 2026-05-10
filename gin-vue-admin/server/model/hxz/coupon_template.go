package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

type CouponTemplate struct {
	global.GVA_MODEL
	Name         string     `json:"name" form:"name" gorm:"column:name;comment:优惠券名称"`
	Type         string     `json:"type" form:"type" gorm:"column:type;comment:优惠券类型"`
	Value        float64    `json:"value" form:"value" gorm:"column:value;comment:面额/折扣"`
	MinAmount    float64    `json:"minAmount" form:"minAmount" gorm:"column:min_amount;comment:最低消费金额"`
	MaxDiscount  float64    `json:"maxDiscount" form:"maxDiscount" gorm:"column:max_discount;comment:最大优惠金额"`
	TotalCount   int        `json:"totalCount" form:"totalCount" gorm:"column:total_count;comment:发放总数"`
	UsedCount    int        `json:"usedCount" form:"usedCount" gorm:"column:used_count;comment:已使用数量"`
	RemainCount  int        `json:"remainCount" form:"remainCount" gorm:"column:remain_count;comment:剩余数量"`
	ValidType    string     `json:"validType" form:"validType" gorm:"column:valid_type;comment:有效期类型"`
	ValidStart   *time.Time `json:"validStart" form:"validStart" gorm:"column:valid_start;comment:有效期开始"`
	ValidEnd     *time.Time `json:"validEnd" form:"validEnd" gorm:"column:valid_end;comment:有效期结束"`
	ValidDays    int        `json:"validDays" form:"validDays" gorm:"column:valid_days;comment:领取后有效天数"`
	ApplyScope   string     `json:"applyScope" form:"applyScope" gorm:"column:apply_scope;comment:适用范围"`
	ApplyConfig  string     `json:"applyConfig" form:"applyConfig" gorm:"column:apply_config;type:text;comment:适用配置JSON"`
	Status       string     `json:"status" form:"status" gorm:"column:status;comment:状态"`
}

func (CouponTemplate) TableName() string {
	return "hxz_coupon_templates"
}
