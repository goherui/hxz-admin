package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"time"
)

type PlatformConfigSearch struct {
	request.PageInfo
	ConfigKey  string `json:"configKey" form:"configKey"`
	ConfigType string `json:"configType" form:"configType"`
	CityCode   string `json:"cityCode" form:"cityCode"`
	IsActive   *int   `json:"isActive" form:"isActive"`
}

type PlatformConfigUpsertReq struct {
	ConfigKey   string `json:"configKey" binding:"required"`
	ConfigValue string `json:"configValue" binding:"required"`
	ConfigType  string `json:"configType"`
	CityCode    string `json:"cityCode"`
	Description string `json:"description"`
	IsActive    int    `json:"isActive"`
}

type CitySearch struct {
	request.PageInfo
	CityCode string `json:"cityCode" form:"cityCode"`
	CityName string `json:"cityName" form:"cityName"`
	Province string `json:"province" form:"province"`
	IsOpened *int   `json:"isOpened" form:"isOpened"`
}

type CityOpenReq struct {
	ID uint `json:"id" binding:"required"`
}

type CityCloseReq struct {
	ID uint `json:"id" binding:"required"`
}

type FareRuleSearch struct {
	request.PageInfo
	CityCode    string `json:"cityCode" form:"cityCode"`
	VehicleType string `json:"vehicleType" form:"vehicleType"`
	IsActive    *int   `json:"isActive" form:"isActive"`
}

type FareRuleCreateReq struct {
	CityCode      string     `json:"cityCode" binding:"required"`
	VehicleType   string     `json:"vehicleType" binding:"required"`
	BaseDistance  float64    `json:"baseDistance"`
	BasePrice     float64    `json:"basePrice"`
	PerKmPrice    float64    `json:"perKmPrice"`
	PerMinPrice   float64    `json:"perMinPrice"`
	MinPrice      float64    `json:"minPrice"`
	NightStart    string     `json:"nightStart"`
	NightEnd      string     `json:"nightEnd"`
	NightRate     float64    `json:"nightRate"`
	IsActive      int        `json:"isActive"`
	EffectiveDate *time.Time `json:"effectiveDate"`
}

type SurgeRuleSearch struct {
	request.PageInfo
	CityCode    string `json:"cityCode" form:"cityCode"`
	TriggerType string `json:"triggerType" form:"triggerType"`
	IsActive    *int   `json:"isActive" form:"isActive"`
}

type SurgeRuleCreateReq struct {
	CityCode         string     `json:"cityCode" binding:"required"`
	TriggerType      string     `json:"triggerType" binding:"required"`
	TriggerCondition string     `json:"triggerCondition"`
	SurgeRate        float64    `json:"surgeRate"`
	MaxSurgeRate     float64    `json:"maxSurgeRate"`
	TimeStart        string     `json:"timeStart"`
	TimeEnd          string     `json:"timeEnd"`
	IsActive         int        `json:"isActive"`
	EffectiveDate    *time.Time `json:"effectiveDate"`
}
