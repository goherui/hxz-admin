package hxz

type ServiceGroup struct {
	PassengerServiceApp            PassengerService
	TagDictServiceApp              TagDictService
	PassengerTagServiceApp         PassengerTagService
	BanRecordServiceApp            BanRecordService
	DriverServiceApp               DriverService
	DriverLicenseServiceApp        DriverLicenseService
	VehicleServiceApp              VehicleService
	DriverAuditLogServiceApp       DriverAuditLogService
	OrderServiceApp                OrderService
	OrderStatusLogServiceApp       OrderStatusLogService
	TripServiceApp                 TripService
	TripPointServiceApp            TripPointService
	BlacklistServiceApp            BlacklistService
	RiskRuleServiceApp             RiskRuleService
	RiskAlertServiceApp            RiskAlertService
	TicketServiceApp               TicketService
	TicketLogServiceApp            TicketLogService
	PlatformConfigServiceApp       PlatformConfigService
	CityServiceApp                 CityService
	FareRuleServiceApp             FareRuleService
	SurgeRuleServiceApp            SurgeRuleService
	ReportSnapshotServiceApp       ReportSnapshotService
	DispatchRuleServiceApp         DispatchRuleService
	DispatchRuleVersionServiceApp  DispatchRuleVersionService
	DispatchManualLogServiceApp    DispatchManualLogService
	FinanceRecordServiceApp        FinanceRecordService
	SettlementServiceApp           SettlementService
	CommissionConfigServiceApp     CommissionConfigService
	ReconciliationRecordServiceApp ReconciliationRecordService
	CouponTemplateServiceApp       CouponTemplateService
	CouponRecordServiceApp         CouponRecordService
	ActivityServiceApp             ActivityService
}
