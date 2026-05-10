package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"github.com/flipped-aurora/gin-vue-admin/server/utils"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type DispatchRuleApi struct{}

func (api *DispatchRuleApi) CreateDispatchRule(c *gin.Context) {
	var rule hxz.DispatchRule
	err := c.ShouldBindJSON(&rule)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = dispatchRuleService.CreateDispatchRule(rule)
	if err != nil {
		global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
	response.OkWithMessage("创建成功", c)
}

func (api *DispatchRuleApi) DeleteDispatchRule(c *gin.Context) {
	var rule hxz.DispatchRule
	err := c.ShouldBindJSON(&rule)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = dispatchRuleService.DeleteDispatchRule(rule.ID)
	if err != nil {
		global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

func (api *DispatchRuleApi) UpdateDispatchRule(c *gin.Context) {
	var rule hxz.DispatchRule
	err := c.ShouldBindJSON(&rule)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = dispatchRuleService.UpdateDispatchRule(&rule)
	if err != nil {
		global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

func (api *DispatchRuleApi) FindDispatchRule(c *gin.Context) {
	var rule hxz.DispatchRule
	err := c.ShouldBindQuery(&rule)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := dispatchRuleService.GetDispatchRule(rule.ID)
	if err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (api *DispatchRuleApi) GetDispatchRuleList(c *gin.Context) {
	var info request.DispatchRuleSearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := dispatchRuleService.GetDispatchRuleList(info)
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

func (api *DispatchRuleApi) RollbackDispatchRule(c *gin.Context) {
	var rollbackReq request.DispatchRuleRollback
	err := c.ShouldBindJSON(&rollbackReq)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	operatorID := utils.GetUserID(c)
	err = dispatchRuleService.RollbackDispatchRule(rollbackReq, operatorID)
	if err != nil {
		global.GVA_LOG.Error("回滚失败!", zap.Error(err))
		response.FailWithMessage("回滚失败", c)
		return
	}
	response.OkWithMessage("回滚成功", c)
}

func (api *DispatchRuleApi) DeleteDispatchRuleByIds(c *gin.Context) {
	var req struct {
		IDs []uint `json:"ids" binding:"required"`
	}
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = dispatchRuleService.DeleteDispatchRuleByIds(req.IDs)
	if err != nil {
		global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
		return
	}
	response.OkWithMessage("批量删除成功", c)
}

func (api *DispatchRuleApi) GetDispatchMonitorData(c *gin.Context) {
	cityCode := c.Query("cityCode")
	data, err := dispatchRuleService.GetDispatchMonitorData(cityCode)
	if err != nil {
		global.GVA_LOG.Error("获取监控数据失败!", zap.Error(err))
		response.FailWithMessage("获取监控数据失败", c)
		return
	}
	response.OkWithData(data, c)
}
