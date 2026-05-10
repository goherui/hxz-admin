package hxz

import (
	"github.com/gin-gonic/gin"
)

type FinanceRecordRouter struct{}
type SettlementRouter struct{}
type CommissionConfigRouter struct{}
type ReconciliationRecordRouter struct{}

func (r *FinanceRecordRouter) InitFinanceRecordRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	financeRecordRouter := Router.Group("financeRecord")
	financeRecordRouterWithoutRecord := RouterWithoutRecord.Group("financeRecord")
	{
		financeRecordRouter.POST("", financeRecordApi.CreateFinanceRecord)
		financeRecordRouter.DELETE("", financeRecordApi.DeleteFinanceRecord)
		financeRecordRouter.PUT("", financeRecordApi.UpdateFinanceRecord)
	}
	{
		financeRecordRouterWithoutRecord.GET("", financeRecordApi.FindFinanceRecord)
		financeRecordRouterWithoutRecord.GET("list", financeRecordApi.GetFinanceRecordList)
	}
}

func (r *SettlementRouter) InitSettlementRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	settlementRouter := Router.Group("settlement")
	settlementRouterWithoutRecord := RouterWithoutRecord.Group("settlement")
	{
		settlementRouter.POST("generate", settlementApi.GenerateSettlement)
		settlementRouter.POST("audit", settlementApi.AuditSettlement)
		settlementRouter.POST("pay", settlementApi.PaySettlement)
	}
	{
		settlementRouterWithoutRecord.GET("", settlementApi.FindSettlement)
		settlementRouterWithoutRecord.GET("list", settlementApi.GetSettlementList)
	}
}

func (r *CommissionConfigRouter) InitCommissionConfigRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	commissionConfigRouter := Router.Group("commissionConfig")
	commissionConfigRouterWithoutRecord := RouterWithoutRecord.Group("commissionConfig")
	{
		commissionConfigRouter.POST("", commissionConfigApi.CreateCommissionConfig)
		commissionConfigRouter.DELETE("", commissionConfigApi.DeleteCommissionConfig)
		commissionConfigRouter.PUT("", commissionConfigApi.UpdateCommissionConfig)
	}
	{
		commissionConfigRouterWithoutRecord.GET("", commissionConfigApi.FindCommissionConfig)
		commissionConfigRouterWithoutRecord.GET("list", commissionConfigApi.GetCommissionConfigList)
	}
}

func (r *ReconciliationRecordRouter) InitReconciliationRecordRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	reconciliationRecordRouter := Router.Group("reconciliationRecord")
	reconciliationRecordRouterWithoutRecord := RouterWithoutRecord.Group("reconciliationRecord")
	{
		reconciliationRecordRouter.POST("execute", reconciliationRecordApi.ExecuteReconciliation)
	}
	{
		reconciliationRecordRouterWithoutRecord.GET("", reconciliationRecordApi.FindReconciliationRecord)
		reconciliationRecordRouterWithoutRecord.GET("list", reconciliationRecordApi.GetReconciliationRecordList)
	}
}
