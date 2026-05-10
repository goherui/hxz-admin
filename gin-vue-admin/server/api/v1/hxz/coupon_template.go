package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type CouponTemplateApi struct{}

func (api *CouponTemplateApi) CreateCouponTemplate(c *gin.Context) {
	var template hxz.CouponTemplate
	err := c.ShouldBindJSON(&template)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = couponTemplateService.CreateCouponTemplate(template)
	if err != nil {
		global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
	response.OkWithMessage("创建成功", c)
}

func (api *CouponTemplateApi) DeleteCouponTemplate(c *gin.Context) {
	var template hxz.CouponTemplate
	err := c.ShouldBindJSON(&template)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = couponTemplateService.DeleteCouponTemplate(template.ID)
	if err != nil {
		global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

func (api *CouponTemplateApi) UpdateCouponTemplate(c *gin.Context) {
	var template hxz.CouponTemplate
	err := c.ShouldBindJSON(&template)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = couponTemplateService.UpdateCouponTemplate(&template)
	if err != nil {
		global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

func (api *CouponTemplateApi) FindCouponTemplate(c *gin.Context) {
	var template hxz.CouponTemplate
	err := c.ShouldBindQuery(&template)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := couponTemplateService.GetCouponTemplate(template.ID)
	if err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (api *CouponTemplateApi) GetCouponTemplateList(c *gin.Context) {
	var info request.CouponTemplateSearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := couponTemplateService.GetCouponTemplateList(info)
	if err != nil {
		global.GVA_LOG.Error("获取失败!", zap.Error(err))
		response.FailWithMessage("获取失败", c)
		return
	}
	response.OkWithDetailed(response.PageResult{
		List:     list,
		Total:    total,
		Page:     info.Page,
		PageSize: info.PageSize,
	}, "获取成功", c)
}

func (api *CouponTemplateApi) PublishCouponTemplate(c *gin.Context) {
	var template hxz.CouponTemplate
	err := c.ShouldBindJSON(&template)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = couponTemplateService.PublishCouponTemplate(template.ID)
	if err != nil {
		global.GVA_LOG.Error("发布失败!", zap.Error(err))
		response.FailWithMessage("发布失败: "+err.Error(), c)
		return
	}
	response.OkWithMessage("发布成功", c)
}

func (api *CouponTemplateApi) OfflineCouponTemplate(c *gin.Context) {
	var template hxz.CouponTemplate
	err := c.ShouldBindJSON(&template)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = couponTemplateService.OfflineCouponTemplate(template.ID)
	if err != nil {
		global.GVA_LOG.Error("下架失败!", zap.Error(err))
		response.FailWithMessage("下架失败: "+err.Error(), c)
		return
	}
	response.OkWithMessage("下架成功", c)
}
