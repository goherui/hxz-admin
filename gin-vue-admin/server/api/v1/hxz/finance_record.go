package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type FinanceRecordApi struct{}

func (api *FinanceRecordApi) CreateFinanceRecord(c *gin.Context) {
	var record hxz.FinanceRecord
	err := c.ShouldBindJSON(&record)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = financeRecordService.CreateFinanceRecord(record)
	if err != nil {
		global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
	response.OkWithMessage("创建成功", c)
}

func (api *FinanceRecordApi) DeleteFinanceRecord(c *gin.Context) {
	var record hxz.FinanceRecord
	err := c.ShouldBindJSON(&record)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = financeRecordService.DeleteFinanceRecord(record.ID)
	if err != nil {
		global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

func (api *FinanceRecordApi) UpdateFinanceRecord(c *gin.Context) {
	var record hxz.FinanceRecord
	err := c.ShouldBindJSON(&record)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = financeRecordService.UpdateFinanceRecord(&record)
	if err != nil {
		global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

func (api *FinanceRecordApi) FindFinanceRecord(c *gin.Context) {
	var record hxz.FinanceRecord
	err := c.ShouldBindQuery(&record)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := financeRecordService.GetFinanceRecord(record.ID)
	if err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (api *FinanceRecordApi) GetFinanceRecordList(c *gin.Context) {
	var info request.FinanceRecordSearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := financeRecordService.GetFinanceRecordList(info)
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
