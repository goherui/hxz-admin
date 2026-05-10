package hxz

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"github.com/flipped-aurora/gin-vue-admin/server/utils"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type BlacklistApi struct{}

func (api *BlacklistApi) AddBlacklist(c *gin.Context) {
	var req hxzReq.BlacklistAddReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	operatorID := utils.GetUserID(c)
	err = blacklistService.AddBlacklist(req, operatorID)
	if err != nil {
		global.GVA_LOG.Error("添加黑名单失败!", zap.Error(err))
		response.FailWithMessage("添加黑名单失败", c)
		return
	}
	response.OkWithMessage("添加黑名单成功", c)
}

func (api *BlacklistApi) RemoveBlacklist(c *gin.Context) {
	var req hxzReq.BlacklistRemoveReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	removedBy := utils.GetUserID(c)
	err = blacklistService.RemoveBlacklist(req, removedBy)
	if err != nil {
		global.GVA_LOG.Error("移除黑名单失败!", zap.Error(err))
		response.FailWithMessage("移除黑名单失败", c)
		return
	}
	response.OkWithMessage("移除黑名单成功", c)
}

func (api *BlacklistApi) GetBlacklistList(c *gin.Context) {
	var info hxzReq.BlacklistSearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := blacklistService.GetBlacklistList(info)
	if err != nil {
		global.GVA_LOG.Error("获取黑名单列表失败!", zap.Error(err))
		response.FailWithMessage("获取黑名单列表失败", c)
		return
	}
	response.OkWithDetailed(response.PageResult{
		List:     list,
		Total:    total,
		Page:     info.Page,
		PageSize: info.PageSize,
	}, "获取成功", c)
}

func (api *BlacklistApi) GetBlacklistByID(c *gin.Context) {
	var req struct {
		ID uint `json:"id" form:"id" binding:"required"`
	}
	err := c.ShouldBindQuery(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	data, err := blacklistService.GetBlacklistByID(req.ID)
	if err != nil {
		global.GVA_LOG.Error("获取黑名单详情失败!", zap.Error(err))
		response.FailWithMessage("获取黑名单详情失败", c)
		return
	}
	response.OkWithData(data, c)
}

func (api *BlacklistApi) SyncBlacklistToRedis(c *gin.Context) {
	err := blacklistService.SyncBlacklistToRedis()
	if err != nil {
		global.GVA_LOG.Error("同步黑名单到Redis失败!", zap.Error(err))
		response.FailWithMessage("同步黑名单到Redis失败", c)
		return
	}
	response.OkWithMessage("同步成功", c)
}
