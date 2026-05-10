package hxz

import (
	"errors"
	"fmt"
	"time"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type SettlementService struct{}

var SettlementServiceApp = new(SettlementService)

func (s *SettlementService) CreateSettlement(settlement hxz.Settlement) (err error) {
	err = global.GVA_DB.Create(&settlement).Error
	return
}

func (s *SettlementService) GetSettlement(id uint) (settlement hxz.Settlement, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&settlement).Error
	return
}

func (s *SettlementService) GetSettlementList(info request.SettlementSearch) (list []hxz.Settlement, total int64, err error) {
	db := global.GVA_DB.Model(&hxz.Settlement{})
	if info.SettlementNo != "" {
		db = db.Where("settlement_no = ?", info.SettlementNo)
	}
	if info.DriverID != 0 {
		db = db.Where("driver_id = ?", info.DriverID)
	}
	if info.Status != "" {
		db = db.Where("status = ?", info.Status)
	}
	if !info.PeriodStart.IsZero() {
		db = db.Where("period_start >= ?", info.PeriodStart)
	}
	if !info.PeriodEnd.IsZero() {
		db = db.Where("period_end <= ?", info.PeriodEnd)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Order("id desc").Scopes(info.Paginate()).Find(&list).Error
	return
}

func (s *SettlementService) GenerateSettlement(req request.SettlementGenerate) (settlement hxz.Settlement, err error) {
	var count int64
	global.GVA_DB.Model(&hxz.Settlement{}).
		Where("driver_id = ? AND period_start = ? AND period_end = ? AND status != ?", req.DriverID, req.PeriodStart, req.PeriodEnd, "rejected").
		Count(&count)
	if count > 0 {
		return settlement, errors.New("该司机在指定周期已存在结算单")
	}
	var totalAmount float64
	var orderCount int64
	global.GVA_DB.Table("hxz_orders").
		Where("driver_id = ? AND created_at >= ? AND created_at <= ? AND status = ?", req.DriverID, req.PeriodStart, req.PeriodEnd, "completed").
		Count(&orderCount)
	global.GVA_DB.Table("hxz_orders").
		Where("driver_id = ? AND created_at >= ? AND created_at <= ? AND status = ?", req.DriverID, req.PeriodStart, req.PeriodEnd, "completed").
		Select("COALESCE(SUM(actual_amount), 0)").Scan(&totalAmount)
	var commissionConfig hxz.CommissionConfig
	err = global.GVA_DB.Where("city_code = (SELECT city_code FROM hxz_drivers WHERE id = ?) AND is_active = ?", req.DriverID, true).
		First(&commissionConfig).Error
	var platformFee float64
	if err == nil {
		platformFee = totalAmount * commissionConfig.CommissionRate
		if platformFee < commissionConfig.MinFee {
			platformFee = commissionConfig.MinFee
		}
		if commissionConfig.MaxFee > 0 && platformFee > commissionConfig.MaxFee {
			platformFee = commissionConfig.MaxFee
		}
	} else {
		platformFee = totalAmount * 0.1
	}
	actualAmount := totalAmount - platformFee
	settlementNo := fmt.Sprintf("ST%s%d", time.Now().Format("20060102150405"), req.DriverID)
	settlement = hxz.Settlement{
		SettlementNo: settlementNo,
		DriverID:     req.DriverID,
		PeriodStart:  req.PeriodStart,
		PeriodEnd:    req.PeriodEnd,
		TotalAmount:  totalAmount,
		PlatformFee:  platformFee,
		ActualAmount: actualAmount,
		OrderCount:   int(orderCount),
		Status:       "pending",
		Remark:       req.Remark,
	}
	err = global.GVA_DB.Create(&settlement).Error
	return
}

func (s *SettlementService) AuditSettlement(req request.SettlementAudit, auditBy uint) (err error) {
	var settlement hxz.Settlement
	if err = global.GVA_DB.Where("id = ?", req.ID).First(&settlement).Error; err != nil {
		return err
	}
	if settlement.Status != "pending" {
		return errors.New("只有待审核状态的结算单可以审核")
	}
	now := time.Now()
	updates := map[string]interface{}{
		"status":   req.Status,
		"audit_by": auditBy,
		"audit_at": now,
	}
	if req.Remark != "" {
		updates["remark"] = req.Remark
	}
	err = global.GVA_DB.Model(&settlement).Updates(updates).Error
	return
}

func (s *SettlementService) PaySettlement(req request.SettlementPay, payBy uint) (err error) {
	var settlement hxz.Settlement
	if err = global.GVA_DB.Where("id = ?", req.ID).First(&settlement).Error; err != nil {
		return err
	}
	if settlement.Status != "approved" {
		return errors.New("只有审核通过的结算单可以打款")
	}
	now := time.Now()
	updates := map[string]interface{}{
		"status": "paid",
		"pay_by": payBy,
		"pay_at": now,
	}
	if req.Remark != "" {
		updates["remark"] = req.Remark
	}
	err = global.GVA_DB.Model(&settlement).Updates(updates).Error
	return
}

func (s *SettlementService) DeleteSettlement(id uint) (err error) {
	var settlement hxz.Settlement
	if err = global.GVA_DB.Where("id = ?", id).First(&settlement).Error; err != nil {
		return err
	}
	if settlement.Status != "pending" {
		return errors.New("只有待审核状态的结算单可以删除")
	}
	err = global.GVA_DB.Delete(&settlement).Error
	return
}
