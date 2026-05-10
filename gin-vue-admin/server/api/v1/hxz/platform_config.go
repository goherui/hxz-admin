package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type PlatformConfigApi struct{}

func (api *PlatformConfigApi) CreatePlatformConfig(c *gin.Context) {
	var config hxz.PlatformConfig
	err := c.ShouldBindJSON(&config)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = platformConfigService.CreatePlatformConfig(config)
	if err != nil {
		global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
	response.OkWithMessage("创建成功", c)
}

func (api *PlatformConfigApi) UpdatePlatformConfig(c *gin.Context) {
	var config hxz.PlatformConfig
	err := c.ShouldBindJSON(&config)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = platformConfigService.UpdatePlatformConfig(&config)
	if err != nil {
		global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

func (api *PlatformConfigApi) UpsertPlatformConfig(c *gin.Context) {
	var req hxzReq.PlatformConfigUpsertReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := platformConfigService.UpsertPlatformConfig(req)
	if err != nil {
		global.GVA_LOG.Error("保存平台配置失败!", zap.Error(err))
		response.FailWithMessage("保存平台配置失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (api *PlatformConfigApi) GetPlatformConfigByID(c *gin.Context) {
	var req struct {
		ID uint `json:"id" form:"id" binding:"required"`
	}
	err := c.ShouldBindQuery(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := platformConfigService.GetPlatformConfigByID(req.ID)
	if err != nil {
		global.GVA_LOG.Error("获取平台配置详情失败!", zap.Error(err))
		response.FailWithMessage("获取平台配置详情失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (api *PlatformConfigApi) GetPlatformConfigList(c *gin.Context) {
	var info hxzReq.PlatformConfigSearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := platformConfigService.GetPlatformConfigList(info)
	if err != nil {
		global.GVA_LOG.Error("获取平台配置列表失败!", zap.Error(err))
		response.FailWithMessage("获取平台配置列表失败", c)
		return
	}
	response.OkWithDetailed(response.PageResult{
		List:     list,
		Total:    total,
		Page:     info.Page,
		PageSize: info.PageSize,
	}, "获取成功", c)
}

func (api *PlatformConfigApi) DeletePlatformConfig(c *gin.Context) {
	var req struct {
		ID uint `json:"id" binding:"required"`
	}
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = platformConfigService.DeletePlatformConfig(req.ID)
	if err != nil {
		global.GVA_LOG.Error("删除平台配置失败!", zap.Error(err))
		response.FailWithMessage("删除平台配置失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

func (api *PlatformConfigApi) GetConfigValue(c *gin.Context) {
	var req struct {
		ConfigKey string `json:"configKey" form:"configKey" binding:"required"`
		CityCode  string `json:"cityCode" form:"cityCode"`
	}
	err := c.ShouldBindQuery(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := platformConfigService.GetConfigValue(req.ConfigKey, req.CityCode)
	if err != nil {
		global.GVA_LOG.Error("获取配置值失败!", zap.Error(err))
		response.FailWithMessage("获取配置值失败", c)
		return
	}
	response.OkWithData(data, c)
}
