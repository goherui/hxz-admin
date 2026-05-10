package hxz

import (
	"strconv"

	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/flipped-aurora/gin-vue-admin/server/model/hxz"
	hxzReq "github.com/flipped-aurora/gin-vue-admin/server/model/hxz/request"
	"github.com/flipped-aurora/gin-vue-admin/server/utils"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
)

type PassengerApi struct{}

func (api *PassengerApi) CreatePassenger(c *gin.Context) {
	var data hxz.Passenger
	err := c.ShouldBindJSON(&data)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	passenger, err := passengerService.CreatePassenger(data)
	if err != nil {
		global.GVA_LOG.Error("创建失败!", zap.Error(err))
		response.FailWithMessage("创建失败", c)
		return
	}
	response.OkWithData(passenger, c)
}

func (api *PassengerApi) DeletePassenger(c *gin.Context) {
	id, _ := strconv.Atoi(c.Query("id"))
	err := passengerService.DeletePassenger(uint(id))
	if err != nil {
		global.GVA_LOG.Error("删除失败!", zap.Error(err))
		response.FailWithMessage("删除失败", c)
		return
	}
	response.OkWithMessage("删除成功", c)
}

func (api *PassengerApi) DeletePassengerByIds(c *gin.Context) {
	var ids request.IdsReq
	err := c.ShouldBindJSON(&ids)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = passengerService.DeletePassengerByIds(ids)
	if err != nil {
		global.GVA_LOG.Error("批量删除失败!", zap.Error(err))
		response.FailWithMessage("批量删除失败", c)
		return
	}
	response.OkWithMessage("批量删除成功", c)
}

func (api *PassengerApi) UpdatePassenger(c *gin.Context) {
	var data hxz.Passenger
	err := c.ShouldBindJSON(&data)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	err = passengerService.UpdatePassenger(&data)
	if err != nil {
		global.GVA_LOG.Error("更新失败!", zap.Error(err))
		response.FailWithMessage("更新失败", c)
		return
	}
	response.OkWithMessage("更新成功", c)
}

func (api *PassengerApi) GetPassenger(c *gin.Context) {
	id, _ := strconv.Atoi(c.Query("id"))
	passenger, err := passengerService.GetPassenger(uint(id))
	if err != nil {
		global.GVA_LOG.Error("获取失败!", zap.Error(err))
		response.FailWithMessage("获取失败", c)
		return
	}
	response.OkWithData(passenger, c)
}

func (api *PassengerApi) GetPassengerList(c *gin.Context) {
	var info hxzReq.PassengerSearch
	err := c.ShouldBindQuery(&info)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	list, total, err := passengerService.GetPassengerList(info)
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

func (api *PassengerApi) BanPassenger(c *gin.Context) {
	var req hxzReq.PassengerBanReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	operatorID := utils.GetUserID(c)
	err = passengerService.BanPassenger(req, operatorID)
	if err != nil {
		global.GVA_LOG.Error("封禁失败!", zap.Error(err))
		response.FailWithMessage("封禁失败", c)
		return
	}
	response.OkWithMessage("封禁成功", c)
}

func (api *PassengerApi) UnbanPassenger(c *gin.Context) {
	var req hxzReq.PassengerUnbanReq
	err := c.ShouldBindJSON(&req)
	if err != nil {
		response.FailWithMessage(err.Error(), c)
		return
	}
	operatorID := utils.GetUserID(c)
	err = passengerService.UnbanPassenger(req, operatorID)
	if err != nil {
		global.GVA_LOG.Error("解封失败!", zap.Error(err))
		response.FailWithMessage("解封失败", c)
		return
	}
	response.OkWithMessage("解封成功", c)
}
