package hxz

import (
	"context"
	"encoding/json"
	"fmt"
	"time"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type ReportSnapshotService struct{}

var ReportSnapshotServiceApp = new(ReportSnapshotService)

func (s *ReportSnapshotService) CreateReportSnapshot(snapshot hxz.ReportSnapshot) (err error) {
	err = global.GVA_DB.Create(&snapshot).Error
	return
}

func (s *ReportSnapshotService) DeleteReportSnapshot(id uint) (err error) {
	err = global.GVA_DB.Delete(&hxz.ReportSnapshot{}, id).Error
	return
}

func (s *ReportSnapshotService) UpdateReportSnapshot(snapshot *hxz.ReportSnapshot) (err error) {
	err = global.GVA_DB.Save(snapshot).Error
	return
}

func (s *ReportSnapshotService) GetReportSnapshot(id uint) (snapshot hxz.ReportSnapshot, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&snapshot).Error
	return
}

func (s *ReportSnapshotService) GetDashboard(req hxzReq.ReportDashboardReq) (data map[string]interface{}, err error) {
	date := req.Date
	if date == "" {
		date = time.Now().Format("2006-01-02")
	}
	redisKey := fmt.Sprintf("hxz:report:daily:%s", date)
	cached, err := global.GVA_REDIS.Get(context.Background(), redisKey).Result()
	if err == nil {
		json.Unmarshal([]byte(cached), &data)
		return
	}

	data = make(map[string]interface{})

	var orderCount int64
	global.GVA_DB.Table("orders").Where("DATE(created_at) = ?", date).Count(&orderCount)
	data["order_count"] = orderCount

	var totalAmount float64
	global.GVA_DB.Table("orders").Where("DATE(created_at) = ? AND status = 'completed'", date).Select("COALESCE(SUM(total_amount),0)").Scan(&totalAmount)
	data["total_amount"] = totalAmount

	var activeDriverCount int64
	global.GVA_DB.Table("drivers").Where("status = 1").Count(&activeDriverCount)
	data["active_driver_count"] = activeDriverCount

	var activePassengerCount int64
	global.GVA_DB.Table("passengers").Where("status = 1").Count(&activePassengerCount)
	data["active_passenger_count"] = activePassengerCount

	var alertCount int64
	global.GVA_DB.Model(&hxz.RiskAlert{}).Where("DATE(created_at) = ? AND status = 0", date).Count(&alertCount)
	data["risk_alert_count"] = alertCount

	var pendingTicketCount int64
	global.GVA_DB.Model(&hxz.Ticket{}).Where("status IN ('pending','processing')").Count(&pendingTicketCount)
	data["pending_ticket_count"] = pendingTicketCount

	cachedBytes, _ := json.Marshal(data)
	global.GVA_REDIS.Set(context.Background(), redisKey, string(cachedBytes), time.Hour)
	return
}

func (s *ReportSnapshotService) GetOrderReport(info hxzReq.ReportOrderReq) (list interface{}, total int64, err error) {
	db := global.GVA_DB.Table("orders").Select("DATE(created_at) as date, COUNT(*) as order_count, COALESCE(SUM(CASE WHEN status='completed' THEN total_amount ELSE 0 END),0) as completed_amount, COALESCE(SUM(CASE WHEN status='cancelled' THEN 1 ELSE 0 END),0) as cancel_count")
	if info.CityCode != "" {
		db = db.Where("city_code = ?", info.CityCode)
	}
	if info.StartDate != "" {
		db = db.Where("DATE(created_at) >= ?", info.StartDate)
	}
	if info.EndDate != "" {
		db = db.Where("DATE(created_at) <= ?", info.EndDate)
	}

	var results []map[string]interface{}
	db = db.Group("DATE(created_at)").Order("date desc")

	err = db.Count(&total).Error
	if err != nil {
		return
	}

	err = db.Scopes(info.Paginate()).Scan(&results).Error
	return results, total, err
}

func (s *ReportSnapshotService) GetDriverReport(info hxzReq.ReportDriverReq) (list interface{}, total int64, err error) {
	db := global.GVA_DB.Table("drivers").Select("id, phone, nickname, total_trips, total_earnings, rating, status")
	if info.CityCode != "" {
		db = db.Where("register_city = ?", info.CityCode)
	}
	if info.StartDate != "" {
		db = db.Where("created_at >= ?", info.StartDate)
	}
	if info.EndDate != "" {
		db = db.Where("created_at <= ?", info.EndDate)
	}

	var results []map[string]interface{}
	err = db.Count(&total).Error
	if err != nil {
		return
	}

	err = db.Order("id desc").Scopes(info.Paginate()).Scan(&results).Error
	return results, total, err
}

func (s *ReportSnapshotService) GetFinanceReport(info hxzReq.ReportFinanceReq) (list interface{}, total int64, err error) {
	db := global.GVA_DB.Table("finance_records").Select("DATE(created_at) as date, type, COALESCE(SUM(amount),0) as total_amount, COUNT(*) as record_count")
	if info.CityCode != "" {
		db = db.Where("city_code = ?", info.CityCode)
	}
	if info.StartDate != "" {
		db = db.Where("DATE(created_at) >= ?", info.StartDate)
	}
	if info.EndDate != "" {
		db = db.Where("DATE(created_at) <= ?", info.EndDate)
	}

	var results []map[string]interface{}
	db = db.Group("DATE(created_at), type").Order("date desc")

	err = db.Count(&total).Error
	if err != nil {
		return
	}

	err = db.Scopes(info.Paginate()).Scan(&results).Error
	return results, total, err
}

func (s *ReportSnapshotService) GetReportSnapshotList(reportType, startDate, endDate string, pageInfo hxzReq.ReportOrderReq) (list interface{}, total int64, err error) {
	db := global.GVA_DB.Model(&hxz.ReportSnapshot{})
	if reportType != "" {
		db = db.Where("report_type = ?", reportType)
	}
	if startDate != "" {
		db = db.Where("report_date >= ?", startDate)
	}
	if endDate != "" {
		db = db.Where("report_date <= ?", endDate)
	}
	var snapshotList []hxz.ReportSnapshot
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Order("id desc").Scopes(pageInfo.Paginate()).Find(&snapshotList).Error
	return snapshotList, total, err
}
