package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
)

type DispatchRuleSearch struct {
	CityCode    string `json:"cityCode" form:"cityCode"`
	VehicleType string `json:"vehicleType" form:"vehicleType"`
	IsActive    *bool  `json:"isActive" form:"isActive"`
	request.PageInfo
}

type DispatchRuleVersionSearch struct {
	RuleID uint `json:"ruleId" form:"ruleId"`
	request.PageInfo
}

type DispatchManualLogSearch struct {
	OrderID    uint   `json:"orderId" form:"orderId"`
	Action     string `json:"action" form:"action"`
	OperatorID uint   `json:"operatorId" form:"operatorId"`
	request.PageInfo
}

type DispatchRuleRollback struct {
	RuleID     uint   `json:"ruleId" binding:"required"`
	Version    int    `json:"version" binding:"required"`
	ChangeDesc string `json:"changeDesc"`
}
