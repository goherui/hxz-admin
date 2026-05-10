package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"gorm.io/gorm"
)

type PassengerTagService struct{}

var PassengerTagServiceApp = new(PassengerTagService)

func (s *PassengerTagService) AddPassengerTag(req hxzReq.PassengerTagReq) (err error) {
	pt := hxz.PassengerTag{
		PassengerID: req.PassengerID,
		TagID:       req.TagID,
	}
	err = global.GVA_DB.Create(&pt).Error
	return err
}

func (s *PassengerTagService) RemovePassengerTag(req hxzReq.PassengerTagReq) (err error) {
	err = global.GVA_DB.Where("passenger_id = ? AND tag_id = ?", req.PassengerID, req.TagID).Delete(&hxz.PassengerTag{}).Error
	return err
}

func (s *PassengerTagService) BatchSetPassengerTags(req hxzReq.PassengerTagBatchReq) (err error) {
	return global.GVA_DB.Transaction(func(tx *gorm.DB) error {
		if err := tx.Where("passenger_id = ?", req.PassengerID).Delete(&hxz.PassengerTag{}).Error; err != nil {
			return err
		}
		if len(req.TagIDs) == 0 {
			return nil
		}
		var tags []hxz.PassengerTag
		for _, tagID := range req.TagIDs {
			tags = append(tags, hxz.PassengerTag{
				PassengerID: req.PassengerID,
				TagID:       tagID,
			})
		}
		return tx.Create(&tags).Error
	})
}

func (s *PassengerTagService) GetPassengerTags(passengerID uint) (tags []hxz.TagDict, err error) {
	var tagIDs []uint
	err = global.GVA_DB.Model(&hxz.PassengerTag{}).Where("passenger_id = ?", passengerID).Pluck("tag_id", &tagIDs).Error
	if err != nil {
		return
	}
	if len(tagIDs) == 0 {
		return
	}
	err = global.GVA_DB.Where("id IN ?", tagIDs).Find(&tags).Error
	return
}
