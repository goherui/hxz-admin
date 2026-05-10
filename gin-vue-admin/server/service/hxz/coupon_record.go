package hxz

import (
	"fmt"
	"time"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"gorm.io/gorm"
)

type CouponRecordService struct{}

var CouponRecordServiceApp = new(CouponRecordService)

func (s *CouponRecordService) GetCouponRecord(id uint) (record hxz.CouponRecord, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&record).Error
	return
}

func (s *CouponRecordService) GetCouponRecordList(info request.CouponRecordSearch) (list []hxz.CouponRecord, total int64, err error) {
	db := global.GVA_DB.Model(&hxz.CouponRecord{})
	if info.TemplateID != 0 {
		db = db.Where("template_id = ?", info.TemplateID)
	}
	if info.PassengerID != 0 {
		db = db.Where("passenger_id = ?", info.PassengerID)
	}
	if info.Source != "" {
		db = db.Where("source = ?", info.Source)
	}
	if info.ActivityID != 0 {
		db = db.Where("activity_id = ?", info.ActivityID)
	}
	if info.Status != "" {
		db = db.Where("status = ?", info.Status)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Order("id desc").Scopes(info.Paginate()).Find(&list).Error
	return
}

func (s *CouponRecordService) ManualIssue(req request.CouponManualIssue) (err error) {
	var template hxz.CouponTemplate
	if err = global.GVA_DB.Where("id = ?", req.TemplateID).First(&template).Error; err != nil {
		return err
	}
	if template.Status != "published" {
		return fmt.Errorf("优惠券模板[%d]未发布", req.TemplateID)
	}
	if template.RemainCount < len(req.PassengerIDs) {
		return fmt.Errorf("优惠券剩余数量不足，当前剩余%d张，需发放%d张", template.RemainCount, len(req.PassengerIDs))
	}
	records := make([]hxz.CouponRecord, 0, len(req.PassengerIDs))
	now := time.Now()
	var expiredAt *time.Time
	if template.ValidType == "fixed" && template.ValidEnd != nil {
		expiredAt = template.ValidEnd
	} else if template.ValidType == "days" && template.ValidDays > 0 {
		end := now.AddDate(0, 0, template.ValidDays)
		expiredAt = &end
	}
	for _, passengerID := range req.PassengerIDs {
		records = append(records, hxz.CouponRecord{
			TemplateID:  req.TemplateID,
			CouponCode:  fmt.Sprintf("CP%s%d%d", now.Format("20060102150405"), passengerID, req.TemplateID),
			PassengerID: passengerID,
			Source:      "manual",
			Status:      "unused",
			ExpiredAt:   expiredAt,
		})
	}
	err = global.GVA_DB.Transaction(func(tx *gorm.DB) error {
		if err := tx.Create(&records).Error; err != nil {
			return err
		}
		result := tx.Model(&hxz.CouponTemplate{}).
			Where("id = ? AND remain_count >= ?", req.TemplateID, len(req.PassengerIDs)).
			Updates(map[string]interface{}{
				"remain_count": gorm.Expr("remain_count - ?", len(req.PassengerIDs)),
			})
		if result.Error != nil {
			return result.Error
		}
		if result.RowsAffected == 0 {
			return fmt.Errorf("优惠券剩余数量不足")
		}
		return nil
	})
	return
}
