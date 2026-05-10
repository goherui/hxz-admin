package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"github.com/flipped-aurora/gin-vue-admin/server/utils"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type DriverApi struct{}

func (d *DriverApi) CreateDriver(c *gin.Context) {
	var driver hxz.Driver
	err := c.ShouldBindJSON(&driver)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := driverService.CreateDriver(driver)
	if err != nil {
		global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (d *DriverApi) DeleteDriver(c *gin.Context) {
	var driver hxz.Driver
	err := c.ShouldBindJSON(&driver)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = driverService.DeleteDriver(driver.ID)
	if err != nil {
		global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

func (d *DriverApi) DeleteDriverByIds(c *gin.Context) {
	var ids request.IdsReq
	err := c.ShouldBindJSON(&ids)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = driverService.DeleteDriverByIds(ids)
	if err != nil {
		global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
		return
	}
	response.OkWithMessage("批量删除成功", c)
}

func (d *DriverApi) UpdateDriver(c *gin.Context) {
	var driver hxz.Driver
	err := c.ShouldBindJSON(&driver)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = driverService.UpdateDriver(&driver)
	if err != nil {
		global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

func (d *DriverApi) FindDriver(c *gin.Context) {
	var driver hxz.Driver
	err := c.ShouldBindQuery(&driver)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := driverService.GetDriver(driver.ID)
	if err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (d *DriverApi) GetDriverList(c *gin.Context) {
	var info hxzReq.DriverSearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := driverService.GetDriverList(info)
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

func (d *DriverApi) AuditDriver(c *gin.Context) {
	var req hxzReq.DriverAuditReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	operatorID := utils.GetUserID(c)
	err = driverService.AuditDriver(req, operatorID)
	if err != nil {
		global.GVA_LOG.Error("审核失败!", zap.Error(err))
		response.FailWithMessage("审核失败", c)
		return
	}
	response.OkWithMessage("审核成功", c)
}

func (d *DriverApi) BanDriver(c *gin.Context) {
	var req hxzReq.DriverBanReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	operatorID := utils.GetUserID(c)
	err = driverService.BanDriver(req, operatorID)
	if err != nil {
		global.GVA_LOG.Error("封禁失败!", zap.Error(err))
		response.FailWithMessage("封禁失败", c)
		return
	}
	response.OkWithMessage("封禁成功", c)
}

func (d *DriverApi) UnbanDriver(c *gin.Context) {
	var req hxzReq.DriverUnbanReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	operatorID := utils.GetUserID(c)
	err = driverService.UnbanDriver(req, operatorID)
	if err != nil {
		global.GVA_LOG.Error("解封失败!", zap.Error(err))
		response.FailWithMessage("解封失败", c)
		return
	}
	response.OkWithMessage("解封成功", c)
}

func (d *DriverApi) GetAuditList(c *gin.Context) {
	var info hxzReq.DriverAuditLogSearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := driverService.GetAuditList(info)
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
