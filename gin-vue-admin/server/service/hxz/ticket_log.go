package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type TicketLogService struct{}

var TicketLogServiceApp = new(TicketLogService)

func (s *TicketLogService) GetTicketLogList(info hxzReq.TicketLogSearch) (list interface{}, total int64, err error) {
	db := global.GVA_DB.Model(&hxz.TicketLog{})
	if info.TicketID != 0 {
		db = db.Where("ticket_id = ?", info.TicketID)
	}
	if info.Action != "" {
		db = db.Where("action = ?", info.Action)
	}
	var logList []hxz.TicketLog
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Order("id desc").Scopes(info.Paginate()).Find(&logList).Error
	return logList, total, err
}

func (s *TicketLogService) GetTicketLogsByTicketID(ticketID uint) (list []hxz.TicketLog, err error) {
	err = global.GVA_DB.Where("ticket_id = ?", ticketID).Order("id asc").Find(&list).Error
	return
}
