package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

type RiskRule struct {
	global.GVA_MODEL
	Name        string `json:"name" form:"name" gorm:"column:name;type:varchar(100);comment:规则名称"`
	Type        string `json:"type" form:"type" gorm:"column:type;type:varchar(50);comment:规则类型"`
	Condition   string `json:"condition" form:"condition" gorm:"column:condition;type:text;comment:触发条件JSON"`
	RiskLevel   int    `json:"riskLevel" form:"riskLevel" gorm:"column:risk_level;type:tinyint;default:1;comment:风险等级 1低 2中 3高"`
	Action      string `json:"action" form:"action" gorm:"column:action;type:varchar(50);comment:处置动作 warn/block/review"`
	IsActive    int    `json:"isActive" form:"isActive" gorm:"column:is_active;type:tinyint;default:1;comment:是否启用 1是 0否"`
}

func (RiskRule) TableName() string {
	return "risk_rules"
}
