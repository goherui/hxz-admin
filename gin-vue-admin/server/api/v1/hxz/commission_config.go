package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type CommissionConfigApi struct{}

func (api *CommissionConfigApi) CreateCommissionConfig(c *gin.Context) {
	var config hxz.CommissionConfig
	err := c.ShouldBindJSON(&config)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = commissionConfigService.CreateCommissionConfig(config)
	if err != nil {
		global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
	response.OkWithMessage("创建成功", c)
}

func (api *CommissionConfigApi) DeleteCommissionConfig(c *gin.Context) {
	var config hxz.CommissionConfig
	err := c.ShouldBindJSON(&config)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = commissionConfigService.DeleteCommissionConfig(config.ID)
	if err != nil {
		global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

func (api *CommissionConfigApi) UpdateCommissionConfig(c *gin.Context) {
	var config hxz.CommissionConfig
	err := c.ShouldBindJSON(&config)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = commissionConfigService.UpdateCommissionConfig(&config)
	if err != nil {
		global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

func (api *CommissionConfigApi) FindCommissionConfig(c *gin.Context) {
	var config hxz.CommissionConfig
	err := c.ShouldBindQuery(&config)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := commissionConfigService.GetCommissionConfig(config.ID)
	if err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (api *CommissionConfigApi) GetCommissionConfigList(c *gin.Context) {
	var info request.CommissionConfigSearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := commissionConfigService.GetCommissionConfigList(info)
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
