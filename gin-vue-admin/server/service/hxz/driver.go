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

type DriverService struct{}

var DriverServiceApp = new(DriverService)

func (s *DriverService) CreateDriver(data hxz.Driver) (driver hxz.Driver, err error) {
	err = global.GVA_DB.Create(&data).Error
	return data, err
}

func (s *DriverService) DeleteDriver(id uint) (err error) {
	err = global.GVA_DB.Delete(&hxz.Driver{}, id).Error
	return err
}

func (s *DriverService) DeleteDriverByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]hxz.Driver{}, "id in ?", ids.Ids).Error
	return err
}

func (s *DriverService) UpdateDriver(data *hxz.Driver) (err error) {
	err = global.GVA_DB.Save(data).Error
	return err
}

func (s *DriverService) GetDriver(id uint) (driver hxz.Driver, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&driver).Error
	return
}

func (s *DriverService) GetDriverList(info hxzReq.DriverSearch) (list []hxz.Driver, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	db := global.GVA_DB.Model(&hxz.Driver{})
	if info.Phone != "" {
		db = db.Where("phone LIKE ?", "%"+info.Phone+"%")
	}
	if info.RealName != "" {
		db = db.Where("real_name LIKE ?", "%"+info.RealName+"%")
	}
	if info.Status != nil {
		db = db.Where("status = ?", *info.Status)
	}
	if info.AuditStatus != nil {
		db = db.Where("audit_status = ?", *info.AuditStatus)
	}
	if info.CityCode != "" {
		db = db.Where("city_code = ?", info.CityCode)
	}
	if info.ServiceStatus != nil {
		db = db.Where("service_status = ?", *info.ServiceStatus)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Offset(offset).Limit(limit).Order("id desc").Find(&list).Error
	return
}

func (s *DriverService) AuditDriver(req hxzReq.DriverAuditReq, operatorID uint) (err error) {
	tx := global.GVA_DB.Begin()
	defer func() {
		if r := recover(); r != nil {
			tx.Rollback()
		}
	}()

	var driverStatus int
	var auditStatus int
	var licenseAuditStatus int
	if req.Action == "approve" {
		driverStatus = 2
		auditStatus = 2
		licenseAuditStatus = 2
	} else {
		driverStatus = 3
		auditStatus = 3
		licenseAuditStatus = 3
	}

	err = tx.Model(&hxz.Driver{}).Where("id = ?", req.ID).Updates(map[string]interface{}{
		"status":       driverStatus,
		"audit_status": auditStatus,
	}).Error
	if err != nil {
		tx.Rollback()
		return err
	}

	auditLog := hxz.DriverAuditLog{
		DriverID:   req.ID,
		AuditType:  req.AuditType,
		Action:     req.Action,
		Reason:     req.Reason,
		OperatorID: operatorID,
	}
	err = tx.Create(&auditLog).Error
	if err != nil {
		tx.Rollback()
		return err
	}

	if req.AuditType == "license" {
		err = tx.Model(&hxz.DriverLicense{}).Where("driver_id = ?", req.ID).Update("audit_status", licenseAuditStatus).Error
		if err != nil {
			tx.Rollback()
			return err
		}
	} else if req.AuditType == "vehicle" {
		vehicleStatus := 2
		if req.Action == "approve" {
			vehicleStatus = 1
		}
		err = tx.Model(&hxz.Vehicle{}).Where("driver_id = ?", req.ID).Update("status", vehicleStatus).Error
		if err != nil {
			tx.Rollback()
			return err
		}
	}

	tx.Commit()
	s.deleteDriverCache(req.ID)
	return nil
}

func (s *DriverService) BanDriver(req hxzReq.DriverBanReq, operatorID uint) (err error) {
	tx := global.GVA_DB.Begin()
	defer func() {
		if r := recover(); r != nil {
			tx.Rollback()
		}
	}()

	err = tx.Model(&hxz.Driver{}).Where("id = ?", req.ID).Update("status", 4).Error
	if err != nil {
		tx.Rollback()
		return err
	}

	banRecord := hxz.BanRecord{
		TargetType: "driver",
		TargetID:   req.ID,
		Reason:     req.Reason,
		BanType:    req.BanType,
		Status:     1,
		OperatorID: operatorID,
	}
	err = tx.Create(&banRecord).Error
	if err != nil {
		tx.Rollback()
		return err
	}

	tx.Commit()
	s.deleteBlacklistCache(req.ID)
	s.deleteDriverCache(req.ID)
	return nil
}

func (s *DriverService) UnbanDriver(req hxzReq.DriverUnbanReq, operatorID uint) (err error) {
	tx := global.GVA_DB.Begin()
	defer func() {
		if r := recover(); r != nil {
			tx.Rollback()
		}
	}()

	err = tx.Model(&hxz.Driver{}).Where("id = ?", req.ID).Update("status", 2).Error
	if err != nil {
		tx.Rollback()
		return err
	}

	now := time.Now()
	err = tx.Model(&hxz.BanRecord{}).
		Where("target_type = ? AND target_id = ? AND status = ?", "driver", req.ID, 1).
		Updates(map[string]interface{}{
			"status":          2,
			"unbanned_at":     &now,
			"unbanned_by":     operatorID,
			"unbanned_reason": req.UnbannedReason,
		}).Error
	if err != nil {
		tx.Rollback()
		return err
	}

	tx.Commit()
	s.deleteBlacklistCache(req.ID)
	s.deleteDriverCache(req.ID)
	return nil
}

func (s *DriverService) GetAuditList(info hxzReq.DriverAuditLogSearch) (list []hxz.DriverAuditLog, total int64, err error) {
	return DriverAuditLogServiceApp.GetDriverAuditLogList(info)
}

func (s *DriverService) deleteBlacklistCache(driverID uint) {
	key := fmt.Sprintf("hxz:risk:blacklist:driver:%d", driverID)
	global.GVA_REDIS.Del(context.Background(), key)
}

func (s *DriverService) deleteDriverCache(driverID uint) {
	key := fmt.Sprintf("hxz:driver:summary:%d", driverID)
	global.GVA_REDIS.Del(context.Background(), key)
}
