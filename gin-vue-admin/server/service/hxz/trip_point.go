package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
)

type TripPointService struct{}

var TripPointServiceApp = new(TripPointService)

func (s *TripPointService) GetTripPointList(tripId uint) (list []hxz.TripPoint, err error) {
	err = global.GVA_DB.Where("trip_id = ?", tripId).Order("recorded_at asc").Find(&list).Error
	return
}
