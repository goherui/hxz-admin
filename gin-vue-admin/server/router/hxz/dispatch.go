package hxz

import (
	"github.com/gin-gonic/gin"
)

type DispatchRuleRouter struct{}
type DispatchRuleVersionRouter struct{}
type DispatchManualLogRouter struct{}

func (r *DispatchRuleRouter) InitDispatchRuleRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	dispatchRuleRouter := Router.Group("rule")
	dispatchRuleRouterWithoutRecord := RouterWithoutRecord.Group("rule")
	{
		dispatchRuleRouter.POST("", dispatchRuleApi.CreateDispatchRule)
		dispatchRuleRouter.DELETE("", dispatchRuleApi.DeleteDispatchRule)
		dispatchRuleRouter.DELETE("ByIds", dispatchRuleApi.DeleteDispatchRuleByIds)
		dispatchRuleRouter.PUT("", dispatchRuleApi.UpdateDispatchRule)
		dispatchRuleRouter.POST("rollback", dispatchRuleApi.RollbackDispatchRule)
	}
	{
		dispatchRuleRouterWithoutRecord.GET("", dispatchRuleApi.FindDispatchRule)
		dispatchRuleRouterWithoutRecord.GET("list", dispatchRuleApi.GetDispatchRuleList)
		dispatchRuleRouterWithoutRecord.GET("monitor", dispatchRuleApi.GetDispatchMonitorData)
	}
}

func (r *DispatchRuleVersionRouter) InitDispatchRuleVersionRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	dispatchRuleVersionRouterWithoutRecord := RouterWithoutRecord.Group("version")
	{
		dispatchRuleVersionRouterWithoutRecord.GET("list", dispatchRuleVersionApi.GetDispatchRuleVersionList)
	}
}

func (r *DispatchManualLogRouter) InitDispatchManualLogRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	dispatchManualLogRouter := Router.Group("manualLog")
	dispatchManualLogRouterWithoutRecord := RouterWithoutRecord.Group("manualLog")
	{
		dispatchManualLogRouter.POST("", dispatchManualLogApi.CreateDispatchManualLog)
	}
	{
		dispatchManualLogRouterWithoutRecord.GET("list", dispatchManualLogApi.GetDispatchManualLogList)
	}
}
