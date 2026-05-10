package hxz

import (
	"github.com/gin-gonic/gin"
)

type PlatformConfigRouter struct{}
type CityRouter struct{}
type FareRuleRouter struct{}
type SurgeRuleRouter struct{}

func (r *PlatformConfigRouter) InitPlatformConfigRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	platformConfigRouter := Router.Group("platformConfig")
	platformConfigRouterWithoutRecord := RouterWithoutRecord.Group("platformConfig")
	{
		platformConfigRouter.POST("", platformConfigApi.CreatePlatformConfig)
		platformConfigRouter.DELETE("", platformConfigApi.DeletePlatformConfig)
		platformConfigRouter.PUT("", platformConfigApi.UpdatePlatformConfig)
	}
	{
		platformConfigRouterWithoutRecord.GET("", platformConfigApi.GetPlatformConfigByID)
		platformConfigRouterWithoutRecord.GET("list", platformConfigApi.GetPlatformConfigList)
	}
}

func (r *CityRouter) InitCityRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	cityRouter := Router.Group("city")
	cityRouterWithoutRecord := RouterWithoutRecord.Group("city")
	{
		cityRouter.POST("", cityApi.CreateCity)
		cityRouter.PUT("", cityApi.UpdateCity)
		cityRouter.PUT("open", cityApi.OpenCity)
		cityRouter.PUT("close", cityApi.CloseCity)
	}
	{
		cityRouterWithoutRecord.GET("", cityApi.GetCityByID)
		cityRouterWithoutRecord.GET("list", cityApi.GetCityList)
	}
}

func (r *FareRuleRouter) InitFareRuleRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	fareRuleRouter := Router.Group("fareRule")
	fareRuleRouterWithoutRecord := RouterWithoutRecord.Group("fareRule")
	{
		fareRuleRouter.POST("", fareRuleApi.CreateFareRule)
		fareRuleRouter.DELETE("", fareRuleApi.DeleteFareRule)
		fareRuleRouter.PUT("", fareRuleApi.UpdateFareRule)
	}
	{
		fareRuleRouterWithoutRecord.GET("", fareRuleApi.GetFareRuleByID)
		fareRuleRouterWithoutRecord.GET("list", fareRuleApi.GetFareRuleList)
	}
}

func (r *SurgeRuleRouter) InitSurgeRuleRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	surgeRuleRouter := Router.Group("surgeRule")
	surgeRuleRouterWithoutRecord := RouterWithoutRecord.Group("surgeRule")
	{
		surgeRuleRouter.POST("", surgeRuleApi.CreateSurgeRule)
		surgeRuleRouter.DELETE("", surgeRuleApi.DeleteSurgeRule)
		surgeRuleRouter.PUT("", surgeRuleApi.UpdateSurgeRule)
	}
	{
		surgeRuleRouterWithoutRecord.GET("", surgeRuleApi.GetSurgeRuleByID)
		surgeRuleRouterWithoutRecord.GET("list", surgeRuleApi.GetSurgeRuleList)
	}
}
