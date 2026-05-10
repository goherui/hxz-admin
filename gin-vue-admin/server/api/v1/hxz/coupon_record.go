package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type CouponRecordApi struct{}

func (api *CouponRecordApi) FindCouponRecord(c *gin.Context) {
	var record hxz.CouponRecord
	err := c.ShouldBindQuery(&record)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := couponRecordService.GetCouponRecord(record.ID)
	if err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (api *CouponRecordApi) GetCouponRecordList(c *gin.Context) {
	var info request.CouponRecordSearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := couponRecordService.GetCouponRecordList(info)
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

func (api *CouponRecordApi) ManualIssue(c *gin.Context) {
	var req request.CouponManualIssue
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = couponRecordService.ManualIssue(req)
	if err != nil {
		global.GVA_LOG.Error("发放失败!", zap.Error(err))
		response.FailWithMessage("发放失败: "+err.Error(), c)
		return
	}
	response.OkWithMessage("发放成功", c)
}
