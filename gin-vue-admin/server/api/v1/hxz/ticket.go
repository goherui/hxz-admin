package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"github.com/flipped-aurora/gin-vue-admin/server/utils"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type TicketApi struct{}

func (api *TicketApi) DeleteTicket(c *gin.Context) {
	var ticket hxz.Ticket
	err := c.ShouldBindJSON(&ticket)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = ticketService.DeleteTicket(ticket.ID)
	if err != nil {
		global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

func (api *TicketApi) UpdateTicket(c *gin.Context) {
	var ticket hxz.Ticket
	err := c.ShouldBindJSON(&ticket)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = ticketService.UpdateTicket(&ticket)
	if err != nil {
		global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

func (api *TicketApi) GetTicketStats(c *gin.Context) {
	data, err := ticketService.GetTicketStats()
	if err != nil {
		global.GVA_LOG.Error("获取工单统计失败!", zap.Error(err))
		response.FailWithMessage("获取工单统计失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (api *TicketApi) CreateTicket(c *gin.Context) {
	var req hxzReq.TicketCreateReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	operatorID := utils.GetUserID(c)
	data, err := ticketService.CreateTicket(req, operatorID)
	if err != nil {
		global.GVA_LOG.Error("创建工单失败!", zap.Error(err))
		response.FailWithMessage("创建工单失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (api *TicketApi) AcceptTicket(c *gin.Context) {
	var req hxzReq.TicketAcceptReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	handlerID := utils.GetUserID(c)
	err = ticketService.AcceptTicket(req, handlerID)
	if err != nil {
		global.GVA_LOG.Error("接单失败!", zap.Error(err))
		response.FailWithMessage("接单失败", c)
		return
	}
	response.OkWithMessage("接单成功", c)
}

func (api *TicketApi) ReplyTicket(c *gin.Context) {
	var req hxzReq.TicketReplyReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	operatorID := utils.GetUserID(c)
	err = ticketService.ReplyTicket(req, operatorID)
	if err != nil {
		global.GVA_LOG.Error("回复工单失败!", zap.Error(err))
		response.FailWithMessage("回复工单失败", c)
		return
	}
	response.OkWithMessage("回复成功", c)
}

func (api *TicketApi) TransferTicket(c *gin.Context) {
	var req hxzReq.TicketTransferReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	operatorID := utils.GetUserID(c)
	err = ticketService.TransferTicket(req, operatorID)
	if err != nil {
		global.GVA_LOG.Error("转派工单失败!", zap.Error(err))
		response.FailWithMessage("转派工单失败", c)
		return
	}
	response.OkWithMessage("转派成功", c)
}

func (api *TicketApi) ResolveTicket(c *gin.Context) {
	var req hxzReq.TicketResolveReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	operatorID := utils.GetUserID(c)
	err = ticketService.ResolveTicket(req, operatorID)
	if err != nil {
		global.GVA_LOG.Error("完结工单失败!", zap.Error(err))
		response.FailWithMessage("完结工单失败", c)
		return
	}
	response.OkWithMessage("完结成功", c)
}

func (api *TicketApi) CloseTicket(c *gin.Context) {
	var req hxzReq.TicketCloseReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	operatorID := utils.GetUserID(c)
	err = ticketService.CloseTicket(req, operatorID)
	if err != nil {
		global.GVA_LOG.Error("关闭工单失败!", zap.Error(err))
		response.FailWithMessage("关闭工单失败", c)
		return
	}
	response.OkWithMessage("关闭成功", c)
}

func (api *TicketApi) GetTicketByID(c *gin.Context) {
	var req struct {
		ID uint `json:"id" form:"id" binding:"required"`
	}
	err := c.ShouldBindQuery(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := ticketService.GetTicketByID(req.ID)
	if err != nil {
		global.GVA_LOG.Error("获取工单详情失败!", zap.Error(err))
		response.FailWithMessage("获取工单详情失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (api *TicketApi) GetTicketList(c *gin.Context) {
	var info hxzReq.TicketSearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := ticketService.GetTicketList(info)
	if err != nil {
		global.GVA_LOG.Error("获取工单列表失败!", zap.Error(err))
		response.FailWithMessage("获取工单列表失败", c)
		return
	}
	response.OkWithDetailed(response.PageResult{
		List:     list,
		Total:    total,
		Page:     info.Page,
		PageSize: info.PageSize,
	}, "获取成功", c)
}
