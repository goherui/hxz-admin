package hxz

import (
	api "github.com/flipped-aurora/gin-vue-admin/server/api/v1"
)

type RouterGroup struct {
	PassengerRouter
	TagDictRouter
	PassengerTagRouter
	BanRecordRouter
	DriverRouter
	DriverLicenseRouter
	VehicleRouter
	DriverAuditLogRouter
	OrderRouter
	OrderStatusLogRouter
	TripRouter
	TripPointRouter
	DispatchRuleRouter
	DispatchRuleVersionRouter
	DispatchManualLogRouter
	FinanceRecordRouter
	SettlementRouter
	CommissionConfigRouter
	ReconciliationRecordRouter
	CouponTemplateRouter
	CouponRecordRouter
	ActivityRouter
	BlacklistRouter
	RiskRuleRouter
	RiskAlertRouter
	TicketRouter
	TicketLogRouter
	PlatformConfigRouter
	CityRouter
	FareRuleRouter
	SurgeRuleRouter
	ReportSnapshotRouter
}

var (
	passengerApi              = api.ApiGroupApp.HxzApiGroup.PassengerApi
	tagDictApi                = api.ApiGroupApp.HxzApiGroup.TagDictApi
	passengerTagApi           = api.ApiGroupApp.HxzApiGroup.PassengerTagApi
	banRecordApi              = api.ApiGroupApp.HxzApiGroup.BanRecordApi
	driverApi                 = api.ApiGroupApp.HxzApiGroup.DriverApi
	driverLicenseApi          = api.ApiGroupApp.HxzApiGroup.DriverLicenseApi
	vehicleApi                = api.ApiGroupApp.HxzApiGroup.VehicleApi
	driverAuditLogApi         = api.ApiGroupApp.HxzApiGroup.DriverAuditLogApi
	orderApi                  = api.ApiGroupApp.HxzApiGroup.OrderApi
	orderStatusLogApi         = api.ApiGroupApp.HxzApiGroup.OrderStatusLogApi
	tripApi                   = api.ApiGroupApp.HxzApiGroup.TripApi
	tripPointApi              = api.ApiGroupApp.HxzApiGroup.TripPointApi
	dispatchRuleApi           = api.ApiGroupApp.HxzApiGroup.DispatchRuleApi
	dispatchRuleVersionApi    = api.ApiGroupApp.HxzApiGroup.DispatchRuleVersionApi
	dispatchManualLogApi      = api.ApiGroupApp.HxzApiGroup.DispatchManualLogApi
	financeRecordApi          = api.ApiGroupApp.HxzApiGroup.FinanceRecordApi
	settlementApi             = api.ApiGroupApp.HxzApiGroup.SettlementApi
	commissionConfigApi       = api.ApiGroupApp.HxzApiGroup.CommissionConfigApi
	reconciliationRecordApi   = api.ApiGroupApp.HxzApiGroup.ReconciliationRecordApi
	couponTemplateApi         = api.ApiGroupApp.HxzApiGroup.CouponTemplateApi
	couponRecordApi           = api.ApiGroupApp.HxzApiGroup.CouponRecordApi
	activityApi               = api.ApiGroupApp.HxzApiGroup.ActivityApi
	blacklistApi              = api.ApiGroupApp.HxzApiGroup.BlacklistApi
	riskRuleApi               = api.ApiGroupApp.HxzApiGroup.RiskRuleApi
	riskAlertApi              = api.ApiGroupApp.HxzApiGroup.RiskAlertApi
	ticketApi                 = api.ApiGroupApp.HxzApiGroup.TicketApi
	ticketLogApi              = api.ApiGroupApp.HxzApiGroup.TicketLogApi
	platformConfigApi         = api.ApiGroupApp.HxzApiGroup.PlatformConfigApi
	cityApi                   = api.ApiGroupApp.HxzApiGroup.CityApi
	fareRuleApi               = api.ApiGroupApp.HxzApiGroup.FareRuleApi
	surgeRuleApi              = api.ApiGroupApp.HxzApiGroup.SurgeRuleApi
	reportSnapshotApi         = api.ApiGroupApp.HxzApiGroup.ReportSnapshotApi
)
