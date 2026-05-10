package hxz

import (
	"github.com/gin-gonic/gin"
)

type ReportSnapshotRouter struct{}

func (r *ReportSnapshotRouter) InitReportSnapshotRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	reportSnapshotRouter := Router.Group("reportSnapshot")
	reportSnapshotRouterWithoutRecord := RouterWithoutRecord.Group("reportSnapshot")
	{
		reportSnapshotRouter.POST("", reportSnapshotApi.CreateReportSnapshot)
		reportSnapshotRouter.DELETE("", reportSnapshotApi.DeleteReportSnapshot)
		reportSnapshotRouter.PUT("", reportSnapshotApi.UpdateReportSnapshot)
	}
	{
		reportSnapshotRouterWithoutRecord.GET("", reportSnapshotApi.FindReportSnapshot)
		reportSnapshotRouterWithoutRecord.GET("list", reportSnapshotApi.GetReportSnapshotList)
		reportSnapshotRouterWithoutRecord.GET("dashboard", reportSnapshotApi.GetDashboard)
		reportSnapshotRouterWithoutRecord.GET("orderReport", reportSnapshotApi.GetOrderReport)
		reportSnapshotRouterWithoutRecord.GET("driverReport", reportSnapshotApi.GetDriverReport)
		reportSnapshotRouterWithoutRecord.GET("financeReport", reportSnapshotApi.GetFinanceReport)
	}
}
