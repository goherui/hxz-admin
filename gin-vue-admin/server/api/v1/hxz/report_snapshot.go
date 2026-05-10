package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type ReportSnapshotApi struct{}

func (api *ReportSnapshotApi) CreateReportSnapshot(c *gin.Context) {
	var snapshot hxz.ReportSnapshot
	err := c.ShouldBindJSON(&snapshot)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = reportSnapshotService.CreateReportSnapshot(snapshot)
	if err != nil {
		global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
	response.OkWithMessage("创建成功", c)
}

func (api *ReportSnapshotApi) DeleteReportSnapshot(c *gin.Context) {
	var snapshot hxz.ReportSnapshot
	err := c.ShouldBindJSON(&snapshot)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = reportSnapshotService.DeleteReportSnapshot(snapshot.ID)
	if err != nil {
		global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

func (api *ReportSnapshotApi) UpdateReportSnapshot(c *gin.Context) {
	var snapshot hxz.ReportSnapshot
	err := c.ShouldBindJSON(&snapshot)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = reportSnapshotService.UpdateReportSnapshot(&snapshot)
	if err != nil {
		global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

func (api *ReportSnapshotApi) FindReportSnapshot(c *gin.Context) {
	var snapshot hxz.ReportSnapshot
	err := c.ShouldBindQuery(&snapshot)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := reportSnapshotService.GetReportSnapshot(snapshot.ID)
	if err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (api *ReportSnapshotApi) GetReportSnapshotList(c *gin.Context) {
	var info hxzReq.ReportOrderReq
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := reportSnapshotService.GetReportSnapshotList("", "", "", info)
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

func (api *ReportSnapshotApi) GetDashboard(c *gin.Context) {
	var req hxzReq.ReportDashboardReq
	err := c.ShouldBindQuery(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := reportSnapshotService.GetDashboard(req)
	if err != nil {
		global.GVA_LOG.Error("获取看板数据失败!", zap.Error(err))
		response.FailWithMessage("获取看板数据失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (api *ReportSnapshotApi) GetOrderReport(c *gin.Context) {
	var info hxzReq.ReportOrderReq
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := reportSnapshotService.GetOrderReport(info)
	if err != nil {
		global.GVA_LOG.Error("获取订单报表失败!", zap.Error(err))
		response.FailWithMessage("获取订单报表失败", c)
		return
	}
	response.OkWithDetailed(response.PageResult{
		List:     list,
		Total:    total,
		Page:     info.Page,
		PageSize: info.PageSize,
	}, "获取成功", c)
}

func (api *ReportSnapshotApi) GetDriverReport(c *gin.Context) {
	var info hxzReq.ReportDriverReq
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := reportSnapshotService.GetDriverReport(info)
	if err != nil {
		global.GVA_LOG.Error("获取司机报表失败!", zap.Error(err))
		response.FailWithMessage("获取司机报表失败", c)
		return
	}
	response.OkWithDetailed(response.PageResult{
		List:     list,
		Total:    total,
		Page:     info.Page,
		PageSize: info.PageSize,
	}, "获取成功", c)
}

func (api *ReportSnapshotApi) GetFinanceReport(c *gin.Context) {
	var info hxzReq.ReportFinanceReq
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := reportSnapshotService.GetFinanceReport(info)
	if err != nil {
		global.GVA_LOG.Error("获取财务报表失败!", zap.Error(err))
		response.FailWithMessage("获取财务报表失败", c)
		return
	}
	response.OkWithDetailed(response.PageResult{
		List:     list,
		Total:    total,
		Page:     info.Page,
		PageSize: info.PageSize,
	}, "获取成功", c)
}
