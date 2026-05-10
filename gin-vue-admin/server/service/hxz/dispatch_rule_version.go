package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type DispatchRuleVersionService struct{}

var DispatchRuleVersionServiceApp = new(DispatchRuleVersionService)

func (s *DispatchRuleVersionService) GetDispatchRuleVersionList(info request.DispatchRuleVersionSearch) (list []hxz.DispatchRuleVersion, total int64, err error) {
	db := global.GVA_DB.Model(&hxz.DispatchRuleVersion{})
	if info.RuleID != 0 {
		db = db.Where("rule_id = ?", info.RuleID)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Order("version desc").Scopes(info.Paginate()).Find(&list).Error
	return
}

func (s *DispatchRuleVersionService) GetDispatchRuleVersion(id uint) (version hxz.DispatchRuleVersion, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&version).Error
	return
}
