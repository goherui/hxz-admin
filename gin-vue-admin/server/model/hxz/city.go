package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

type City struct {
	global.GVA_MODEL
	CityCode      string     `json:"cityCode" form:"cityCode" gorm:"column:city_code;type:varchar(20);uniqueIndex;comment:城市编码"`
	CityName      string     `json:"cityName" form:"cityName" gorm:"column:city_name;type:varchar(50);comment:城市名称"`
	Province      string     `json:"province" form:"province" gorm:"column:province;type:varchar(50);comment:省份"`
	IsOpened      int        `json:"isOpened" form:"isOpened" gorm:"column:is_opened;type:tinyint;default:0;comment:是否开通 1是 0否"`
	OpenDate      *time.Time `json:"openDate" form:"openDate" gorm:"column:open_date;comment:开通时间"`
	CenterLng     float64    `json:"centerLng" form:"centerLng" gorm:"column:center_lng;type:decimal(10,6);comment:中心经度"`
	CenterLat     float64    `json:"centerLat" form:"centerLat" gorm:"column:center_lat;type:decimal(10,6);comment:中心纬度"`
	ServiceRadius float64    `json:"serviceRadius" form:"serviceRadius" gorm:"column:service_radius;type:decimal(10,2);comment:服务半径(米)"`
	Config        string     `json:"config" form:"config" gorm:"column:config;type:text;comment:城市配置JSON"`
}

func (City) TableName() string {
	return "cities"
}
