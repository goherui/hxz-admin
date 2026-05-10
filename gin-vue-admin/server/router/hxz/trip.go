package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type TripRouter struct{}

type TripPointRouter struct{}

func (r *TripRouter) InitTripRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	tripRouter := Router.Group("trip").Use(middleware.OperationRecord())
	tripRouterWithoutRecord := RouterWithoutRecord.Group("trip")
	{
		tripRouter.POST("trip", tripApi.CreateTrip)
		tripRouter.DELETE("trip", tripApi.DeleteTrip)
		tripRouter.DELETE("tripByIds", tripApi.DeleteTripByIds)
		tripRouter.PUT("trip", tripApi.UpdateTrip)
		tripRouter.POST("markAbnormal", tripApi.MarkAbnormal)
		tripRouter.POST("setRiskFlag", tripApi.SetRiskFlag)
	}
	{
		tripRouterWithoutRecord.GET("trip", tripApi.FindTrip)
		tripRouterWithoutRecord.GET("tripList", tripApi.GetTripList)
		tripRouterWithoutRecord.GET("points", tripPointApi.GetTripPointList)
	}
}
