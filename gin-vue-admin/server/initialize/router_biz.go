package initialize

import (
	api "github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/flipped-aurora/gin-vue-admin/server/router"
	"github.com/gin-gonic/gin"
)

func initBizRouter(routers ...*gin.RouterGroup) {
	privateGroup := routers[0]
	publicGroup := routers[1]
	_ = publicGroup

	hxzRouter := router.RouterGroupApp.Hxz
	hxzApi := api.ApiGroupApp.HxzApiGroup

	{
		hxzPassengerRouter := privateGroup.Group("hxzPassenger").Use(middleware.OperationRecord())
		hxzPassengerRouterWithoutRecord := privateGroup.Group("hxzPassenger")
		{
			hxzPassengerRouter.POST("passenger", hxzApi.PassengerApi.CreatePassenger)
			hxzPassengerRouter.DELETE("passenger", hxzApi.PassengerApi.DeletePassenger)
			hxzPassengerRouter.DELETE("passengerByIds", hxzApi.PassengerApi.DeletePassengerByIds)
			hxzPassengerRouter.PUT("passenger", hxzApi.PassengerApi.UpdatePassenger)
			hxzPassengerRouter.POST("ban", hxzApi.PassengerApi.BanPassenger)
			hxzPassengerRouter.POST("unban", hxzApi.PassengerApi.UnbanPassenger)
			hxzPassengerRouter.POST("tag", hxzApi.PassengerTagApi.AddPassengerTag)
			hxzPassengerRouter.DELETE("tag", hxzApi.PassengerTagApi.RemovePassengerTag)
		}
		{
			hxzPassengerRouterWithoutRecord.GET("passenger", hxzApi.PassengerApi.GetPassenger)
			hxzPassengerRouterWithoutRecord.GET("passengerList", hxzApi.PassengerApi.GetPassengerList)
			hxzPassengerRouterWithoutRecord.GET("banRecords", hxzApi.BanRecordApi.GetBanRecordList)
			hxzPassengerRouterWithoutRecord.GET("tagDictList", hxzApi.TagDictApi.GetTagDictList)
		}
		_ = hxzPassengerRouter
		_ = hxzPassengerRouterWithoutRecord
		hxzRouter.PassengerRouter.InitPassengerRouter(privateGroup.Group("hxzPassenger"))
	}

	{
		hxzDriverRouter := privateGroup.Group("hxzDriver").Use(middleware.OperationRecord())
		hxzDriverRouterWithoutRecord := privateGroup.Group("hxzDriver")
		{
			hxzDriverRouter.POST("driver", hxzApi.DriverApi.CreateDriver)
			hxzDriverRouter.DELETE("driver", hxzApi.DriverApi.DeleteDriver)
			hxzDriverRouter.DELETE("driverByIds", hxzApi.DriverApi.DeleteDriverByIds)
			hxzDriverRouter.PUT("driver", hxzApi.DriverApi.UpdateDriver)
			hxzDriverRouter.POST("audit", hxzApi.DriverApi.AuditDriver)
			hxzDriverRouter.POST("ban", hxzApi.DriverApi.BanDriver)
			hxzDriverRouter.POST("unban", hxzApi.DriverApi.UnbanDriver)
		}
		{
			hxzDriverRouterWithoutRecord.GET("driver", hxzApi.DriverApi.FindDriver)
			hxzDriverRouterWithoutRecord.GET("driverList", hxzApi.DriverApi.GetDriverList)
			hxzDriverRouterWithoutRecord.GET("auditList", hxzApi.DriverApi.GetAuditList)
			hxzDriverRouterWithoutRecord.GET("licenses", hxzApi.DriverLicenseApi.GetDriverLicenseList)
			hxzDriverRouterWithoutRecord.GET("vehicles", hxzApi.VehicleApi.GetVehicleList)
			hxzDriverRouterWithoutRecord.GET("auditLogs", hxzApi.DriverAuditLogApi.GetDriverAuditLogList)
		}
		_ = hxzDriverRouter
		_ = hxzDriverRouterWithoutRecord
	}

	{
		hxzOrderRouter := privateGroup.Group("hxzOrder").Use(middleware.OperationRecord())
		hxzOrderRouterWithoutRecord := privateGroup.Group("hxzOrder")
		{
			hxzOrderRouter.POST("order", hxzApi.OrderApi.CreateOrder)
			hxzOrderRouter.DELETE("order", hxzApi.OrderApi.DeleteOrder)
			hxzOrderRouter.DELETE("orderByIds", hxzApi.OrderApi.DeleteOrderByIds)
			hxzOrderRouter.PUT("order", hxzApi.OrderApi.UpdateOrder)
			hxzOrderRouter.POST("markAbnormal", hxzApi.OrderApi.MarkAbnormal)
			hxzOrderRouter.POST("changeStatus", hxzApi.OrderApi.ChangeStatus)
		}
		{
			hxzOrderRouterWithoutRecord.GET("order", hxzApi.OrderApi.FindOrder)
			hxzOrderRouterWithoutRecord.GET("orderList", hxzApi.OrderApi.GetOrderList)
			hxzOrderRouterWithoutRecord.GET("statusLogs", hxzApi.OrderStatusLogApi.GetOrderStatusLogList)
		}
		_ = hxzOrderRouter
		_ = hxzOrderRouterWithoutRecord
	}

	{
		hxzTripRouter := privateGroup.Group("hxzTrip").Use(middleware.OperationRecord())
		hxzTripRouterWithoutRecord := privateGroup.Group("hxzTrip")
		{
			hxzTripRouter.POST("trip", hxzApi.TripApi.CreateTrip)
			hxzTripRouter.DELETE("trip", hxzApi.TripApi.DeleteTrip)
			hxzTripRouter.DELETE("tripByIds", hxzApi.TripApi.DeleteTripByIds)
			hxzTripRouter.PUT("trip", hxzApi.TripApi.UpdateTrip)
			hxzTripRouter.POST("markAbnormal", hxzApi.TripApi.MarkAbnormal)
			hxzTripRouter.POST("setRiskFlag", hxzApi.TripApi.SetRiskFlag)
		}
		{
			hxzTripRouterWithoutRecord.GET("trip", hxzApi.TripApi.FindTrip)
			hxzTripRouterWithoutRecord.GET("tripList", hxzApi.TripApi.GetTripList)
			hxzTripRouterWithoutRecord.GET("points", hxzApi.TripPointApi.GetTripPointList)
		}
		_ = hxzTripRouter
		_ = hxzTripRouterWithoutRecord
	}

	{
		hxzDispatchRouter := privateGroup.Group("hxzDispatch").Use(middleware.OperationRecord())
		hxzDispatchRouterWithoutRecord := privateGroup.Group("hxzDispatch")
		{
			hxzDispatchRouter.POST("rule", hxzApi.DispatchRuleApi.CreateDispatchRule)
			hxzDispatchRouter.DELETE("rule", hxzApi.DispatchRuleApi.DeleteDispatchRule)
			hxzDispatchRouter.DELETE("ruleByIds", hxzApi.DispatchRuleApi.DeleteDispatchRuleByIds)
			hxzDispatchRouter.PUT("rule", hxzApi.DispatchRuleApi.UpdateDispatchRule)
			hxzDispatchRouter.POST("rollback", hxzApi.DispatchRuleApi.RollbackDispatchRule)
			hxzDispatchRouter.POST("manual", hxzApi.DispatchManualLogApi.CreateDispatchManualLog)
		}
		{
			hxzDispatchRouterWithoutRecord.GET("rule", hxzApi.DispatchRuleApi.FindDispatchRule)
			hxzDispatchRouterWithoutRecord.GET("ruleList", hxzApi.DispatchRuleApi.GetDispatchRuleList)
			hxzDispatchRouterWithoutRecord.GET("versions", hxzApi.DispatchRuleVersionApi.GetDispatchRuleVersionList)
			hxzDispatchRouterWithoutRecord.GET("manualLogs", hxzApi.DispatchManualLogApi.GetDispatchManualLogList)
			hxzDispatchRouterWithoutRecord.GET("monitor", hxzApi.DispatchRuleApi.GetDispatchMonitorData)
		}
		_ = hxzDispatchRouter
		_ = hxzDispatchRouterWithoutRecord
	}

	{
		hxzFinanceRouter := privateGroup.Group("hxzFinance").Use(middleware.OperationRecord())
		hxzFinanceRouterWithoutRecord := privateGroup.Group("hxzFinance")
		{
			hxzFinanceRouter.POST("financeRecord", hxzApi.FinanceRecordApi.CreateFinanceRecord)
			hxzFinanceRouter.DELETE("financeRecord", hxzApi.FinanceRecordApi.DeleteFinanceRecord)
			hxzFinanceRouter.PUT("financeRecord", hxzApi.FinanceRecordApi.UpdateFinanceRecord)
			hxzFinanceRouter.POST("settlement/generate", hxzApi.SettlementApi.GenerateSettlement)
			hxzFinanceRouter.POST("settlement/audit", hxzApi.SettlementApi.AuditSettlement)
			hxzFinanceRouter.POST("settlement/pay", hxzApi.SettlementApi.PaySettlement)
			hxzFinanceRouter.POST("commissionConfig", hxzApi.CommissionConfigApi.CreateCommissionConfig)
			hxzFinanceRouter.DELETE("commissionConfig", hxzApi.CommissionConfigApi.DeleteCommissionConfig)
			hxzFinanceRouter.PUT("commissionConfig", hxzApi.CommissionConfigApi.UpdateCommissionConfig)
			hxzFinanceRouter.POST("reconciliation/execute", hxzApi.ReconciliationRecordApi.ExecuteReconciliation)
		}
		{
			hxzFinanceRouterWithoutRecord.GET("financeRecord", hxzApi.FinanceRecordApi.FindFinanceRecord)
			hxzFinanceRouterWithoutRecord.GET("financeRecordList", hxzApi.FinanceRecordApi.GetFinanceRecordList)
			hxzFinanceRouterWithoutRecord.GET("settlement", hxzApi.SettlementApi.FindSettlement)
			hxzFinanceRouterWithoutRecord.GET("settlementList", hxzApi.SettlementApi.GetSettlementList)
			hxzFinanceRouterWithoutRecord.GET("commissionConfig", hxzApi.CommissionConfigApi.FindCommissionConfig)
			hxzFinanceRouterWithoutRecord.GET("commissionConfigList", hxzApi.CommissionConfigApi.GetCommissionConfigList)
			hxzFinanceRouterWithoutRecord.GET("reconciliationRecord", hxzApi.ReconciliationRecordApi.FindReconciliationRecord)
			hxzFinanceRouterWithoutRecord.GET("reconciliationRecordList", hxzApi.ReconciliationRecordApi.GetReconciliationRecordList)
		}
		_ = hxzFinanceRouter
		_ = hxzFinanceRouterWithoutRecord
	}

	{
		hxzCouponRouter := privateGroup.Group("hxzCoupon").Use(middleware.OperationRecord())
		hxzCouponRouterWithoutRecord := privateGroup.Group("hxzCoupon")
		{
			hxzCouponRouter.POST("couponTemplate", hxzApi.CouponTemplateApi.CreateCouponTemplate)
			hxzCouponRouter.DELETE("couponTemplate", hxzApi.CouponTemplateApi.DeleteCouponTemplate)
			hxzCouponRouter.PUT("couponTemplate", hxzApi.CouponTemplateApi.UpdateCouponTemplate)
			hxzCouponRouter.PUT("publishTemplate", hxzApi.CouponTemplateApi.PublishCouponTemplate)
			hxzCouponRouter.PUT("offlineTemplate", hxzApi.CouponTemplateApi.OfflineCouponTemplate)
			hxzCouponRouter.POST("issueCoupon", hxzApi.CouponRecordApi.ManualIssue)
			hxzCouponRouter.POST("activity", hxzApi.ActivityApi.CreateActivity)
			hxzCouponRouter.DELETE("activity", hxzApi.ActivityApi.DeleteActivity)
			hxzCouponRouter.PUT("activity", hxzApi.ActivityApi.UpdateActivity)
			hxzCouponRouter.PUT("pauseActivity", hxzApi.ActivityApi.PauseActivity)
			hxzCouponRouter.PUT("resumeActivity", hxzApi.ActivityApi.ResumeActivity)
		}
		{
			hxzCouponRouterWithoutRecord.GET("couponTemplate", hxzApi.CouponTemplateApi.FindCouponTemplate)
			hxzCouponRouterWithoutRecord.GET("couponTemplateList", hxzApi.CouponTemplateApi.GetCouponTemplateList)
			hxzCouponRouterWithoutRecord.GET("couponRecordList", hxzApi.CouponRecordApi.GetCouponRecordList)
			hxzCouponRouterWithoutRecord.GET("activity", hxzApi.ActivityApi.FindActivity)
			hxzCouponRouterWithoutRecord.GET("activityList", hxzApi.ActivityApi.GetActivityList)
		}
		_ = hxzCouponRouter
		_ = hxzCouponRouterWithoutRecord
	}

	{
		hxzRiskRouter := privateGroup.Group("hxzRisk").Use(middleware.OperationRecord())
		hxzRiskRouterWithoutRecord := privateGroup.Group("hxzRisk")
		{
			hxzRiskRouter.POST("blacklist", hxzApi.BlacklistApi.AddBlacklist)
			hxzRiskRouter.DELETE("blacklist", hxzApi.BlacklistApi.RemoveBlacklist)
			hxzRiskRouter.POST("riskRule", hxzApi.RiskRuleApi.CreateRiskRule)
			hxzRiskRouter.DELETE("riskRule", hxzApi.RiskRuleApi.DeleteRiskRule)
			hxzRiskRouter.PUT("riskRule", hxzApi.RiskRuleApi.UpdateRiskRule)
			hxzRiskRouter.POST("handleAlert", hxzApi.RiskAlertApi.HandleRiskAlert)
		}
		{
			hxzRiskRouterWithoutRecord.GET("blacklist", hxzApi.BlacklistApi.GetBlacklistByID)
			hxzRiskRouterWithoutRecord.GET("blacklistList", hxzApi.BlacklistApi.GetBlacklistList)
			hxzRiskRouterWithoutRecord.GET("riskRule", hxzApi.RiskRuleApi.GetRiskRuleByID)
			hxzRiskRouterWithoutRecord.GET("riskRuleList", hxzApi.RiskRuleApi.GetRiskRuleList)
			hxzRiskRouterWithoutRecord.GET("riskAlertList", hxzApi.RiskAlertApi.GetRiskAlertList)
			hxzRiskRouterWithoutRecord.GET("profile", hxzApi.RiskAlertApi.GetRiskProfile)
		}
		_ = hxzRiskRouter
		_ = hxzRiskRouterWithoutRecord
	}

	{
		hxzTicketRouter := privateGroup.Group("hxzTicket").Use(middleware.OperationRecord())
		hxzTicketRouterWithoutRecord := privateGroup.Group("hxzTicket")
		{
			hxzTicketRouter.POST("ticket", hxzApi.TicketApi.CreateTicket)
			hxzTicketRouter.DELETE("ticket", hxzApi.TicketApi.DeleteTicket)
			hxzTicketRouter.PUT("ticket", hxzApi.TicketApi.UpdateTicket)
			hxzTicketRouter.POST("accept", hxzApi.TicketApi.AcceptTicket)
			hxzTicketRouter.POST("reply", hxzApi.TicketApi.ReplyTicket)
			hxzTicketRouter.POST("transfer", hxzApi.TicketApi.TransferTicket)
			hxzTicketRouter.POST("complete", hxzApi.TicketApi.ResolveTicket)
			hxzTicketRouter.POST("close", hxzApi.TicketApi.CloseTicket)
		}
		{
			hxzTicketRouterWithoutRecord.GET("ticket", hxzApi.TicketApi.GetTicketByID)
			hxzTicketRouterWithoutRecord.GET("ticketList", hxzApi.TicketApi.GetTicketList)
			hxzTicketRouterWithoutRecord.GET("ticketLogs", hxzApi.TicketLogApi.GetTicketLogList)
			hxzTicketRouterWithoutRecord.GET("stats", hxzApi.TicketApi.GetTicketStats)
		}
		_ = hxzTicketRouter
		_ = hxzTicketRouterWithoutRecord
	}

	{
		hxzPlatformRouter := privateGroup.Group("hxzPlatform").Use(middleware.OperationRecord())
		hxzPlatformRouterWithoutRecord := privateGroup.Group("hxzPlatform")
		{
			hxzPlatformRouter.POST("platformConfig", hxzApi.PlatformConfigApi.CreatePlatformConfig)
			hxzPlatformRouter.DELETE("platformConfig", hxzApi.PlatformConfigApi.DeletePlatformConfig)
			hxzPlatformRouter.PUT("platformConfig", hxzApi.PlatformConfigApi.UpdatePlatformConfig)
			hxzPlatformRouter.POST("city", hxzApi.CityApi.CreateCity)
			hxzPlatformRouter.PUT("city", hxzApi.CityApi.UpdateCity)
			hxzPlatformRouter.PUT("openCity", hxzApi.CityApi.OpenCity)
			hxzPlatformRouter.PUT("closeCity", hxzApi.CityApi.CloseCity)
			hxzPlatformRouter.POST("fareRule", hxzApi.FareRuleApi.CreateFareRule)
			hxzPlatformRouter.DELETE("fareRule", hxzApi.FareRuleApi.DeleteFareRule)
			hxzPlatformRouter.PUT("fareRule", hxzApi.FareRuleApi.UpdateFareRule)
			hxzPlatformRouter.POST("surgeRule", hxzApi.SurgeRuleApi.CreateSurgeRule)
			hxzPlatformRouter.DELETE("surgeRule", hxzApi.SurgeRuleApi.DeleteSurgeRule)
			hxzPlatformRouter.PUT("surgeRule", hxzApi.SurgeRuleApi.UpdateSurgeRule)
		}
		{
			hxzPlatformRouterWithoutRecord.GET("platformConfig", hxzApi.PlatformConfigApi.GetPlatformConfigByID)
			hxzPlatformRouterWithoutRecord.GET("platformConfigList", hxzApi.PlatformConfigApi.GetPlatformConfigList)
			hxzPlatformRouterWithoutRecord.GET("city", hxzApi.CityApi.GetCityByID)
			hxzPlatformRouterWithoutRecord.GET("cityList", hxzApi.CityApi.GetCityList)
			hxzPlatformRouterWithoutRecord.GET("fareRule", hxzApi.FareRuleApi.GetFareRuleByID)
			hxzPlatformRouterWithoutRecord.GET("fareRuleList", hxzApi.FareRuleApi.GetFareRuleList)
			hxzPlatformRouterWithoutRecord.GET("surgeRule", hxzApi.SurgeRuleApi.GetSurgeRuleByID)
			hxzPlatformRouterWithoutRecord.GET("surgeRuleList", hxzApi.SurgeRuleApi.GetSurgeRuleList)
		}
		_ = hxzPlatformRouter
		_ = hxzPlatformRouterWithoutRecord
	}

	{
		hxzReportRouter := privateGroup.Group("hxzReport").Use(middleware.OperationRecord())
		hxzReportRouterWithoutRecord := privateGroup.Group("hxzReport")
		{
			hxzReportRouter.POST("reportSnapshot", hxzApi.ReportSnapshotApi.CreateReportSnapshot)
			hxzReportRouter.DELETE("reportSnapshot", hxzApi.ReportSnapshotApi.DeleteReportSnapshot)
			hxzReportRouter.PUT("reportSnapshot", hxzApi.ReportSnapshotApi.UpdateReportSnapshot)
		}
		{
			hxzReportRouterWithoutRecord.GET("reportSnapshot", hxzApi.ReportSnapshotApi.FindReportSnapshot)
			hxzReportRouterWithoutRecord.GET("reportSnapshotList", hxzApi.ReportSnapshotApi.GetReportSnapshotList)
			hxzReportRouterWithoutRecord.GET("dashboard", hxzApi.ReportSnapshotApi.GetDashboard)
			hxzReportRouterWithoutRecord.GET("orderReport", hxzApi.ReportSnapshotApi.GetOrderReport)
			hxzReportRouterWithoutRecord.GET("driverReport", hxzApi.ReportSnapshotApi.GetDriverReport)
			hxzReportRouterWithoutRecord.GET("financeReport", hxzApi.ReportSnapshotApi.GetFinanceReport)
		}
		_ = hxzReportRouter
		_ = hxzReportRouterWithoutRecord
	}

	holder(publicGroup, privateGroup)
}

func holder(routers ...*gin.RouterGroup) {
	_ = routers
	_ = router.RouterGroupApp
}
