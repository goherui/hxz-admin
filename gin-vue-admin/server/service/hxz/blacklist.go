package hxz

import (
	"context"
	"fmt"
	"time"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type BlacklistService struct{}

var BlacklistServiceApp = new(BlacklistService)

func (s *BlacklistService) AddBlacklist(req hxzReq.BlacklistAddReq, operatorID uint) (err error) {
	blacklist := hxz.Blacklist{
		TargetType: req.TargetType,
		TargetID:   req.TargetID,
		Reason:     req.Reason,
		Level:      req.Level,
		Source:     req.Source,
		OperatorID: operatorID,
		Status:     1,
	}
	err = global.GVA_DB.Create(&blacklist).Error
	if err != nil {
		return
	}
	redisKey := fmt.Sprintf("hxz:risk:blacklist:%s", req.TargetType)
	global.GVA_REDIS.SAdd(context.Background(), redisKey, req.TargetID)
	return
}

func (s *BlacklistService) RemoveBlacklist(req hxzReq.BlacklistRemoveReq, removedBy uint) (err error) {
	var blacklist hxz.Blacklist
	err = global.GVA_DB.Where("id = ? AND status = 1", req.ID).First(&blacklist).Error
	if err != nil {
		return
	}
	now := time.Now()
	err = global.GVA_DB.Model(&blacklist).Updates(map[string]interface{}{
		"status":         2,
		"removed_by":     removedBy,
		"removed_reason": req.RemovedReason,
		"removed_at":     &now,
	}).Error
	if err != nil {
		return
	}
	redisKey := fmt.Sprintf("hxz:risk:blacklist:%s", blacklist.TargetType)
	global.GVA_REDIS.SRem(context.Background(), redisKey, blacklist.TargetID)
	return
}

func (s *BlacklistService) GetBlacklistList(info hxzReq.BlacklistSearch) (list interface{}, total int64, err error) {
	db := global.GVA_DB.Model(&hxz.Blacklist{})
	if info.TargetType != "" {
		db = db.Where("target_type = ?", info.TargetType)
	}
	if info.TargetID != 0 {
		db = db.Where("target_id = ?", info.TargetID)
	}
	if info.Level != nil {
		db = db.Where("level = ?", *info.Level)
	}
	if info.Status != nil {
		db = db.Where("status = ?", *info.Status)
	}
	var blacklistList []hxz.Blacklist
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Order("id desc").Scopes(info.Paginate()).Find(&blacklistList).Error
	return blacklistList, total, err
}

func (s *BlacklistService) GetBlacklistByID(id uint) (blacklist hxz.Blacklist, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&blacklist).Error
	return
}

func (s *BlacklistService) IsInBlacklist(targetType string, targetID uint) bool {
	redisKey := fmt.Sprintf("hxz:risk:blacklist:%s", targetType)
	result, err := global.GVA_REDIS.SIsMember(context.Background(), redisKey, targetID).Result()
	if err != nil {
		var count int64
		global.GVA_DB.Model(&hxz.Blacklist{}).Where("target_type = ? AND target_id = ? AND status = 1", targetType, targetID).Count(&count)
		return count > 0
	}
	return result
}

func (s *BlacklistService) SyncBlacklistToRedis() (err error) {
	var list []hxz.Blacklist
	err = global.GVA_DB.Where("status = 1").Find(&list).Error
	if err != nil {
		return
	}
	passengerKey := "hxz:risk:blacklist:passenger"
	driverKey := "hxz:risk:blacklist:driver"
	global.GVA_REDIS.Del(context.Background(), passengerKey)
	global.GVA_REDIS.Del(context.Background(), driverKey)
	for _, item := range list {
		redisKey := fmt.Sprintf("hxz:risk:blacklist:%s", item.TargetType)
		global.GVA_REDIS.SAdd(context.Background(), redisKey, item.TargetID)
	}
	return
}
