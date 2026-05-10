package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type TicketLogApi struct{}

func (api *TicketLogApi) GetTicketLogList(c *gin.Context) {
	var info hxzReq.TicketLogSearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := ticketLogService.GetTicketLogList(info)
	if err != nil {
		global.GVA_LOG.Error("获取工单日志列表失败!", zap.Error(err))
		response.FailWithMessage("获取工单日志列表失败", c)
		return
	}
	response.OkWithDetailed(response.PageResult{
		List:     list,
		Total:    total,
		Page:     info.Page,
		PageSize: info.PageSize,
	}, "获取成功", c)
}
