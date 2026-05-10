package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

type TicketLog struct {
	global.GVA_MODEL
	TicketID   uint   `json:"ticketId" form:"ticketId" gorm:"column:ticket_id;index;comment:工单ID"`
	Action     string `json:"action" form:"action" gorm:"column:action;type:varchar(50);comment:操作类型 create/accept/reply/transfer/resolve/close"`
	Content    string `json:"content" form:"content" gorm:"column:content;type:text;comment:操作内容"`
	OperatorID uint   `json:"operatorId" form:"operatorId" gorm:"column:operator_id;comment:操作人ID"`
}

func (TicketLog) TableName() string {
	return "ticket_logs"
}
