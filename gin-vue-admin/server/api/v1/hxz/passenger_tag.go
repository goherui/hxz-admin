package hxz

import (
	"strconv"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type PassengerTagApi struct{}

func (api *PassengerTagApi) AddPassengerTag(c *gin.Context) {
	var req hxzReq.PassengerTagReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = passengerTagService.AddPassengerTag(req)
	if err != nil {
		global.GVA_LOG.Error("添加标签失败!", zap.Error(err))
		response.FailWithMessage("添加标签失败", c)
		return
	}
	response.OkWithMessage("添加成功", c)
}

func (api *PassengerTagApi) RemovePassengerTag(c *gin.Context) {
	var req hxzReq.PassengerTagReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = passengerTagService.RemovePassengerTag(req)
	if err != nil {
		global.GVA_LOG.Error("移除标签失败!", zap.Error(err))
		response.FailWithMessage("移除标签失败", c)
		return
	}
	response.OkWithMessage("移除成功", c)
}

func (api *PassengerTagApi) BatchSetPassengerTags(c *gin.Context) {
	var req hxzReq.PassengerTagBatchReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = passengerTagService.BatchSetPassengerTags(req)
	if err != nil {
		global.GVA_LOG.Error("批量设置标签失败!", zap.Error(err))
		response.FailWithMessage("批量设置标签失败", c)
		return
	}
	response.OkWithMessage("设置成功", c)
}

func (api *PassengerTagApi) GetPassengerTags(c *gin.Context) {
	passengerID, _ := strconv.Atoi(c.Query("passengerId"))
	tags, err := passengerTagService.GetPassengerTags(uint(passengerID))
	if err != nil {
		global.GVA_LOG.Error("获取标签失败!", zap.Error(err))
		response.FailWithMessage("获取标签失败", c)
		return
	}
	response.OkWithData(tags, c)
}
