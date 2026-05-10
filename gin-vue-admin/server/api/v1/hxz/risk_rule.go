package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type RiskRuleApi struct{}

func (api *RiskRuleApi) CreateRiskRule(c *gin.Context) {
	var rule hxz.RiskRule
	err := c.ShouldBindJSON(&rule)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = riskRuleService.CreateRiskRule(rule)
	if err != nil {
		global.GVA_LOG.Error("创建风控规则失败!", zap.Error(err))
		response.FailWithMessage("创建风控规则失败", c)
		return
	}
	response.OkWithMessage("创建风控规则成功", c)
}

func (api *RiskRuleApi) UpdateRiskRule(c *gin.Context) {
	var rule hxz.RiskRule
	err := c.ShouldBindJSON(&rule)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = riskRuleService.UpdateRiskRule(rule)
	if err != nil {
		global.GVA_LOG.Error("更新风控规则失败!", zap.Error(err))
		response.FailWithMessage("更新风控规则失败", c)
		return
	}
	response.OkWithMessage("更新风控规则成功", c)
}

func (api *RiskRuleApi) DeleteRiskRule(c *gin.Context) {
	var req struct {
		ID uint `json:"id" binding:"required"`
	}
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = riskRuleService.DeleteRiskRule(req.ID)
	if err != nil {
		global.GVA_LOG.Error("删除风控规则失败!", zap.Error(err))
		response.FailWithMessage("删除风控规则失败", c)
		return
	}
	response.OkWithMessage("删除风控规则成功", c)
}

func (api *RiskRuleApi) GetRiskRuleByID(c *gin.Context) {
	var req struct {
		ID uint `json:"id" form:"id" binding:"required"`
	}
	err := c.ShouldBindQuery(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := riskRuleService.GetRiskRuleByID(req.ID)
	if err != nil {
		global.GVA_LOG.Error("获取风控规则详情失败!", zap.Error(err))
		response.FailWithMessage("获取风控规则详情失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (api *RiskRuleApi) GetRiskRuleList(c *gin.Context) {
	var info hxzReq.RiskRuleSearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := riskRuleService.GetRiskRuleList(info)
	if err != nil {
		global.GVA_LOG.Error("获取风控规则列表失败!", zap.Error(err))
		response.FailWithMessage("获取风控规则列表失败", c)
		return
	}
	response.OkWithDetailed(response.PageResult{
		List:     list,
		Total:    total,
		Page:     info.Page,
		PageSize: info.PageSize,
	}, "获取成功", c)
}

func (api *RiskRuleApi) ToggleRiskRule(c *gin.Context) {
	var req struct {
		ID       uint `json:"id" binding:"required"`
		IsActive int  `json:"isActive" binding:"required"`
	}
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = riskRuleService.ToggleRiskRule(req.ID, req.IsActive)
	if err != nil {
		global.GVA_LOG.Error("切换风控规则状态失败!", zap.Error(err))
		response.FailWithMessage("切换风控规则状态失败", c)
		return
	}
	response.OkWithMessage("操作成功", c)
}
