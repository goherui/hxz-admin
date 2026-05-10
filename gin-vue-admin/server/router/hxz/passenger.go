package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type PassengerRouter struct{}

func (r *PassengerRouter) InitPassengerRouter(Router *gin.RouterGroup) {
	passengerRouter := Router.Group("passenger").Use(middleware.OperationRecord())
	passengerRouterWithoutRecord := Router.Group("passenger")
	{
		passengerRouter.POST("createPassenger", passengerApi.CreatePassenger)
		passengerRouter.DELETE("deletePassenger", passengerApi.DeletePassenger)
		passengerRouter.DELETE("deletePassengerByIds", passengerApi.DeletePassengerByIds)
		passengerRouter.PUT("updatePassenger", passengerApi.UpdatePassenger)
		passengerRouter.POST("banPassenger", passengerApi.BanPassenger)
		passengerRouter.POST("unbanPassenger", passengerApi.UnbanPassenger)
	}
	{
		passengerRouterWithoutRecord.GET("getPassenger", passengerApi.GetPassenger)
		passengerRouterWithoutRecord.GET("getPassengerList", passengerApi.GetPassengerList)
	}
}

type TagDictRouter struct{}

func (r *TagDictRouter) InitTagDictRouter(Router *gin.RouterGroup) {
	tagDictRouter := Router.Group("tagDict").Use(middleware.OperationRecord())
	tagDictRouterWithoutRecord := Router.Group("tagDict")
	{
		tagDictRouter.POST("createTagDict", tagDictApi.CreateTagDict)
		tagDictRouter.DELETE("deleteTagDict", tagDictApi.DeleteTagDict)
		tagDictRouter.PUT("updateTagDict", tagDictApi.UpdateTagDict)
	}
	{
		tagDictRouterWithoutRecord.GET("getTagDict", tagDictApi.GetTagDict)
		tagDictRouterWithoutRecord.GET("getTagDictList", tagDictApi.GetTagDictList)
	}
}

type PassengerTagRouter struct{}

func (r *PassengerTagRouter) InitPassengerTagRouter(Router *gin.RouterGroup) {
	passengerTagRouter := Router.Group("passengerTag").Use(middleware.OperationRecord())
	passengerTagRouterWithoutRecord := Router.Group("passengerTag")
	{
		passengerTagRouter.POST("addPassengerTag", passengerTagApi.AddPassengerTag)
		passengerTagRouter.POST("removePassengerTag", passengerTagApi.RemovePassengerTag)
		passengerTagRouter.POST("batchSetPassengerTags", passengerTagApi.BatchSetPassengerTags)
	}
	{
		passengerTagRouterWithoutRecord.GET("getPassengerTags", passengerTagApi.GetPassengerTags)
	}
}

type BanRecordRouter struct{}

func (r *BanRecordRouter) InitBanRecordRouter(Router *gin.RouterGroup) {
	banRecordRouterWithoutRecord := Router.Group("banRecord")
	{
		banRecordRouterWithoutRecord.GET("getBanRecordList", banRecordApi.GetBanRecordList)
	}
}
