package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type CityApi struct{}

func (api *CityApi) CreateCity(c *gin.Context) {
	var city hxz.City
	err := c.ShouldBindJSON(&city)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = cityService.CreateCity(city)
	if err != nil {
		global.GVA_LOG.Error("创建城市失败!", zap.Error(err))
		response.FailWithMessage("创建城市失败", c)
		return
	}
	response.OkWithMessage("创建城市成功", c)
}

func (api *CityApi) UpdateCity(c *gin.Context) {
	var city hxz.City
	err := c.ShouldBindJSON(&city)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = cityService.UpdateCity(city)
	if err != nil {
		global.GVA_LOG.Error("更新城市失败!", zap.Error(err))
		response.FailWithMessage("更新城市失败", c)
		return
	}
	response.OkWithMessage("更新城市成功", c)
}

func (api *CityApi) DeleteCity(c *gin.Context) {
	var req struct {
		ID uint `json:"id" binding:"required"`
	}
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = cityService.DeleteCity(req.ID)
	if err != nil {
		global.GVA_LOG.Error("删除城市失败!", zap.Error(err))
		response.FailWithMessage("删除城市失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

func (api *CityApi) GetCityByID(c *gin.Context) {
	var req struct {
		ID uint `json:"id" form:"id" binding:"required"`
	}
	err := c.ShouldBindQuery(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := cityService.GetCityByID(req.ID)
	if err != nil {
		global.GVA_LOG.Error("获取城市详情失败!", zap.Error(err))
		response.FailWithMessage("获取城市详情失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (api *CityApi) GetCityList(c *gin.Context) {
	var info hxzReq.CitySearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := cityService.GetCityList(info)
	if err != nil {
		global.GVA_LOG.Error("获取城市列表失败!", zap.Error(err))
		response.FailWithMessage("获取城市列表失败", c)
		return
	}
	response.OkWithDetailed(response.PageResult{
		List:     list,
		Total:    total,
		Page:     info.Page,
		PageSize: info.PageSize,
	}, "获取成功", c)
}

func (api *CityApi) OpenCity(c *gin.Context) {
	var req hxzReq.CityOpenReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = cityService.OpenCity(req)
	if err != nil {
		global.GVA_LOG.Error("开通城市失败!", zap.Error(err))
		response.FailWithMessage("开通城市失败", c)
		return
	}
	response.OkWithMessage("开通城市成功", c)
}

func (api *CityApi) CloseCity(c *gin.Context) {
	var req hxzReq.CityCloseReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = cityService.CloseCity(req)
	if err != nil {
		global.GVA_LOG.Error("关闭城市失败!", zap.Error(err))
		response.FailWithMessage("关闭城市失败", c)
		return
	}
	response.OkWithMessage("关闭城市成功", c)
}
