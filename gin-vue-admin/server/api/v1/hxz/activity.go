package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type ActivityApi struct{}

func (api *ActivityApi) CreateActivity(c *gin.Context) {
	var activity hxz.Activity
	err := c.ShouldBindJSON(&activity)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = activityService.CreateActivity(activity)
	if err != nil {
		global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
	response.OkWithMessage("创建成功", c)
}

func (api *ActivityApi) DeleteActivity(c *gin.Context) {
	var activity hxz.Activity
	err := c.ShouldBindJSON(&activity)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = activityService.DeleteActivity(activity.ID)
	if err != nil {
		global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

func (api *ActivityApi) UpdateActivity(c *gin.Context) {
	var activity hxz.Activity
	err := c.ShouldBindJSON(&activity)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = activityService.UpdateActivity(&activity)
	if err != nil {
		global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

func (api *ActivityApi) FindActivity(c *gin.Context) {
	var activity hxz.Activity
	err := c.ShouldBindQuery(&activity)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := activityService.GetActivity(activity.ID)
	if err != nil {
		global.GVA_LOG.Error("查询失败!", zap.Error(err))
		response.FailWithMessage("查询失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (api *ActivityApi) GetActivityList(c *gin.Context) {
	var info request.ActivitySearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := activityService.GetActivityList(info)
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

func (api *ActivityApi) PauseActivity(c *gin.Context) {
	var activity hxz.Activity
	err := c.ShouldBindJSON(&activity)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = activityService.PauseActivity(activity.ID)
	if err != nil {
		global.GVA_LOG.Error("暂停失败!", zap.Error(err))
		response.FailWithMessage("暂停失败: "+err.Error(), c)
		return
	}
	response.OkWithMessage("暂停成功", c)
}

func (api *ActivityApi) ResumeActivity(c *gin.Context) {
	var activity hxz.Activity
	err := c.ShouldBindJSON(&activity)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = activityService.ResumeActivity(activity.ID)
	if err != nil {
		global.GVA_LOG.Error("恢复失败!", zap.Error(err))
		response.FailWithMessage("恢复失败: "+err.Error(), c)
		return
	}
	response.OkWithMessage("恢复成功", c)
}
