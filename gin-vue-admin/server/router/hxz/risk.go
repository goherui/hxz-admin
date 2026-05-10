package hxz

import (
	"github.com/gin-gonic/gin"
)

type BlacklistRouter struct{}
type RiskRuleRouter struct{}
type RiskAlertRouter struct{}

func (r *BlacklistRouter) InitBlacklistRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	blacklistRouter := Router.Group("blacklist")
	blacklistRouterWithoutRecord := RouterWithoutRecord.Group("blacklist")
	{
		blacklistRouter.POST("", blacklistApi.AddBlacklist)
		blacklistRouter.DELETE("", blacklistApi.RemoveBlacklist)
	}
	{
		blacklistRouterWithoutRecord.GET("", blacklistApi.GetBlacklistByID)
		blacklistRouterWithoutRecord.GET("list", blacklistApi.GetBlacklistList)
	}
}

func (r *RiskRuleRouter) InitRiskRuleRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	riskRuleRouter := Router.Group("riskRule")
	riskRuleRouterWithoutRecord := RouterWithoutRecord.Group("riskRule")
	{
		riskRuleRouter.POST("", riskRuleApi.CreateRiskRule)
		riskRuleRouter.DELETE("", riskRuleApi.DeleteRiskRule)
		riskRuleRouter.PUT("", riskRuleApi.UpdateRiskRule)
	}
	{
		riskRuleRouterWithoutRecord.GET("", riskRuleApi.GetRiskRuleByID)
		riskRuleRouterWithoutRecord.GET("list", riskRuleApi.GetRiskRuleList)
	}
}

func (r *RiskAlertRouter) InitRiskAlertRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	riskAlertRouter := Router.Group("riskAlert")
	riskAlertRouterWithoutRecord := RouterWithoutRecord.Group("riskAlert")
	{
		riskAlertRouter.POST("handle", riskAlertApi.HandleRiskAlert)
	}
	{
		riskAlertRouterWithoutRecord.GET("list", riskAlertApi.GetRiskAlertList)
		riskAlertRouterWithoutRecord.GET("profile", riskAlertApi.GetRiskProfile)
	}
}
