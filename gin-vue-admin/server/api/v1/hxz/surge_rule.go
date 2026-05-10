package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type SurgeRuleApi struct{}

func (api *SurgeRuleApi) CreateSurgeRule(c *gin.Context) {
	var req hxzReq.SurgeRuleCreateReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = surgeRuleService.CreateSurgeRule(req)
	if err != nil {
		global.GVA_LOG.Error("创建加价规则失败!", zap.Error(err))
		response.FailWithMessage("创建加价规则失败", c)
		return
	}
	response.OkWithMessage("创建加价规则成功", c)
}

func (api *SurgeRuleApi) UpdateSurgeRule(c *gin.Context) {
	var rule hxz.SurgeRule
	err := c.ShouldBindJSON(&rule)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = surgeRuleService.UpdateSurgeRule(rule)
	if err != nil {
		global.GVA_LOG.Error("更新加价规则失败!", zap.Error(err))
		response.FailWithMessage("更新加价规则失败", c)
		return
	}
	response.OkWithMessage("更新加价规则成功", c)
}

func (api *SurgeRuleApi) DeleteSurgeRule(c *gin.Context) {
	var req struct {
		ID uint `json:"id" binding:"required"`
	}
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = surgeRuleService.DeleteSurgeRule(req.ID)
	if err != nil {
		global.GVA_LOG.Error("删除加价规则失败!", zap.Error(err))
		response.FailWithMessage("删除加价规则失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

func (api *SurgeRuleApi) GetSurgeRuleByID(c *gin.Context) {
	var req struct {
		ID uint `json:"id" form:"id" binding:"required"`
	}
	err := c.ShouldBindQuery(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := surgeRuleService.GetSurgeRuleByID(req.ID)
	if err != nil {
		global.GVA_LOG.Error("获取加价规则详情失败!", zap.Error(err))
		response.FailWithMessage("获取加价规则详情失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (api *SurgeRuleApi) GetSurgeRuleList(c *gin.Context) {
	var info hxzReq.SurgeRuleSearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := surgeRuleService.GetSurgeRuleList(info)
	if err != nil {
		global.GVA_LOG.Error("获取加价规则列表失败!", zap.Error(err))
		response.FailWithMessage("获取加价规则列表失败", c)
		return
	}
	response.OkWithDetailed(response.PageResult{
		List:     list,
		Total:    total,
		Page:     info.Page,
		PageSize: info.PageSize,
	}, "获取成功", c)
}
