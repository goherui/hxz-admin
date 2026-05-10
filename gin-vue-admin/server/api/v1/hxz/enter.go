package hxz

import "github.com/flipped-aurora/gin-vue-admin/server/service"

type ApiGroup struct {
	PassengerApi
	TagDictApi
	PassengerTagApi
	BanRecordApi
	DriverApi
	DriverLicenseApi
	VehicleApi
	DriverAuditLogApi
	OrderApi
	OrderStatusLogApi
	TripApi
	TripPointApi
	DispatchRuleApi
	DispatchRuleVersionApi
	DispatchManualLogApi
	FinanceRecordApi
	SettlementApi
	CommissionConfigApi
	ReconciliationRecordApi
	CouponTemplateApi
	CouponRecordApi
	ActivityApi
	BlacklistApi
	RiskRuleApi
	RiskAlertApi
	TicketApi
	TicketLogApi
	PlatformConfigApi
	CityApi
	FareRuleApi
	SurgeRuleApi
	ReportSnapshotApi
}

var (
	passengerService              = service.ServiceGroupApp.HxzServiceGroup.PassengerServiceApp
	tagDictService                = service.ServiceGroupApp.HxzServiceGroup.TagDictServiceApp
	passengerTagService           = service.ServiceGroupApp.HxzServiceGroup.PassengerTagServiceApp
	banRecordService              = service.ServiceGroupApp.HxzServiceGroup.BanRecordServiceApp
	driverService                 = service.ServiceGroupApp.HxzServiceGroup.DriverServiceApp
	driverLicenseService          = service.ServiceGroupApp.HxzServiceGroup.DriverLicenseServiceApp
	vehicleService                = service.ServiceGroupApp.HxzServiceGroup.VehicleServiceApp
	driverAuditLogService         = service.ServiceGroupApp.HxzServiceGroup.DriverAuditLogServiceApp
	orderService                  = service.ServiceGroupApp.HxzServiceGroup.OrderServiceApp
	orderStatusLogService         = service.ServiceGroupApp.HxzServiceGroup.OrderStatusLogServiceApp
	tripService                   = service.ServiceGroupApp.HxzServiceGroup.TripServiceApp
	tripPointService              = service.ServiceGroupApp.HxzServiceGroup.TripPointServiceApp
	dispatchRuleService           = service.ServiceGroupApp.HxzServiceGroup.DispatchRuleServiceApp
	dispatchRuleVersionService    = service.ServiceGroupApp.HxzServiceGroup.DispatchRuleVersionServiceApp
	dispatchManualLogService      = service.ServiceGroupApp.HxzServiceGroup.DispatchManualLogServiceApp
	financeRecordService          = service.ServiceGroupApp.HxzServiceGroup.FinanceRecordServiceApp
	settlementService             = service.ServiceGroupApp.HxzServiceGroup.SettlementServiceApp
	commissionConfigService       = service.ServiceGroupApp.HxzServiceGroup.CommissionConfigServiceApp
	reconciliationRecordService   = service.ServiceGroupApp.HxzServiceGroup.ReconciliationRecordServiceApp
	couponTemplateService         = service.ServiceGroupApp.HxzServiceGroup.CouponTemplateServiceApp
	couponRecordService           = service.ServiceGroupApp.HxzServiceGroup.CouponRecordServiceApp
	activityService               = service.ServiceGroupApp.HxzServiceGroup.ActivityServiceApp
	blacklistService              = service.ServiceGroupApp.HxzServiceGroup.BlacklistServiceApp
	riskRuleService               = service.ServiceGroupApp.HxzServiceGroup.RiskRuleServiceApp
	riskAlertService              = service.ServiceGroupApp.HxzServiceGroup.RiskAlertServiceApp
	ticketService                 = service.ServiceGroupApp.HxzServiceGroup.TicketServiceApp
	ticketLogService              = service.ServiceGroupApp.HxzServiceGroup.TicketLogServiceApp
	platformConfigService         = service.ServiceGroupApp.HxzServiceGroup.PlatformConfigServiceApp
	cityService                   = service.ServiceGroupApp.HxzServiceGroup.CityServiceApp
	fareRuleService               = service.ServiceGroupApp.HxzServiceGroup.FareRuleServiceApp
	surgeRuleService              = service.ServiceGroupApp.HxzServiceGroup.SurgeRuleServiceApp
	reportSnapshotService         = service.ServiceGroupApp.HxzServiceGroup.ReportSnapshotServiceApp
)
