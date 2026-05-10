package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

type Ticket struct {
	global.GVA_MODEL
	TicketNo       string `json:"ticketNo" form:"ticketNo" gorm:"column:ticket_no;type:varchar(50);uniqueIndex;comment:工单编号"`
	Title          string `json:"title" form:"title" gorm:"column:title;type:varchar(200);comment:工单标题"`
	Type           string `json:"type" form:"type" gorm:"column:type;type:varchar(50);comment:工单类型"`
	Priority       int    `json:"priority" form:"priority" gorm:"column:priority;type:tinyint;default:2;comment:优先级 1低 2中 3高 4紧急"`
	Status         string `json:"status" form:"status" gorm:"column:status;type:varchar(20);default:pending;comment:状态 pending/processing/resolved/closed"`
	ReporterType   string `json:"reporterType" form:"reporterType" gorm:"column:reporter_type;type:varchar(20);comment:报单人类型 passenger/driver/admin"`
	ReporterID     uint   `json:"reporterId" form:"reporterId" gorm:"column:reporter_id;comment:报单人ID"`
	RelatedOrderID uint   `json:"relatedOrderId" form:"relatedOrderId" gorm:"column:related_order_id;comment:关联订单ID"`
	Description    string `json:"description" form:"description" gorm:"column:description;type:text;comment:问题描述"`
	Attachments    string `json:"attachments" form:"attachments" gorm:"column:attachments;type:text;comment:附件JSON"`
	HandlerID      uint   `json:"handlerId" form:"handlerId" gorm:"column:handler_id;comment:处理人ID"`
}

func (Ticket) TableName() string {
	return "tickets"
}
