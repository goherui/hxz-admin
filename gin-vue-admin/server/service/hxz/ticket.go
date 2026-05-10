package hxz

import (
	"fmt"
	"time"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type TicketService struct{}

var TicketServiceApp = new(TicketService)

func (s *TicketService) DeleteTicket(id uint) (err error) {
	err = global.GVA_DB.Delete(&hxz.Ticket{}, id).Error
	return
}

func (s *TicketService) UpdateTicket(ticket *hxz.Ticket) (err error) {
	err = global.GVA_DB.Save(ticket).Error
	return
}

func (s *TicketService) GetTicketStats() (data map[string]interface{}, err error) {
	data = make(map[string]interface{})
	var pendingCount int64
	global.GVA_DB.Model(&hxz.Ticket{}).Where("status = 'pending'").Count(&pendingCount)
	data["pending_count"] = pendingCount
	var processingCount int64
	global.GVA_DB.Model(&hxz.Ticket{}).Where("status = 'processing'").Count(&processingCount)
	data["processing_count"] = processingCount
	var resolvedCount int64
	global.GVA_DB.Model(&hxz.Ticket{}).Where("status = 'resolved'").Count(&resolvedCount)
	data["resolved_count"] = resolvedCount
	var closedCount int64
	global.GVA_DB.Model(&hxz.Ticket{}).Where("status = 'closed'").Count(&closedCount)
	data["closed_count"] = closedCount
	return data, nil
}

func (s *TicketService) CreateTicket(req hxzReq.TicketCreateReq, operatorID uint) (ticket hxz.Ticket, err error) {
	now := time.Now()
	dateStr := now.Format("20060102")
	var count int64
	global.GVA_DB.Model(&hxz.Ticket{}).Where("ticket_no LIKE ?", "TK"+dateStr+"%").Count(&count)
	ticketNo := fmt.Sprintf("TK%s%04d", dateStr, count+1)

	ticket = hxz.Ticket{
		TicketNo:       ticketNo,
		Title:          req.Title,
		Type:           req.Type,
		Priority:       req.Priority,
		Status:         "pending",
		ReporterType:   req.ReporterType,
		ReporterID:     req.ReporterID,
		RelatedOrderID: req.RelatedOrderID,
		Description:    req.Description,
		Attachments:    req.Attachments,
	}
	err = global.GVA_DB.Create(&ticket).Error
	if err != nil {
		return
	}
	s.writeLog(ticket.ID, "create", req.Description, operatorID)
	return
}

func (s *TicketService) AcceptTicket(req hxzReq.TicketAcceptReq, handlerID uint) (err error) {
	err = global.GVA_DB.Model(&hxz.Ticket{}).Where("id = ? AND status = 'pending'", req.ID).Updates(map[string]interface{}{
		"status":     "processing",
		"handler_id": handlerID,
	}).Error
	if err != nil {
		return
	}
	s.writeLog(req.ID, "accept", "接单处理", handlerID)
	return
}

func (s *TicketService) ReplyTicket(req hxzReq.TicketReplyReq, operatorID uint) (err error) {
	var ticket hxz.Ticket
	err = global.GVA_DB.Where("id = ? AND status IN ('processing','pending')", req.ID).First(&ticket).Error
	if err != nil {
		return
	}
	s.writeLog(req.ID, "reply", req.Content, operatorID)
	return
}

func (s *TicketService) TransferTicket(req hxzReq.TicketTransferReq, operatorID uint) (err error) {
	err = global.GVA_DB.Model(&hxz.Ticket{}).Where("id = ? AND status = 'processing'", req.ID).Update("handler_id", req.NewHandlerID).Error
	if err != nil {
		return
	}
	content := req.Content
	if content == "" {
		content = "转派工单"
	}
	s.writeLog(req.ID, "transfer", content, operatorID)
	return
}

func (s *TicketService) ResolveTicket(req hxzReq.TicketResolveReq, operatorID uint) (err error) {
	err = global.GVA_DB.Model(&hxz.Ticket{}).Where("id = ? AND status = 'processing'", req.ID).Update("status", "resolved").Error
	if err != nil {
		return
	}
	s.writeLog(req.ID, "resolve", req.Content, operatorID)
	return
}

func (s *TicketService) CloseTicket(req hxzReq.TicketCloseReq, operatorID uint) (err error) {
	err = global.GVA_DB.Model(&hxz.Ticket{}).Where("id = ? AND status IN ('resolved','pending','processing')", req.ID).Update("status", "closed").Error
	if err != nil {
		return
	}
	content := req.Content
	if content == "" {
		content = "关闭工单"
	}
	s.writeLog(req.ID, "close", content, operatorID)
	return
}

func (s *TicketService) GetTicketByID(id uint) (ticket hxz.Ticket, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&ticket).Error
	return
}

func (s *TicketService) GetTicketList(info hxzReq.TicketSearch) (list interface{}, total int64, err error) {
	db := global.GVA_DB.Model(&hxz.Ticket{})
	if info.TicketNo != "" {
		db = db.Where("ticket_no = ?", info.TicketNo)
	}
	if info.Type != "" {
		db = db.Where("type = ?", info.Type)
	}
	if info.Priority != nil {
		db = db.Where("priority = ?", *info.Priority)
	}
	if info.Status != "" {
		db = db.Where("status = ?", info.Status)
	}
	if info.ReporterType != "" {
		db = db.Where("reporter_type = ?", info.ReporterType)
	}
	if info.ReporterID != 0 {
		db = db.Where("reporter_id = ?", info.ReporterID)
	}
	if info.RelatedOrderID != 0 {
		db = db.Where("related_order_id = ?", info.RelatedOrderID)
	}
	if info.HandlerID != 0 {
		db = db.Where("handler_id = ?", info.HandlerID)
	}
	if !info.StartTime.IsZero() {
		db = db.Where("created_at >= ?", info.StartTime)
	}
	if !info.EndTime.IsZero() {
		db = db.Where("created_at <= ?", info.EndTime)
	}
	var ticketList []hxz.Ticket
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Order("id desc").Scopes(info.Paginate()).Find(&ticketList).Error
	return ticketList, total, err
}

func (s *TicketService) writeLog(ticketID uint, action string, content string, operatorID uint) {
	log := hxz.TicketLog{
		TicketID:   ticketID,
		Action:     action,
		Content:    content,
		OperatorID: operatorID,
	}
	global.GVA_DB.Create(&log)
}
