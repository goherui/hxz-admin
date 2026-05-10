package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

type TripPoint struct {
	global.GVA_MODEL
	TripID     uint      `json:"tripId" form:"tripId" gorm:"column:trip_id;index;comment:行程ID"`
	Lng        float64   `json:"lng" form:"lng" gorm:"column:lng;type:decimal(10,6);comment:经度"`
	Lat        float64   `json:"lat" form:"lat" gorm:"column:lat;type:decimal(10,6);comment:纬度"`
	Speed      float64   `json:"speed" form:"speed" gorm:"column:speed;type:decimal(6,2);default:0;comment:速度(km/h)"`
	Bearing    float64   `json:"bearing" form:"bearing" gorm:"column:bearing;type:decimal(6,2);default:0;comment:方向角"`
	RecordedAt time.Time `json:"recordedAt" form:"recordedAt" gorm:"column:recorded_at;comment:记录时间"`
}

func (TripPoint) TableName() string {
	return "trip_points"
}
