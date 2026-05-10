package hxz

import (
	"context"
	"fmt"
	"time"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type PassengerService struct{}

var PassengerServiceApp = new(PassengerService)

func (s *PassengerService) CreatePassenger(data hxz.Passenger) (passenger hxz.Passenger, err error) {
	err = global.GVA_DB.Create(&data).Error
	return data, err
}

func (s *PassengerService) DeletePassenger(id uint) (err error) {
	err = global.GVA_DB.Delete(&hxz.Passenger{}, id).Error
	return err
}

func (s *PassengerService) DeletePassengerByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]hxz.Passenger{}, "id in ?", ids.Ids).Error
	return err
}

func (s *PassengerService) UpdatePassenger(data *hxz.Passenger) (err error) {
	err = global.GVA_DB.Save(data).Error
	return err
}

func (s *PassengerService) GetPassenger(id uint) (passenger hxz.Passenger, err error) {
	err = global.GVA_DB.Preload("Tags").Where("id = ?", id).First(&passenger).Error
	return
}

func (s *PassengerService) GetPassengerList(info hxzReq.PassengerSearch) (list []hxz.Passenger, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	db := global.GVA_DB.Model(&hxz.Passenger{})
	if info.Phone != "" {
		db = db.Where("phone LIKE ?", "%"+info.Phone+"%")
	}
	if info.Nickname != "" {
		db = db.Where("nickname LIKE ?", "%"+info.Nickname+"%")
	}
	if info.Status != nil {
		db = db.Where("status = ?", *info.Status)
	}
	if info.RegisterCity != "" {
		db = db.Where("register_city = ?", info.RegisterCity)
	}
	if info.RegisterSource != "" {
		db = db.Where("register_source = ?", info.RegisterSource)
	}
	if info.Gender != nil {
		db = db.Where("gender = ?", *info.Gender)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Preload("Tags").Offset(offset).Limit(limit).Order("id desc").Find(&list).Error
	return
}

func (s *PassengerService) BanPassenger(req hxzReq.PassengerBanReq, operatorID uint) (err error) {
	err = global.GVA_DB.Model(&hxz.Passenger{}).Where("id = ?", req.ID).Update("status", 2).Error
	if err != nil {
		return err
	}
	banRecord := hxz.BanRecord{
		TargetType: "passenger",
		TargetID:   req.ID,
		Reason:     req.Reason,
		BanType:    req.BanType,
		Status:     1,
		OperatorID: operatorID,
	}
	err = global.GVA_DB.Create(&banRecord).Error
	if err != nil {
		return err
	}
	s.deleteBlacklistCache(req.ID)
	return nil
}

func (s *PassengerService) UnbanPassenger(req hxzReq.PassengerUnbanReq, operatorID uint) (err error) {
	err = global.GVA_DB.Model(&hxz.Passenger{}).Where("id = ?", req.ID).Update("status", 1).Error
	if err != nil {
		return err
	}
	now := time.Now()
	err = global.GVA_DB.Model(&hxz.BanRecord{}).
		Where("target_type = ? AND target_id = ? AND status = ?", "passenger", req.ID, 1).
		Updates(map[string]interface{}{
			"status":          2,
			"unbanned_at":     &now,
			"unbanned_by":     operatorID,
			"unbanned_reason": req.UnbannedReason,
		}).Error
	if err != nil {
		return err
	}
	s.deleteBlacklistCache(req.ID)
	return nil
}

func (s *PassengerService) deleteBlacklistCache(passengerID uint) {
	key := fmt.Sprintf("hxz:risk:blacklist:passenger:%d", passengerID)
	global.GVA_REDIS.Del(context.Background(), key)
}
