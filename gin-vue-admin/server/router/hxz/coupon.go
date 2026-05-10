package hxz

import (
	"github.com/gin-gonic/gin"
)

type CouponTemplateRouter struct{}
type CouponRecordRouter struct{}
type ActivityRouter struct{}

func (r *CouponTemplateRouter) InitCouponTemplateRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	couponTemplateRouter := Router.Group("couponTemplate")
	couponTemplateRouterWithoutRecord := RouterWithoutRecord.Group("couponTemplate")
	{
		couponTemplateRouter.POST("", couponTemplateApi.CreateCouponTemplate)
		couponTemplateRouter.DELETE("", couponTemplateApi.DeleteCouponTemplate)
		couponTemplateRouter.PUT("", couponTemplateApi.UpdateCouponTemplate)
		couponTemplateRouter.PUT("publish", couponTemplateApi.PublishCouponTemplate)
		couponTemplateRouter.PUT("offline", couponTemplateApi.OfflineCouponTemplate)
	}
	{
		couponTemplateRouterWithoutRecord.GET("", couponTemplateApi.FindCouponTemplate)
		couponTemplateRouterWithoutRecord.GET("list", couponTemplateApi.GetCouponTemplateList)
	}
}

func (r *CouponRecordRouter) InitCouponRecordRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	couponRecordRouter := Router.Group("couponRecord")
	couponRecordRouterWithoutRecord := RouterWithoutRecord.Group("couponRecord")
	{
		couponRecordRouter.POST("issue", couponRecordApi.ManualIssue)
	}
	{
		couponRecordRouterWithoutRecord.GET("list", couponRecordApi.GetCouponRecordList)
	}
}

func (r *ActivityRouter) InitActivityRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	activityRouter := Router.Group("activity")
	activityRouterWithoutRecord := RouterWithoutRecord.Group("activity")
	{
		activityRouter.POST("", activityApi.CreateActivity)
		activityRouter.DELETE("", activityApi.DeleteActivity)
		activityRouter.PUT("", activityApi.UpdateActivity)
		activityRouter.PUT("pause", activityApi.PauseActivity)
		activityRouter.PUT("resume", activityApi.ResumeActivity)
	}
	{
		activityRouterWithoutRecord.GET("", activityApi.FindActivity)
		activityRouterWithoutRecord.GET("list", activityApi.GetActivityList)
	}
}
