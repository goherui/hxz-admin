package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

type DispatchRule struct {
	global.GVA_MODEL
	RuleName        string  `json:"ruleName" form:"ruleName" gorm:"column:rule_name;comment:规则名称"`
	CityCode        string  `json:"cityCode" form:"cityCode" gorm:"column:city_code;comment:城市编码"`
	VehicleType     string  `json:"vehicleType" form:"vehicleType" gorm:"column:vehicle_type;comment:车型"`
	TimeStart       string  `json:"timeStart" form:"timeStart" gorm:"column:time_start;comment:生效开始时间"`
	TimeEnd         string  `json:"timeEnd" form:"timeEnd" gorm:"column:time_end;comment:生效结束时间"`
	MaxRadius       float64 `json:"maxRadius" form:"maxRadius" gorm:"column:max_radius;comment:最大派单半径(公里)"`
	MaxWaitTime     int     `json:"maxWaitTime" form:"maxWaitTime" gorm:"column:max_wait_time;comment:最大等待时间(秒)"`
	WeightDistance   float64 `json:"weightDistance" form:"weightDistance" gorm:"column:weight_distance;comment:距离权重"`
	WeightRating    float64 `json:"weightRating" form:"weightRating" gorm:"column:weight_rating;comment:评分权重"`
	WeightCompletion float64 `json:"weightCompletion" form:"weightCompletion" gorm:"column:weight_completion;comment:完成率权重"`
	MaxDispatchCount int    `json:"maxDispatchCount" form:"maxDispatchCount" gorm:"column:max_dispatch_count;comment:最大派单数"`
	IsActive        *bool   `json:"isActive" form:"isActive" gorm:"column:is_active;comment:是否启用"`
	Priority        int     `json:"priority" form:"priority" gorm:"column:priority;comment:优先级"`
	Version         int     `json:"version" form:"version" gorm:"column:version;comment:版本号"`
	Remark          string  `json:"remark" form:"remark" gorm:"column:remark;comment:备注"`
}

func (DispatchRule) TableName() string {
	return "hxz_dispatch_rules"
}
