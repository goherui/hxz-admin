package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type DriverLicenseApi struct{}

func (d *DriverLicenseApi) CreateDriverLicense(c *gin.Context) {
	var driverLicense hxz.DriverLicense
	err := c.ShouldBindJSON(&driverLicense)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := driverLicenseService.CreateDriverLicense(driverLicense)
	if err != nil {
		global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (d *DriverLicenseApi) GetDriverLicenseList(c *gin.Context) {
	var info hxzReq.DriverLicenseSearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := driverLicenseService.GetDriverLicenseList(info)
	if err != nil {
		global.GVA_LOG.Error("获取失败!", zap.Error(err))
		response.FailWithMessage("获取失败", c)
		return
	}
	response.OkWithDetailed(response.PageResult{
		List:     list,
		Total:    total,
		Page:     info.Page,
		PageSize: info.PageSize,
	}, "获取成功", c)
}
