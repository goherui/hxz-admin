package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"time"
)

type RiskAlert struct {
	global.GVA_MODEL
	RuleID       uint       `json:"ruleId" form:"ruleId" gorm:"column:rule_id;comment:触发规则ID"`
	TargetType   string     `json:"targetType" form:"targetType" gorm:"column:target_type;type:varchar(20);comment:对象类型 passenger/driver"`
	TargetID     uint       `json:"targetId" form:"targetId" gorm:"column:target_id;comment:对象ID"`
	OrderID      uint       `json:"orderId" form:"orderId" gorm:"column:order_id;comment:关联订单ID"`
	RiskLevel    int        `json:"riskLevel" form:"riskLevel" gorm:"column:risk_level;type:tinyint;default:1;comment:风险等级 1低 2中 3高"`
	AlertData    string     `json:"alertData" form:"alertData" gorm:"column:alert_data;type:text;comment:预警数据JSON"`
	Status       int        `json:"status" form:"status" gorm:"column:status;type:tinyint;default:0;comment:状态 0待处理 1已处理 2已忽略"`
	HandlerID    uint       `json:"handlerId" form:"handlerId" gorm:"column:handler_id;comment:处理人ID"`
	HandleResult string     `json:"handleResult" form:"handleResult" gorm:"column:handle_result;type:varchar(500);comment:处理结果"`
	HandleAt     *time.Time `json:"handleAt" form:"handleAt" gorm:"column:handle_at;comment:处理时间"`
}

func (RiskAlert) TableName() string {
	return "risk_alerts"
}
