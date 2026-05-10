package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
)

type DispatchRuleVersion struct {
	global.GVA_MODEL
	RuleID     uint   `json:"ruleId" form:"ruleId" gorm:"column:rule_id;comment:规则ID"`
	Version    int    `json:"version" form:"version" gorm:"column:version;comment:版本号"`
	Snapshot   string `json:"snapshot" form:"snapshot" gorm:"column:snapshot;type:text;comment:规则快照JSON"`
	ChangeDesc string `json:"changeDesc" form:"changeDesc" gorm:"column:change_desc;comment:变更描述"`
	OperatorID uint   `json:"operatorId" form:"operatorId" gorm:"column:operator_id;comment:操作人ID"`
}

func (DispatchRuleVersion) TableName() string {
	return "hxz_dispatch_rule_versions"
}
