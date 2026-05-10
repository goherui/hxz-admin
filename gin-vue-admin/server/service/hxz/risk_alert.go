package hxz

import (
	"time"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type RiskAlertService struct{}

var RiskAlertServiceApp = new(RiskAlertService)

func (s *RiskAlertService) CreateRiskAlert(alert hxz.RiskAlert) (err error) {
	err = global.GVA_DB.Create(&alert).Error
	return
}

func (s *RiskAlertService) HandleRiskAlert(req hxzReq.RiskAlertHandleReq, handlerID uint) (err error) {
	now := time.Now()
	err = global.GVA_DB.Model(&hxz.RiskAlert{}).Where("id = ? AND status = 0", req.ID).Updates(map[string]interface{}{
		"status":        req.Status,
		"handler_id":    handlerID,
		"handle_result": req.HandleResult,
		"handle_at":     &now,
	}).Error
	return
}

func (s *RiskAlertService) GetRiskAlertByID(id uint) (alert hxz.RiskAlert, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&alert).Error
	return
}

func (s *RiskAlertService) GetRiskAlertList(info hxzReq.RiskAlertSearch) (list interface{}, total int64, err error) {
	db := global.GVA_DB.Model(&hxz.RiskAlert{})
	if info.RuleID != 0 {
		db = db.Where("rule_id = ?", info.RuleID)
	}
	if info.TargetType != "" {
		db = db.Where("target_type = ?", info.TargetType)
	}
	if info.TargetID != 0 {
		db = db.Where("target_id = ?", info.TargetID)
	}
	if info.RiskLevel != nil {
		db = db.Where("risk_level = ?", *info.RiskLevel)
	}
	if info.Status != nil {
		db = db.Where("status = ?", *info.Status)
	}
	if !info.StartTime.IsZero() {
		db = db.Where("created_at >= ?", info.StartTime)
	}
	if !info.EndTime.IsZero() {
		db = db.Where("created_at <= ?", info.EndTime)
	}
	var alertList []hxz.RiskAlert
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Order("id desc").Scopes(info.Paginate()).Find(&alertList).Error
	return alertList, total, err
}

func (s *RiskAlertService) GetRiskProfile(req hxzReq.RiskProfileReq) (profile map[string]interface{}, err error) {
	profile = make(map[string]interface{})
	var alertCount int64
	global.GVA_DB.Model(&hxz.RiskAlert{}).Where("target_type = ? AND target_id = ?", req.TargetType, req.TargetID).Count(&alertCount)
	profile["alert_count"] = alertCount

	var highAlertCount int64
	global.GVA_DB.Model(&hxz.RiskAlert{}).Where("target_type = ? AND target_id = ? AND risk_level = 3", req.TargetType, req.TargetID).Count(&highAlertCount)
	profile["high_alert_count"] = highAlertCount

	var pendingCount int64
	global.GVA_DB.Model(&hxz.RiskAlert{}).Where("target_type = ? AND target_id = ? AND status = 0", req.TargetType, req.TargetID).Count(&pendingCount)
	profile["pending_count"] = pendingCount

	isBlacklisted := BlacklistServiceApp.IsInBlacklist(req.TargetType, req.TargetID)
	profile["is_blacklisted"] = isBlacklisted

	var recentAlerts []hxz.RiskAlert
	global.GVA_DB.Where("target_type = ? AND target_id = ?", req.TargetType, req.TargetID).Order("id desc").Limit(10).Find(&recentAlerts)
	profile["recent_alerts"] = recentAlerts

	return
}
