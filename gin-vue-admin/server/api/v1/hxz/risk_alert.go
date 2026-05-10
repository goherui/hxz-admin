package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"github.com/flipped-aurora/gin-vue-admin/server/utils"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type RiskAlertApi struct{}

func (api *RiskAlertApi) HandleRiskAlert(c *gin.Context) {
	var req hxzReq.RiskAlertHandleReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	handlerID := utils.GetUserID(c)
	err = riskAlertService.HandleRiskAlert(req, handlerID)
	if err != nil {
		global.GVA_LOG.Error("处理风控预警失败!", zap.Error(err))
		response.FailWithMessage("处理风控预警失败", c)
		return
	}
	response.OkWithMessage("处理风控预警成功", c)
}

func (api *RiskAlertApi) GetRiskAlertByID(c *gin.Context) {
	var req struct {
		ID uint `json:"id" form:"id" binding:"required"`
	}
	err := c.ShouldBindQuery(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := riskAlertService.GetRiskAlertByID(req.ID)
	if err != nil {
		global.GVA_LOG.Error("获取风控预警详情失败!", zap.Error(err))
		response.FailWithMessage("获取风控预警详情失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (api *RiskAlertApi) GetRiskAlertList(c *gin.Context) {
	var info hxzReq.RiskAlertSearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := riskAlertService.GetRiskAlertList(info)
	if err != nil {
		global.GVA_LOG.Error("获取风控预警列表失败!", zap.Error(err))
		response.FailWithMessage("获取风控预警列表失败", c)
		return
	}
	response.OkWithDetailed(response.PageResult{
		List:     list,
		Total:    total,
		Page:     info.Page,
		PageSize: info.PageSize,
	}, "获取成功", c)
}

func (api *RiskAlertApi) GetRiskProfile(c *gin.Context) {
	var req hxzReq.RiskProfileReq
	err := c.ShouldBindQuery(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := riskAlertService.GetRiskProfile(req)
	if err != nil {
		global.GVA_LOG.Error("获取风控画像失败!", zap.Error(err))
		response.FailWithMessage("获取风控画像失败", c)
		return
	}
	response.OkWithData(data, c)
}
