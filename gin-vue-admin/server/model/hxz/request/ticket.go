package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"time"
)

type TicketSearch struct {
	request.PageInfo
	TicketNo       string `json:"ticketNo" form:"ticketNo"`
	Type           string `json:"type" form:"type"`
	Priority       *int   `json:"priority" form:"priority"`
	Status         string `json:"status" form:"status"`
	ReporterType   string `json:"reporterType" form:"reporterType"`
	ReporterID     uint   `json:"reporterId" form:"reporterId"`
	RelatedOrderID uint   `json:"relatedOrderId" form:"relatedOrderId"`
	HandlerID      uint   `json:"handlerId" form:"handlerId"`
	StartTime      time.Time `json:"startTime" form:"startTime"`
	EndTime        time.Time `json:"endTime" form:"endTime"`
}

type TicketCreateReq struct {
	Title          string `json:"title" binding:"required"`
	Type           string `json:"type" binding:"required"`
	Priority       int    `json:"priority"`
	ReporterType   string `json:"reporterType" binding:"required"`
	ReporterID     uint   `json:"reporterId" binding:"required"`
	RelatedOrderID uint   `json:"relatedOrderId"`
	Description    string `json:"description" binding:"required"`
	Attachments    string `json:"attachments"`
}

type TicketAcceptReq struct {
	ID uint `json:"id" binding:"required"`
}

type TicketReplyReq struct {
	ID      uint   `json:"id" binding:"required"`
	Content string `json:"content" binding:"required"`
}

type TicketTransferReq struct {
	ID          uint `json:"id" binding:"required"`
	NewHandlerID uint `json:"newHandlerId" binding:"required"`
	Content     string `json:"content"`
}

type TicketResolveReq struct {
	ID      uint   `json:"id" binding:"required"`
	Content string `json:"content" binding:"required"`
}

type TicketCloseReq struct {
	ID      uint   `json:"id" binding:"required"`
	Content string `json:"content"`
}

type TicketLogSearch struct {
	request.PageInfo
	TicketID uint `json:"ticketId" form:"ticketId" binding:"required"`
	Action   string `json:"action" form:"action"`
}
