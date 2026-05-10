package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

type Vehicle struct {
	global.GVA_MODEL
	DriverID   uint   `json:"driverId" form:"driverId" gorm:"column:driver_id;comment:司机ID"`
	PlateNo    string `json:"plateNo" form:"plateNo" gorm:"column:plate_no;type:varchar(20);comment:车牌号"`
	Brand      string `json:"brand" form:"brand" gorm:"column:brand;type:varchar(50);comment:品牌"`
	Model      string `json:"model" form:"model" gorm:"column:model;type:varchar(50);comment:车型"`
	Color      string `json:"color" form:"color" gorm:"column:color;type:varchar(20);comment:颜色"`
	VehicleType string `json:"vehicleType" form:"vehicleType" gorm:"column:vehicle_type;type:varchar(20);comment:车辆类型"`
	SeatCount  int    `json:"seatCount" form:"seatCount" gorm:"column:seat_count;type:int;default:4;comment:座位数"`
	Year       int    `json:"year" form:"year" gorm:"column:year;type:int;comment:年份"`
	Status     int    `json:"status" form:"status" gorm:"column:status;type:tinyint;default:1;comment:状态 1正常 2停用"`
}

func (Vehicle) TableName() string {
	return "vehicles"
}
