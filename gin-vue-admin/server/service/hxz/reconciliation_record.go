package hxz

import (
	"fmt"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type ReconciliationRecordService struct{}

var ReconciliationRecordServiceApp = new(ReconciliationRecordService)

func (s *ReconciliationRecordService) CreateReconciliationRecord(record hxz.ReconciliationRecord) (err error) {
	err = global.GVA_DB.Create(&record).Error
	return
}

func (s *ReconciliationRecordService) GetReconciliationRecord(id uint) (record hxz.ReconciliationRecord, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&record).Error
	return
}

func (s *ReconciliationRecordService) GetReconciliationRecordList(info request.ReconciliationRecordSearch) (list []hxz.ReconciliationRecord, total int64, err error) {
	db := global.GVA_DB.Model(&hxz.ReconciliationRecord{})
	if info.Status != "" {
		db = db.Where("status = ?", info.Status)
	}
	if !info.StartDate.IsZero() {
		db = db.Where("reconcile_date >= ?", info.StartDate)
	}
	if !info.EndDate.IsZero() {
		db = db.Where("reconcile_date <= ?", info.EndDate)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Order("id desc").Scopes(info.Paginate()).Find(&list).Error
	return
}

func (s *ReconciliationRecordService) ExecuteReconciliation(req request.ReconciliationExecute, operatorID uint) (record hxz.ReconciliationRecord, err error) {
	var totalOrders int64
	var totalAmount float64
	global.GVA_DB.Table("hxz_orders").
		Where("DATE(created_at) = ? AND status = ?", req.ReconcileDate.Format("2006-01-02"), "completed").
		Count(&totalOrders)
	global.GVA_DB.Table("hxz_orders").
		Where("DATE(created_at) = ? AND status = ?", req.ReconcileDate.Format("2006-01-02"), "completed").
		Select("COALESCE(SUM(actual_amount), 0)").Scan(&totalAmount)
	var financeTotal float64
	global.GVA_DB.Model(&hxz.FinanceRecord{}).
		Where("DATE(created_at) = ? AND type = ?", req.ReconcileDate.Format("2006-01-02"), "order_income").
		Select("COALESCE(SUM(amount), 0)").Scan(&financeTotal)
	var matchedOrders int64
	global.GVA_DB.Table("hxz_orders o").
		Joins("JOIN hxz_finance_records f ON o.id = f.order_id AND f.type = 'order_income'").
		Where("DATE(o.created_at) = ? AND o.status = ?", req.ReconcileDate.Format("2006-01-02"), "completed").
		Count(&matchedOrders)
	mismatchOrders := int(totalOrders) - int(matchedOrders)
	differenceAmount := totalAmount - financeTotal
	if differenceAmount < 0 {
		differenceAmount = -differenceAmount
	}
	status := "matched"
	if mismatchOrders > 0 || differenceAmount > 0.01 {
		status = "mismatch"
	}
	record = hxz.ReconciliationRecord{
		ReconcileDate:    req.ReconcileDate,
		TotalOrders:      int(totalOrders),
		MatchedOrders:    int(matchedOrders),
		MismatchOrders:   mismatchOrders,
		TotalAmount:      totalAmount,
		DifferenceAmount: differenceAmount,
		Status:           status,
		OperatorID:       operatorID,
		Remark:           req.Remark,
	}
	if req.Remark == "" {
		record.Remark = fmt.Sprintf("自动对账: %s", req.ReconcileDate.Format("2006-01-02"))
	}
	err = global.GVA_DB.Create(&record).Error
	return
}
