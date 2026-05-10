package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

type FareRule struct {
	global.GVA_MODEL
	CityCode      string     `json:"cityCode" form:"cityCode" gorm:"column:city_code;type:varchar(20);index;comment:城市编码"`
	VehicleType   string     `json:"vehicleType" form:"vehicleType" gorm:"column:vehicle_type;type:varchar(20);comment:车型"`
	BaseDistance  float64    `json:"baseDistance" form:"baseDistance" gorm:"column:base_distance;type:decimal(10,2);comment:起步里程(公里)"`
	BasePrice     float64    `json:"basePrice" form:"basePrice" gorm:"column:base_price;type:decimal(10,2);comment:起步价"`
	PerKmPrice    float64    `json:"perKmPrice" form:"perKmPrice" gorm:"column:per_km_price;type:decimal(10,2);comment:每公里价"`
	PerMinPrice   float64    `json:"perMinPrice" form:"perMinPrice" gorm:"column:per_min_price;type:decimal(10,2);comment:每分钟价"`
	MinPrice      float64    `json:"minPrice" form:"minPrice" gorm:"column:min_price;type:decimal(10,2);comment:最低价"`
	NightStart    string     `json:"nightStart" form:"nightStart" gorm:"column:night_start;type:varchar(10);comment:夜间开始时间"`
	NightEnd      string     `json:"nightEnd" form:"nightEnd" gorm:"column:night_end;type:varchar(10);comment:夜间结束时间"`
	NightRate     float64    `json:"nightRate" form:"nightRate" gorm:"column:night_rate;type:decimal(4,2);comment:夜间费率倍数"`
	IsActive      int        `json:"isActive" form:"isActive" gorm:"column:is_active;type:tinyint;default:1;comment:是否启用 1是 0否"`
	EffectiveDate *time.Time `json:"effectiveDate" form:"effectiveDate" gorm:"column:effective_date;comment:生效日期"`
}

func (FareRule) TableName() string {
	return "fare_rules"
}
