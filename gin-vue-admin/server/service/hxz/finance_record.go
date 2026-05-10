package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type FinanceRecordService struct{}

var FinanceRecordServiceApp = new(FinanceRecordService)

func (s *FinanceRecordService) CreateFinanceRecord(record hxz.FinanceRecord) (err error) {
	err = global.GVA_DB.Create(&record).Error
	return
}

func (s *FinanceRecordService) DeleteFinanceRecord(id uint) (err error) {
	err = global.GVA_DB.Delete(&hxz.FinanceRecord{}, id).Error
	return
}

func (s *FinanceRecordService) UpdateFinanceRecord(record *hxz.FinanceRecord) (err error) {
	err = global.GVA_DB.Save(record).Error
	return
}

func (s *FinanceRecordService) GetFinanceRecord(id uint) (record hxz.FinanceRecord, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&record).Error
	return
}

func (s *FinanceRecordService) GetFinanceRecordList(info request.FinanceRecordSearch) (list []hxz.FinanceRecord, total int64, err error) {
	db := global.GVA_DB.Model(&hxz.FinanceRecord{})
	if info.RecordNo != "" {
		db = db.Where("record_no = ?", info.RecordNo)
	}
	if info.OrderID != 0 {
		db = db.Where("order_id = ?", info.OrderID)
	}
	if info.Type != "" {
		db = db.Where("type = ?", info.Type)
	}
	if info.Category != "" {
		db = db.Where("category = ?", info.Category)
	}
	if info.TargetType != "" {
		db = db.Where("target_type = ?", info.TargetType)
	}
	if info.TargetID != 0 {
		db = db.Where("target_id = ?", info.TargetID)
	}
	if info.Status != "" {
		db = db.Where("status = ?", info.Status)
	}
	if !info.StartTime.IsZero() {
		db = db.Where("created_at >= ?", info.StartTime)
	}
	if !info.EndTime.IsZero() {
		db = db.Where("created_at <= ?", info.EndTime)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Order("id desc").Scopes(info.Paginate()).Find(&list).Error
	return
}
