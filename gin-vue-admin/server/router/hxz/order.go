package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type OrderRouter struct{}

type OrderStatusLogRouter struct{}

func (r *OrderRouter) InitOrderRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	orderRouter := Router.Group("order").Use(middleware.OperationRecord())
	orderRouterWithoutRecord := RouterWithoutRecord.Group("order")
	{
		orderRouter.POST("order", orderApi.CreateOrder)
		orderRouter.DELETE("order", orderApi.DeleteOrder)
		orderRouter.DELETE("orderByIds", orderApi.DeleteOrderByIds)
		orderRouter.PUT("order", orderApi.UpdateOrder)
		orderRouter.POST("markAbnormal", orderApi.MarkAbnormal)
		orderRouter.POST("changeStatus", orderApi.ChangeStatus)
	}
	{
		orderRouterWithoutRecord.GET("order", orderApi.FindOrder)
		orderRouterWithoutRecord.GET("orderList", orderApi.GetOrderList)
		orderRouterWithoutRecord.GET("statusLogs", orderStatusLogApi.GetOrderStatusLogList)
	}
}
