package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type DispatchManualLogService struct{}

var DispatchManualLogServiceApp = new(DispatchManualLogService)

func (s *DispatchManualLogService) CreateDispatchManualLog(log hxz.DispatchManualLog) (err error) {
	err = global.GVA_DB.Create(&log).Error
	return
}

func (s *DispatchManualLogService) GetDispatchManualLogList(info request.DispatchManualLogSearch) (list []hxz.DispatchManualLog, total int64, err error) {
	db := global.GVA_DB.Model(&hxz.DispatchManualLog{})
	if info.OrderID != 0 {
		db = db.Where("order_id = ?", info.OrderID)
	}
	if info.Action != "" {
		db = db.Where("action = ?", info.Action)
	}
	if info.OperatorID != 0 {
		db = db.Where("operator_id = ?", info.OperatorID)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Order("id desc").Scopes(info.Paginate()).Find(&list).Error
	return
}

func (s *DispatchManualLogService) GetDispatchManualLog(id uint) (log hxz.DispatchManualLog, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&log).Error
	return
}
