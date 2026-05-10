package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type BanRecordService struct{}

var BanRecordServiceApp = new(BanRecordService)

func (s *BanRecordService) GetBanRecordList(info hxzReq.BanRecordSearch) (list []hxz.BanRecord, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	db := global.GVA_DB.Model(&hxz.BanRecord{})
	if info.TargetType != "" {
		db = db.Where("target_type = ?", info.TargetType)
	}
	if info.TargetID > 0 {
		db = db.Where("target_id = ?", info.TargetID)
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
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Offset(offset).Limit(limit).Order("id desc").Find(&list).Error
	return
}
