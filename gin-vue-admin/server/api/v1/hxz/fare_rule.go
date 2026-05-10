package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type FareRuleApi struct{}

func (api *FareRuleApi) CreateFareRule(c *gin.Context) {
	var req hxzReq.FareRuleCreateReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = fareRuleService.CreateFareRule(req)
	if err != nil {
		global.GVA_LOG.Error("创建费率规则失败!", zap.Error(err))
		response.FailWithMessage("创建费率规则失败", c)
		return
	}
	response.OkWithMessage("创建费率规则成功", c)
}

func (api *FareRuleApi) UpdateFareRule(c *gin.Context) {
	var rule hxz.FareRule
	err := c.ShouldBindJSON(&rule)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = fareRuleService.UpdateFareRule(rule)
	if err != nil {
		global.GVA_LOG.Error("更新费率规则失败!", zap.Error(err))
		response.FailWithMessage("更新费率规则失败", c)
		return
	}
	response.OkWithMessage("更新费率规则成功", c)
}

func (api *FareRuleApi) DeleteFareRule(c *gin.Context) {
	var req struct {
		ID uint `json:"id" binding:"required"`
	}
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = fareRuleService.DeleteFareRule(req.ID)
	if err != nil {
		global.GVA_LOG.Error("删除费率规则失败!", zap.Error(err))
		response.FailWithMessage("删除费率规则失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

func (api *FareRuleApi) GetFareRuleByID(c *gin.Context) {
	var req struct {
		ID uint `json:"id" form:"id" binding:"required"`
	}
	err := c.ShouldBindQuery(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := fareRuleService.GetFareRuleByID(req.ID)
	if err != nil {
		global.GVA_LOG.Error("获取费率规则详情失败!", zap.Error(err))
		response.FailWithMessage("获取费率规则详情失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (api *FareRuleApi) GetFareRuleList(c *gin.Context) {
	var info hxzReq.FareRuleSearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := fareRuleService.GetFareRuleList(info)
	if err != nil {
		global.GVA_LOG.Error("获取费率规则列表失败!", zap.Error(err))
		response.FailWithMessage("获取费率规则列表失败", c)
		return
	}
	response.OkWithDetailed(response.PageResult{
		List:     list,
		Total:    total,
		Page:     info.Page,
		PageSize: info.PageSize,
	}, "获取成功", c)
}
