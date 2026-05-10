package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

type SurgeRule struct {
	global.GVA_MODEL
	CityCode         string     `json:"cityCode" form:"cityCode" gorm:"column:city_code;type:varchar(20);index;comment:城市编码"`
	TriggerType      string     `json:"triggerType" form:"triggerType" gorm:"column:trigger_type;type:varchar(50);comment:触发类型 demand/weather/event"`
	TriggerCondition string     `json:"triggerCondition" form:"triggerCondition" gorm:"column:trigger_condition;type:text;comment:触发条件JSON"`
	SurgeRate        float64    `json:"surgeRate" form:"surgeRate" gorm:"column:surge_rate;type:decimal(4,2);comment:加价倍率"`
	MaxSurgeRate     float64    `json:"maxSurgeRate" form:"maxSurgeRate" gorm:"column:max_surge_rate;type:decimal(4,2);comment:最大加价倍率"`
	TimeStart        string     `json:"timeStart" form:"timeStart" gorm:"column:time_start;type:varchar(10);comment:生效开始时间"`
	TimeEnd          string     `json:"timeEnd" form:"timeEnd" gorm:"column:time_end;type:varchar(10);comment:生效结束时间"`
	IsActive         int        `json:"isActive" form:"isActive" gorm:"column:is_active;type:tinyint;default:1;comment:是否启用 1是 0否"`
	EffectiveDate    *time.Time `json:"effectiveDate" form:"effectiveDate" gorm:"column:effective_date;comment:生效日期"`
}

func (SurgeRule) TableName() string {
	return "surge_rules"
}
