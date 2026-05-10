package hxz

import (
	"errors"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
)

type CouponTemplateService struct{}

var CouponTemplateServiceApp = new(CouponTemplateService)

func (s *CouponTemplateService) CreateCouponTemplate(template hxz.CouponTemplate) (err error) {
	template.RemainCount = template.TotalCount
	template.UsedCount = 0
	template.Status = "draft"
	err = global.GVA_DB.Create(&template).Error
	return
}

func (s *CouponTemplateService) DeleteCouponTemplate(id uint) (err error) {
	var template hxz.CouponTemplate
	if err = global.GVA_DB.Where("id = ?", id).First(&template).Error; err != nil {
		return err
	}
	if template.Status == "published" {
		return errors.New("已发布的优惠券模板不能删除")
	}
	err = global.GVA_DB.Delete(&template).Error
	return
}

func (s *CouponTemplateService) UpdateCouponTemplate(template *hxz.CouponTemplate) (err error) {
	var old hxz.CouponTemplate
	if err = global.GVA_DB.Where("id = ?", template.ID).First(&old).Error; err != nil {
		return err
	}
	if old.Status == "published" {
		return errors.New("已发布的优惠券模板不能修改")
	}
	err = global.GVA_DB.Save(template).Error
	return
}

func (s *CouponTemplateService) GetCouponTemplate(id uint) (template hxz.CouponTemplate, err error) {
	err = global.GVA_DB.Where("id = ?", id).First(&template).Error
	return
}

func (s *CouponTemplateService) GetCouponTemplateList(info request.CouponTemplateSearch) (list []hxz.CouponTemplate, total int64, err error) {
	db := global.GVA_DB.Model(&hxz.CouponTemplate{})
	if info.Name != "" {
		db = db.Where("name LIKE ?", "%"+info.Name+"%")
	}
	if info.Type != "" {
		db = db.Where("type = ?", info.Type)
	}
	if info.Status != "" {
		db = db.Where("status = ?", info.Status)
	}
	err = db.Count(&total).Error
	if err != nil {
		return
	}
	err = db.Order("id desc").Scopes(info.Paginate()).Find(&list).Error
	return
}

func (s *CouponTemplateService) PublishCouponTemplate(id uint) (err error) {
	var template hxz.CouponTemplate
	if err = global.GVA_DB.Where("id = ?", id).First(&template).Error; err != nil {
		return err
	}
	if template.Status != "draft" && template.Status != "offline" {
		return errors.New("只有草稿或已下架状态的优惠券可以发布")
	}
	err = global.GVA_DB.Model(&template).Update("status", "published").Error
	return
}

func (s *CouponTemplateService) OfflineCouponTemplate(id uint) (err error) {
	var template hxz.CouponTemplate
	if err = global.GVA_DB.Where("id = ?", id).First(&template).Error; err != nil {
		return err
	}
	if template.Status != "published" {
		return errors.New("只有已发布状态的优惠券可以下架")
	}
	err = global.GVA_DB.Model(&template).Update("status", "offline").Error
	return
}
