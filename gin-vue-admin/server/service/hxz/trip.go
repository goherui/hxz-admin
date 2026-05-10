package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type TripService struct{}

var TripServiceApp = new(TripService)

func (s *TripService) CreateTrip(data hxz.Trip) (trip hxz.Trip, err error) {
	err = global.GVA_DB.Create(&data).Error
	return data, err
}

func (s *TripService) DeleteTrip(id uint) (err error) {
	err = global.GVA_DB.Delete(&hxz.Trip{}, id).Error
	return err
}

func (s *TripService) DeleteTripByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]hxz.Trip{}, "id in ?", ids.Ids).Error
	return err
}

func (s *TripService) UpdateTrip(data *hxz.Trip) (err error) {
	err = global.GVA_DB.Save(data).Error
	return err
}

func (s *TripService) FindTrip(id uint) (trip hxz.Trip, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&trip).Error
	return
}

func (s *TripService) GetTripList(info hxzReq.TripSearch) (list []hxz.Trip, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	db := global.GVA_DB.Model(&hxz.Trip{})
	if info.TripNo != "" {
		db = db.Where("trip_no LIKE ?", "%"+info.TripNo+"%")
	}
	if info.OrderID != nil {
		db = db.Where("order_id = ?", *info.OrderID)
	}
	if info.DriverID != nil {
		db = db.Where("driver_id = ?", *info.DriverID)
	}
	if info.PassengerID != nil {
		db = db.Where("passenger_id = ?", *info.PassengerID)
	}
	if info.IsAbnormal != nil {
		db = db.Where("is_abnormal = ?", *info.IsAbnormal)
	}
	if info.RiskFlag != nil {
		db = db.Where("risk_flag = ?", *info.RiskFlag)
	}
	if info.StartTime != nil {
		db = db.Where("start_at >= ?", *info.StartTime)
	}
	if info.EndTime != nil {
		db = db.Where("end_at <= ?", *info.EndTime)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Offset(offset).Limit(limit).Order("id desc").Find(&list).Error
	return
}

func (s *TripService) MarkAbnormal(id uint, abnormalTags string) (err error) {
	err = global.GVA_DB.Model(&hxz.Trip{}).Where("id = ?", id).Updates(map[string]interface{}{
		"is_abnormal":   1,
		"abnormal_tags": abnormalTags,
	}).Error
	return err
}

func (s *TripService) SetRiskFlag(id uint, riskFlag int) (err error) {
	err = global.GVA_DB.Model(&hxz.Trip{}).Where("id = ?", id).Update("risk_flag", riskFlag).Error
	return err
}
