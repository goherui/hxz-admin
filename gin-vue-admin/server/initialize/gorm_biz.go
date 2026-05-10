package initialize

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
)

func bizModel() error {
	db := global.GVA_DB
	err := db.AutoMigrate(
		&hxz.Passenger{},
		&hxz.TagDict{},
		&hxz.PassengerTag{},
		&hxz.BanRecord{},
		&hxz.Driver{},
		&hxz.DriverLicense{},
		&hxz.Vehicle{},
		&hxz.DriverAuditLog{},
		&hxz.Order{},
		&hxz.OrderStatusLog{},
		&hxz.Trip{},
		&hxz.TripPoint{},
		&hxz.DispatchRule{},
		&hxz.DispatchRuleVersion{},
		&hxz.DispatchManualLog{},
		&hxz.FinanceRecord{},
		&hxz.Settlement{},
		&hxz.CommissionConfig{},
		&hxz.ReconciliationRecord{},
		&hxz.CouponTemplate{},
		&hxz.CouponRecord{},
		&hxz.Activity{},
		&hxz.Blacklist{},
		&hxz.RiskRule{},
		&hxz.RiskAlert{},
		&hxz.Ticket{},
		&hxz.TicketLog{},
		&hxz.PlatformConfig{},
		&hxz.City{},
		&hxz.FareRule{},
		&hxz.SurgeRule{},
		&hxz.ReportSnapshot{},
	)
	if err != nil {
		return err
	}
	return nil
}
