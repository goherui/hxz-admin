package hxz

import (
	"github.com/gin-gonic/gin"
)

type TicketRouter struct{}
type TicketLogRouter struct{}

func (r *TicketRouter) InitTicketRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	ticketRouter := Router.Group("ticket")
	ticketRouterWithoutRecord := RouterWithoutRecord.Group("ticket")
	{
		ticketRouter.POST("", ticketApi.CreateTicket)
		ticketRouter.DELETE("", ticketApi.DeleteTicket)
		ticketRouter.PUT("", ticketApi.UpdateTicket)
		ticketRouter.POST("accept", ticketApi.AcceptTicket)
		ticketRouter.POST("reply", ticketApi.ReplyTicket)
		ticketRouter.POST("transfer", ticketApi.TransferTicket)
		ticketRouter.POST("complete", ticketApi.ResolveTicket)
		ticketRouter.POST("close", ticketApi.CloseTicket)
	}
	{
		ticketRouterWithoutRecord.GET("", ticketApi.GetTicketByID)
		ticketRouterWithoutRecord.GET("list", ticketApi.GetTicketList)
		ticketRouterWithoutRecord.GET("stats", ticketApi.GetTicketStats)
	}
}

func (r *TicketLogRouter) InitTicketLogRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	ticketLogRouterWithoutRecord := RouterWithoutRecord.Group("ticketLog")
	{
		ticketLogRouterWithoutRecord.GET("list", ticketLogApi.GetTicketLogList)
	}
}
