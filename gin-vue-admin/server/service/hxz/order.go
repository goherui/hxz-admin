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

type OrderService struct{}

var OrderServiceApp = new(OrderService)

var validStatusTransitions = map[int][]int{
	1: {2, 5},
	2: {3, 5},
	3: {4},
	4: {},
	5: {},
}

func (s *OrderService) CreateOrder(data hxz.Order) (order hxz.Order, err error) {
	err = global.GVA_DB.Create(&data).Error
	return data, err
}

func (s *OrderService) DeleteOrder(id uint) (err error) {
	err = global.GVA_DB.Delete(&hxz.Order{}, id).Error
	return err
}

func (s *OrderService) DeleteOrderByIds(ids request.IdsReq) (err error) {
	err = global.GVA_DB.Delete(&[]hxz.Order{}, "id in ?", ids.Ids).Error
	return err
}

func (s *OrderService) UpdateOrder(data *hxz.Order) (err error) {
	err = global.GVA_DB.Save(data).Error
	return err
}

func (s *OrderService) FindOrder(id uint) (order hxz.Order, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&order).Error
	return
}

func (s *OrderService) GetOrderList(info hxzReq.OrderSearch) (list []hxz.Order, total int64, err error) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	db := global.GVA_DB.Model(&hxz.Order{})
	if info.OrderNo != "" {
		db = db.Where("order_no LIKE ?", "%"+info.OrderNo+"%")
	}
	if info.PassengerID != nil {
		db = db.Where("passenger_id = ?", *info.PassengerID)
	}
	if info.DriverID != nil {
		db = db.Where("driver_id = ?", *info.DriverID)
	}
	if info.CityCode != "" {
		db = db.Where("city_code = ?", info.CityCode)
	}
	if info.OrderType != nil {
		db = db.Where("order_type = ?", *info.OrderType)
	}
	if info.Status != nil {
		db = db.Where("status = ?", *info.Status)
	}
	if info.IsAbnormal != nil {
		db = db.Where("is_abnormal = ?", *info.IsAbnormal)
	}
	if info.StartTime != nil {
		db = db.Where("created_at >= ?", *info.StartTime)
	}
	if info.EndTime != nil {
		db = db.Where("created_at <= ?", *info.EndTime)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Offset(offset).Limit(limit).Order("id desc").Find(&list).Error
	return
}

func (s *OrderService) MarkAbnormal(id uint, abnormalType string) (err error) {
	err = global.GVA_DB.Model(&hxz.Order{}).Where("id = ?", id).Updates(map[string]interface{}{
		"is_abnormal":   1,
		"abnormal_type": abnormalType,
	}).Error
	if err != nil {
		return err
	}
	var order hxz.Order
	if err = global.GVA_DB.Where("id = ?", id).First(&order).Error; err != nil {
		return err
	}
	statusLog := hxz.OrderStatusLog{
		OrderID:      id,
		FromStatus:   order.Status,
		ToStatus:     order.Status,
		OperatorType: 2,
		Remark:       fmt.Sprintf("标记异常: %s", abnormalType),
	}
	err = global.GVA_DB.Create(&statusLog).Error
	if err != nil {
		return err
	}
	s.setHotOrderCache(order.OrderNo)
	return nil
}

func (s *OrderService) ChangeStatus(id uint, toStatus int, operatorId uint, remark string) (err error) {
	var order hxz.Order
	if err = global.GVA_DB.Where("id = ?", id).First(&order).Error; err != nil {
		return err
	}
	allowed, ok := validStatusTransitions[order.Status]
	if !ok {
		return fmt.Errorf("当前状态%d不允许流转", order.Status)
	}
	valid := false
	for _, v := range allowed {
		if v == toStatus {
			valid = true
			break
		}
	}
	if !valid {
		return fmt.Errorf("状态不允许从%d流转到%d", order.Status, toStatus)
	}
	fromStatus := order.Status
	err = global.GVA_DB.Model(&hxz.Order{}).Where("id = ?", id).Update("status", toStatus).Error
	if err != nil {
		return err
	}
	statusLog := hxz.OrderStatusLog{
		OrderID:      id,
		FromStatus:   fromStatus,
		ToStatus:     toStatus,
		OperatorType: 2,
		OperatorID:   operatorId,
		Remark:       remark,
	}
	err = global.GVA_DB.Create(&statusLog).Error
	if err != nil {
		return err
	}
	s.deleteHotOrderCache(order.OrderNo)
	return nil
}

func (s *OrderService) setHotOrderCache(orderNo string) {
	key := fmt.Sprintf("hxz:order:hot:%s", orderNo)
	global.GVA_REDIS.Set(context.Background(), key, orderNo, 30*time.Minute)
}

func (s *OrderService) deleteHotOrderCache(orderNo string) {
	key := fmt.Sprintf("hxz:order:hot:%s", orderNo)
	global.GVA_REDIS.Del(context.Background(), key)
}
