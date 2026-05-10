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

type DispatchManualLogApi struct{}

func (api *DispatchManualLogApi) CreateDispatchManualLog(c *gin.Context) {
	var log hxz.DispatchManualLog
	err := c.ShouldBindJSON(&log)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	log.OperatorID = utils.GetUserID(c)
	err = dispatchManualLogService.CreateDispatchManualLog(log)
	if err != nil {
		global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
	response.OkWithMessage("创建成功", c)
}

func (api *DispatchManualLogApi) FindDispatchManualLog(c *gin.Context) {
	var log hxz.DispatchManualLog
	err := c.ShouldBindQuery(&log)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := dispatchManualLogService.GetDispatchManualLog(log.ID)
	if err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (api *DispatchManualLogApi) GetDispatchManualLogList(c *gin.Context) {
	var info request.DispatchManualLogSearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := dispatchManualLogService.GetDispatchManualLogList(info)
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
