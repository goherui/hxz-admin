package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

type CommissionConfig struct {
	global.GVA_MODEL
	CityCode       string    `json:"cityCode" form:"cityCode" gorm:"column:city_code;comment:城市编码"`
	VehicleType    string    `json:"vehicleType" form:"vehicleType" gorm:"column:vehicle_type;comment:车型"`
	CommissionRate float64   `json:"commissionRate" form:"commissionRate" gorm:"column:commission_rate;comment:抽成比例"`
	MinFee         float64   `json:"minFee" form:"minFee" gorm:"column:min_fee;comment:最低抽成"`
	MaxFee         float64   `json:"maxFee" form:"maxFee" gorm:"column:max_fee;comment:最高抽成"`
	IsActive       *bool     `json:"isActive" form:"isActive" gorm:"column:is_active;comment:是否启用"`
	EffectiveDate  time.Time `json:"effectiveDate" form:"effectiveDate" gorm:"column:effective_date;comment:生效日期"`
	Remark         string    `json:"remark" form:"remark" gorm:"column:remark;comment:备注"`
}

func (CommissionConfig) TableName() string {
	return "hxz_commission_configs"
}
