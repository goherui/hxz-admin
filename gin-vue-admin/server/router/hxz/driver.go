package hxz

import (
	"github.com/gin-gonic/gin"
)

type DriverRouter struct{}

type DriverLicenseRouter struct{}

type VehicleRouter struct{}

type DriverAuditLogRouter struct{}

func (d *DriverRouter) InitDriverRouter(Router *gin.RouterGroup, RouterWithoutRecord *gin.RouterGroup) {
	driverRouter := Router.Group("driver")
	driverRouterWithoutRecord := RouterWithoutRecord.Group("driver")
	{
		driverRouter.POST("", driverApi.CreateDriver)
		driverRouter.DELETE("", driverApi.DeleteDriver)
		driverRouter.DELETE("byIds", driverApi.DeleteDriverByIds)
		driverRouter.PUT("", driverApi.UpdateDriver)
		driverRouter.POST("audit", driverApi.AuditDriver)
		driverRouter.POST("ban", driverApi.BanDriver)
		driverRouter.POST("unban", driverApi.UnbanDriver)
	}
	{
		driverRouterWithoutRecord.GET("", driverApi.FindDriver)
		driverRouterWithoutRecord.GET("list", driverApi.GetDriverList)
		driverRouterWithoutRecord.GET("auditList", driverApi.GetAuditList)
		driverRouterWithoutRecord.GET("licenses", driverLicenseApi.GetDriverLicenseList)
		driverRouterWithoutRecord.GET("vehicles", vehicleApi.GetVehicleList)
		driverRouterWithoutRecord.GET("auditLogs", driverAuditLogApi.GetDriverAuditLogList)
	}
}
