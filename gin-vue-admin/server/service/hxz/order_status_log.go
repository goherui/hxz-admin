package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
)

type OrderStatusLogService struct{}

var OrderStatusLogServiceApp = new(OrderStatusLogService)

func (s *OrderStatusLogService) GetOrderStatusLogList(orderId uint) (list []hxz.OrderStatusLog, err error) {
	err = global.GVA_DB.Where("order_id = ?", orderId).Order("id desc").Find(&list).Error
	return
}

func (s *OrderStatusLogService) CreateLog(statusLog hxz.OrderStatusLog) (err error) {
	err = global.GVA_DB.Create(&statusLog).Error
	return
}
