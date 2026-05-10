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

type ReconciliationRecordApi struct{}

func (api *ReconciliationRecordApi) CreateReconciliationRecord(c *gin.Context) {
	var record hxz.ReconciliationRecord
	err := c.ShouldBindJSON(&record)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = reconciliationRecordService.CreateReconciliationRecord(record)
	if err != nil {
		global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
	response.OkWithMessage("创建成功", c)
}

func (api *ReconciliationRecordApi) FindReconciliationRecord(c *gin.Context) {
	var record hxz.ReconciliationRecord
	err := c.ShouldBindQuery(&record)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := reconciliationRecordService.GetReconciliationRecord(record.ID)
	if err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (api *ReconciliationRecordApi) GetReconciliationRecordList(c *gin.Context) {
	var info request.ReconciliationRecordSearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := reconciliationRecordService.GetReconciliationRecordList(info)
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

func (api *ReconciliationRecordApi) ExecuteReconciliation(c *gin.Context) {
	var req request.ReconciliationExecute
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	operatorID := utils.GetUserID(c)
	data, err := reconciliationRecordService.ExecuteReconciliation(req, operatorID)
	if err != nil {
		global.GVA_LOG.Error("对账执行失败!", zap.Error(err))
		response.FailWithMessage("对账执行失败: "+err.Error(), c)
		return
	}
	response.OkWithDetailed(data, "对账执行成功", c)
}
