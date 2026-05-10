SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- 1. 乘客信息表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_passenger` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `real_name` varchar(50) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `id_card` varchar(18) NOT NULL DEFAULT '' COMMENT '身份证号',
  `gender` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '性别:1男2女',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像URL',
  `status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态:1正常2冻结3注销',
  `register_source` varchar(20) NOT NULL DEFAULT '' COMMENT '注册来源:wechat/alipay/app等',
  `last_login_time` datetime(3) DEFAULT NULL COMMENT '最后登录时间',
  `total_trips` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '总行程数',
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '总消费金额',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_passenger_deleted_at` (`deleted_at`),
  KEY `idx_hxz_passenger_phone` (`phone`),
  KEY `idx_hxz_passenger_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='乘客信息表';

-- ----------------------------
-- 2. 司机信息表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_driver` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `real_name` varchar(50) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `id_card` varchar(18) NOT NULL DEFAULT '' COMMENT '身份证号',
  `gender` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '性别:1男2女',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像URL',
  `license_no` varchar(30) NOT NULL DEFAULT '' COMMENT '驾驶证号',
  `license_expire` date DEFAULT NULL COMMENT '驾驶证到期日',
  `id_card_front` varchar(255) NOT NULL DEFAULT '' COMMENT '身份证正面照URL',
  `id_card_back` varchar(255) NOT NULL DEFAULT '' COMMENT '身份证背面照URL',
  `license_img` varchar(255) NOT NULL DEFAULT '' COMMENT '驾驶证照片URL',
  `status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态:1待审核2已通过3已拒绝4已冻结5已注销',
  `audit_remark` varchar(255) NOT NULL DEFAULT '' COMMENT '审核备注',
  `city_code` varchar(20) NOT NULL DEFAULT '' COMMENT '所属城市编码',
  `register_time` datetime(3) DEFAULT NULL COMMENT '注册时间',
  `score` decimal(3,1) NOT NULL DEFAULT 5.0 COMMENT '评分',
  `total_trips` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '总行程数',
  `total_income` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '总收入',
  `online_status` tinyint UNSIGNED NOT NULL DEFAULT 2 COMMENT '在线状态:1在线2离线',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_driver_deleted_at` (`deleted_at`),
  KEY `idx_hxz_driver_phone` (`phone`),
  KEY `idx_hxz_driver_status` (`status`),
  KEY `idx_hxz_driver_city_code` (`city_code`),
  KEY `idx_hxz_driver_online_status` (`online_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='司机信息表';

-- ----------------------------
-- 3. 司机车辆信息表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_driver_vehicle` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `driver_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '司机ID',
  `plate_no` varchar(20) NOT NULL DEFAULT '' COMMENT '车牌号',
  `vehicle_model` varchar(50) NOT NULL DEFAULT '' COMMENT '车辆型号',
  `vehicle_color` varchar(20) NOT NULL DEFAULT '' COMMENT '车辆颜色',
  `vehicle_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '车辆类型:1快车2专车3豪华车',
  `seat_count` tinyint UNSIGNED NOT NULL DEFAULT 5 COMMENT '座位数',
  `vehicle_img` varchar(255) NOT NULL DEFAULT '' COMMENT '车辆照片URL',
  `plate_img` varchar(255) NOT NULL DEFAULT '' COMMENT '车牌照片URL',
  `insurance_expire` date DEFAULT NULL COMMENT '保险到期日',
  `status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态:1正常2过期',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_driver_vehicle_deleted_at` (`deleted_at`),
  KEY `idx_hxz_driver_vehicle_driver_id` (`driver_id`),
  KEY `idx_hxz_driver_vehicle_plate_no` (`plate_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='司机车辆信息表';

-- ----------------------------
-- 4. 司机审核记录表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_driver_audit` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `driver_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '司机ID',
  `audit_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '审核类型:1入驻审核2资料变更审核',
  `audit_status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '审核状态:1待审核2通过3拒绝',
  `auditor_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '审核人ID',
  `audit_remark` varchar(255) NOT NULL DEFAULT '' COMMENT '审核备注',
  `submit_data` json DEFAULT NULL COMMENT '提交资料(JSON)',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_driver_audit_deleted_at` (`deleted_at`),
  KEY `idx_hxz_driver_audit_driver_id` (`driver_id`),
  KEY `idx_hxz_driver_audit_audit_status` (`audit_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='司机审核记录表';

-- ----------------------------
-- 5. 订单表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_order` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `order_no` varchar(32) NOT NULL DEFAULT '' COMMENT '订单号',
  `passenger_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '乘客ID',
  `driver_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '司机ID',
  `city_code` varchar(20) NOT NULL DEFAULT '' COMMENT '城市编码',
  `order_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '订单类型:1快车2专车3豪华车',
  `order_status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '订单状态:1待派单2已派单3已接单4行程中5已完成6已取消7异常',
  `start_address` varchar(255) NOT NULL DEFAULT '' COMMENT '起点地址',
  `start_lng` decimal(10,6) NOT NULL DEFAULT 0.000000 COMMENT '起点经度',
  `start_lat` decimal(10,6) NOT NULL DEFAULT 0.000000 COMMENT '起点纬度',
  `end_address` varchar(255) NOT NULL DEFAULT '' COMMENT '终点地址',
  `end_lng` decimal(10,6) NOT NULL DEFAULT 0.000000 COMMENT '终点经度',
  `end_lat` decimal(10,6) NOT NULL DEFAULT 0.000000 COMMENT '终点纬度',
  `start_time` datetime(3) DEFAULT NULL COMMENT '出发时间',
  `end_time` datetime(3) DEFAULT NULL COMMENT '到达时间',
  `cancel_time` datetime(3) DEFAULT NULL COMMENT '取消时间',
  `cancel_reason` varchar(255) NOT NULL DEFAULT '' COMMENT '取消原因',
  `actual_distance` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '实际距离(公里)',
  `actual_duration` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '实际时长(秒)',
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '订单总金额',
  `passenger_amount` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '乘客实付金额',
  `driver_income` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '司机收入',
  `platform_fee` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '平台服务费',
  `pay_method` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '支付方式:1微信2支付宝3余额',
  `pay_status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '支付状态:1未支付2已支付3已退款',
  `pay_time` datetime(3) DEFAULT NULL COMMENT '支付时间',
  `is_abnormal` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否异常:0否1是',
  `abnormal_type` varchar(50) NOT NULL DEFAULT '' COMMENT '异常类型',
  `abnormal_remark` varchar(255) NOT NULL DEFAULT '' COMMENT '异常备注',
  `dispatch_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '派单类型:1自动2人工',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_order_deleted_at` (`deleted_at`),
  UNIQUE KEY `uk_hxz_order_order_no` (`order_no`),
  KEY `idx_hxz_order_passenger_id` (`passenger_id`),
  KEY `idx_hxz_order_driver_id` (`driver_id`),
  KEY `idx_hxz_order_city_code` (`city_code`),
  KEY `idx_hxz_order_order_status` (`order_status`),
  KEY `idx_hxz_order_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单表';

-- ----------------------------
-- 6. 行程轨迹表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_trip_track` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `order_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单ID',
  `order_no` varchar(32) NOT NULL DEFAULT '' COMMENT '订单号',
  `track_data` longtext DEFAULT NULL COMMENT '轨迹数据(JSON)',
  `start_time` datetime(3) DEFAULT NULL COMMENT '轨迹开始时间',
  `end_time` datetime(3) DEFAULT NULL COMMENT '轨迹结束时间',
  `total_points` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '轨迹点总数',
  `is_abnormal` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否异常:0否1是',
  `abnormal_type` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '异常类型:1偏航2异常停留3其他',
  `check_status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '核查状态:1待核查2已核查3异常已标记',
  `checker_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '核查人ID',
  `check_remark` varchar(255) NOT NULL DEFAULT '' COMMENT '核查备注',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_trip_track_deleted_at` (`deleted_at`),
  KEY `idx_hxz_trip_track_order_id` (`order_id`),
  KEY `idx_hxz_trip_track_order_no` (`order_no`),
  KEY `idx_hxz_trip_track_is_abnormal` (`is_abnormal`),
  KEY `idx_hxz_trip_track_check_status` (`check_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='行程轨迹表';

-- ----------------------------
-- 7. 派单城市策略表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_dispatch_city_strategy` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `city_code` varchar(20) NOT NULL DEFAULT '' COMMENT '城市编码',
  `city_name` varchar(50) NOT NULL DEFAULT '' COMMENT '城市名称',
  `strategy_name` varchar(100) NOT NULL DEFAULT '' COMMENT '策略名称',
  `strategy_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '策略类型:1默认2高峰3特殊',
  `is_enabled` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否启用:0否1是',
  `priority` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '优先级(数值越大优先级越高)',
  `effective_date` date DEFAULT NULL COMMENT '生效日期',
  `expire_date` date DEFAULT NULL COMMENT '失效日期',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_dispatch_city_strategy_deleted_at` (`deleted_at`),
  KEY `idx_hxz_dispatch_city_strategy_city_code` (`city_code`),
  KEY `idx_hxz_dispatch_city_strategy_is_enabled` (`is_enabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='派单城市策略表';

-- ----------------------------
-- 8. 派单时段规则表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_dispatch_time_rule` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `strategy_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '策略ID',
  `rule_name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则名称',
  `time_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '时段类型:1工作日2周末3节假日',
  `start_time` time NOT NULL DEFAULT '00:00:00' COMMENT '开始时间',
  `end_time` time NOT NULL DEFAULT '23:59:59' COMMENT '结束时间',
  `is_enabled` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否启用:0否1是',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_dispatch_time_rule_deleted_at` (`deleted_at`),
  KEY `idx_hxz_dispatch_time_rule_strategy_id` (`strategy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='派单时段规则表';

-- ----------------------------
-- 9. 派单半径配置表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_dispatch_radius_config` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `strategy_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '策略ID',
  `rule_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '时段规则ID',
  `vehicle_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '车辆类型:1快车2专车3豪华车',
  `min_radius` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '最小半径(公里)',
  `max_radius` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '最大半径(公里)',
  `expand_step` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '扩展步长(公里)',
  `max_wait_time` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '最大等待时间(秒)',
  `is_enabled` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否启用:0否1是',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_dispatch_radius_config_deleted_at` (`deleted_at`),
  KEY `idx_hxz_dispatch_radius_config_strategy_id` (`strategy_id`),
  KEY `idx_hxz_dispatch_radius_config_rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='派单半径配置表';

-- ----------------------------
-- 10. 派单权重配置表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_dispatch_weight_config` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `strategy_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '策略ID',
  `weight_name` varchar(50) NOT NULL DEFAULT '' COMMENT '权重名称',
  `weight_key` varchar(30) NOT NULL DEFAULT '' COMMENT '权重键:distance/direction/score/wait_time/order_count',
  `weight_value` decimal(5,2) NOT NULL DEFAULT 0.00 COMMENT '权重值',
  `weight_desc` varchar(255) NOT NULL DEFAULT '' COMMENT '权重描述',
  `is_enabled` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否启用:0否1是',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_dispatch_weight_config_deleted_at` (`deleted_at`),
  KEY `idx_hxz_dispatch_weight_config_strategy_id` (`strategy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='派单权重配置表';

-- ----------------------------
-- 11. 派单监控数据表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_dispatch_monitor` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `city_code` varchar(20) NOT NULL DEFAULT '' COMMENT '城市编码',
  `monitor_date` date NOT NULL COMMENT '监控日期',
  `total_orders` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '总订单数',
  `auto_dispatch_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '自动派单数',
  `manual_dispatch_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '人工派单数',
  `avg_dispatch_time` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '平均派单时长(秒)',
  `avg_wait_time` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '平均等待时长(秒)',
  `dispatch_success_rate` decimal(5,2) NOT NULL DEFAULT 0.00 COMMENT '派单成功率(%)',
  `timeout_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '超时次数',
  `cancel_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '取消次数',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_dispatch_monitor_deleted_at` (`deleted_at`),
  KEY `idx_hxz_dispatch_monitor_city_code` (`city_code`),
  KEY `idx_hxz_dispatch_monitor_monitor_date` (`monitor_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='派单监控数据表';

-- ----------------------------
-- 12. 人工干预指派记录表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_dispatch_manual_assign` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `order_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单ID',
  `order_no` varchar(32) NOT NULL DEFAULT '' COMMENT '订单号',
  `original_driver_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '原司机ID',
  `assign_driver_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '指派司机ID',
  `operator_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '操作人ID',
  `assign_reason` varchar(255) NOT NULL DEFAULT '' COMMENT '指派原因',
  `city_code` varchar(20) NOT NULL DEFAULT '' COMMENT '城市编码',
  `assign_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '指派类型:1改派2首次人工指派',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_dispatch_manual_assign_deleted_at` (`deleted_at`),
  KEY `idx_hxz_dispatch_manual_assign_order_id` (`order_id`),
  KEY `idx_hxz_dispatch_manual_assign_order_no` (`order_no`),
  KEY `idx_hxz_dispatch_manual_assign_city_code` (`city_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='人工干预指派记录表';

-- ----------------------------
-- 13. 财务流水表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_finance_flow` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `flow_no` varchar(32) NOT NULL DEFAULT '' COMMENT '流水号',
  `order_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单ID',
  `order_no` varchar(32) NOT NULL DEFAULT '' COMMENT '订单号',
  `flow_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '流水类型:1收入2支出3退款4调整',
  `amount` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '金额',
  `passenger_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '乘客ID',
  `driver_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '司机ID',
  `city_code` varchar(20) NOT NULL DEFAULT '' COMMENT '城市编码',
  `pay_method` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '支付方式:1微信2支付宝3余额',
  `platform_fee` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '平台服务费',
  `driver_income` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '司机收入',
  `settlement_status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '结算状态:1未结算2已结算',
  `settlement_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '结算ID',
  `flow_date` date DEFAULT NULL COMMENT '流水日期',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_finance_flow_deleted_at` (`deleted_at`),
  UNIQUE KEY `uk_hxz_finance_flow_flow_no` (`flow_no`),
  KEY `idx_hxz_finance_flow_order_id` (`order_id`),
  KEY `idx_hxz_finance_flow_order_no` (`order_no`),
  KEY `idx_hxz_finance_flow_city_code` (`city_code`),
  KEY `idx_hxz_finance_flow_flow_date` (`flow_date`),
  KEY `idx_hxz_finance_flow_settlement_status` (`settlement_status`),
  KEY `idx_hxz_finance_flow_flow_type` (`flow_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='财务流水表';

-- ----------------------------
-- 14. 对账结算表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_finance_settlement` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `settlement_no` varchar(32) NOT NULL DEFAULT '' COMMENT '结算单号',
  `settlement_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '结算类型:1日结2周结3月结',
  `settlement_period_start` date DEFAULT NULL COMMENT '结算周期开始',
  `settlement_period_end` date DEFAULT NULL COMMENT '结算周期结束',
  `city_code` varchar(20) NOT NULL DEFAULT '' COMMENT '城市编码',
  `total_orders` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '总订单数',
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '总金额',
  `total_platform_fee` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '总平台服务费',
  `total_driver_income` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '总司机收入',
  `total_refund` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '总退款金额',
  `settlement_status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '结算状态:1待审核2已审核3已打款4异常',
  `auditor_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '审核人ID',
  `audit_time` datetime(3) DEFAULT NULL COMMENT '审核时间',
  `payment_time` datetime(3) DEFAULT NULL COMMENT '打款时间',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_finance_settlement_deleted_at` (`deleted_at`),
  UNIQUE KEY `uk_hxz_finance_settlement_settlement_no` (`settlement_no`),
  KEY `idx_hxz_finance_settlement_city_code` (`city_code`),
  KEY `idx_hxz_finance_settlement_settlement_status` (`settlement_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='对账结算表';

-- ----------------------------
-- 15. 司机结算明细表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_driver_settlement` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `settlement_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '结算ID(关联hxz_finance_settlement)',
  `driver_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '司机ID',
  `order_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单数',
  `total_income` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '总收入',
  `platform_fee` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '平台服务费',
  `actual_amount` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '实发金额',
  `settlement_status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '结算状态:1未结算2已结算',
  `payment_time` datetime(3) DEFAULT NULL COMMENT '打款时间',
  `payment_no` varchar(64) NOT NULL DEFAULT '' COMMENT '打款流水号',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_driver_settlement_deleted_at` (`deleted_at`),
  KEY `idx_hxz_driver_settlement_settlement_id` (`settlement_id`),
  KEY `idx_hxz_driver_settlement_driver_id` (`driver_id`),
  KEY `idx_hxz_driver_settlement_settlement_status` (`settlement_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='司机结算明细表';

-- ----------------------------
-- 16. 优惠券表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_coupon` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `coupon_name` varchar(100) NOT NULL DEFAULT '' COMMENT '优惠券名称',
  `coupon_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '优惠券类型:1满减2折扣3立减',
  `coupon_value` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '优惠券面值/折扣率',
  `min_amount` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '最低使用金额',
  `total_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '发放总量',
  `remain_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '剩余数量',
  `per_limit` int UNSIGNED NOT NULL DEFAULT 1 COMMENT '每人限领数量',
  `start_time` datetime(3) DEFAULT NULL COMMENT '生效时间',
  `end_time` datetime(3) DEFAULT NULL COMMENT '失效时间',
  `city_code` varchar(20) NOT NULL DEFAULT '' COMMENT '城市编码',
  `vehicle_type` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '适用车型:0全部1快车2专车3豪华车',
  `status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态:1未开始2进行中3已结束4已暂停',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_coupon_deleted_at` (`deleted_at`),
  KEY `idx_hxz_coupon_city_code` (`city_code`),
  KEY `idx_hxz_coupon_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='优惠券表';

-- ----------------------------
-- 17. 优惠券领取/使用记录表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_coupon_record` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `coupon_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '优惠券ID',
  `passenger_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '乘客ID',
  `order_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单ID',
  `use_status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '使用状态:1未使用2已使用3已过期',
  `receive_time` datetime(3) DEFAULT NULL COMMENT '领取时间',
  `use_time` datetime(3) DEFAULT NULL COMMENT '使用时间',
  `expire_time` datetime(3) DEFAULT NULL COMMENT '过期时间',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_coupon_record_deleted_at` (`deleted_at`),
  KEY `idx_hxz_coupon_record_coupon_id` (`coupon_id`),
  KEY `idx_hxz_coupon_record_passenger_id` (`passenger_id`),
  KEY `idx_hxz_coupon_record_use_status` (`use_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='优惠券领取/使用记录表';

-- ----------------------------
-- 18. 营销活动表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_marketing_activity` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `activity_name` varchar(100) NOT NULL DEFAULT '' COMMENT '活动名称',
  `activity_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '活动类型:1首单优惠2拉新奖励3充值赠送4节日活动',
  `activity_rule` json DEFAULT NULL COMMENT '活动规则(JSON)',
  `start_time` datetime(3) DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime(3) DEFAULT NULL COMMENT '结束时间',
  `city_code` varchar(20) NOT NULL DEFAULT '' COMMENT '城市编码',
  `budget` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '活动预算',
  `used_budget` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '已使用预算',
  `status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态:1未开始2进行中3已结束4已暂停',
  `operator_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '操作人ID',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_marketing_activity_deleted_at` (`deleted_at`),
  KEY `idx_hxz_marketing_activity_city_code` (`city_code`),
  KEY `idx_hxz_marketing_activity_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='营销活动表';

-- ----------------------------
-- 19. 风控黑名单表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_risk_blacklist` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `target_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '目标类型:1乘客2司机',
  `target_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '目标ID',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `real_name` varchar(50) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `blacklist_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '黑名单类型:1欺诈2恶意取消3骚扰4危险驾驶5其他',
  `risk_level` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '风险等级:1低2中3高',
  `reason` varchar(255) NOT NULL DEFAULT '' COMMENT '加入原因',
  `evidence` json DEFAULT NULL COMMENT '证据(JSON)',
  `operator_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '操作人ID',
  `is_permanent` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否永久:0否1是',
  `expire_time` datetime(3) DEFAULT NULL COMMENT '到期时间',
  `status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '状态:1生效中2已解除',
  `unblock_operator_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '解除操作人ID',
  `unblock_time` datetime(3) DEFAULT NULL COMMENT '解除时间',
  `unblock_reason` varchar(255) NOT NULL DEFAULT '' COMMENT '解除原因',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_risk_blacklist_deleted_at` (`deleted_at`),
  KEY `idx_hxz_risk_blacklist_target` (`target_type`, `target_id`),
  KEY `idx_hxz_risk_blacklist_phone` (`phone`),
  KEY `idx_hxz_risk_blacklist_status` (`status`),
  KEY `idx_hxz_risk_blacklist_blacklist_type` (`blacklist_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='风控黑名单表';

-- ----------------------------
-- 20. 账号封禁记录表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_account_ban` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `target_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '目标类型:1乘客2司机',
  `target_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '目标ID',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `ban_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '封禁类型:1临时封禁2永久封禁',
  `ban_reason` varchar(255) NOT NULL DEFAULT '' COMMENT '封禁原因',
  `operator_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '操作人ID',
  `start_time` datetime(3) DEFAULT NULL COMMENT '封禁开始时间',
  `end_time` datetime(3) DEFAULT NULL COMMENT '封禁结束时间',
  `is_active` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否生效:0否1是',
  `unban_operator_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '解封操作人ID',
  `unban_time` datetime(3) DEFAULT NULL COMMENT '解封时间',
  `unban_reason` varchar(255) NOT NULL DEFAULT '' COMMENT '解封原因',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_account_ban_deleted_at` (`deleted_at`),
  KEY `idx_hxz_account_ban_target` (`target_type`, `target_id`),
  KEY `idx_hxz_account_ban_phone` (`phone`),
  KEY `idx_hxz_account_ban_is_active` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='账号封禁记录表';

-- ----------------------------
-- 21. 客服工单表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_service_ticket` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `ticket_no` varchar(32) NOT NULL DEFAULT '' COMMENT '工单号',
  `order_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单ID',
  `order_no` varchar(32) NOT NULL DEFAULT '' COMMENT '订单号',
  `passenger_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '乘客ID',
  `driver_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '司机ID',
  `ticket_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '工单类型:1投诉2咨询3申诉4退款5其他',
  `ticket_status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '工单状态:1待处理2处理中3待用户确认4已关闭5已升级',
  `priority` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '优先级:1低2中3高4紧急',
  `title` varchar(200) NOT NULL DEFAULT '' COMMENT '工单标题',
  `content` text DEFAULT NULL COMMENT '工单内容',
  `handler_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '处理人ID',
  `handle_time` datetime(3) DEFAULT NULL COMMENT '处理时间',
  `handle_result` varchar(255) NOT NULL DEFAULT '' COMMENT '处理结果',
  `satisfaction` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '满意度:1-5分',
  `source` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '来源:1乘客端2司机端3系统自动4人工创建',
  `close_time` datetime(3) DEFAULT NULL COMMENT '关闭时间',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_service_ticket_deleted_at` (`deleted_at`),
  UNIQUE KEY `uk_hxz_service_ticket_ticket_no` (`ticket_no`),
  KEY `idx_hxz_service_ticket_order_id` (`order_id`),
  KEY `idx_hxz_service_ticket_order_no` (`order_no`),
  KEY `idx_hxz_service_ticket_passenger_id` (`passenger_id`),
  KEY `idx_hxz_service_ticket_driver_id` (`driver_id`),
  KEY `idx_hxz_service_ticket_ticket_status` (`ticket_status`),
  KEY `idx_hxz_service_ticket_ticket_type` (`ticket_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='客服工单表';

-- ----------------------------
-- 22. 投诉记录表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_complaint` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `ticket_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '工单ID',
  `order_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '订单ID',
  `order_no` varchar(32) NOT NULL DEFAULT '' COMMENT '订单号',
  `complainant_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '投诉人类型:1乘客2司机',
  `complainant_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '投诉人ID',
  `respondent_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '被投诉人类型:1乘客2司机3平台',
  `respondent_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '被投诉人ID',
  `complaint_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '投诉类型:1服务态度2危险驾驶3绕路4拒载5收费争议6其他',
  `complaint_content` text DEFAULT NULL COMMENT '投诉内容',
  `evidence` json DEFAULT NULL COMMENT '证据(JSON)',
  `complaint_status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '投诉状态:1待处理2处理中3已处理',
  `handler_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '处理人ID',
  `handle_result` varchar(255) NOT NULL DEFAULT '' COMMENT '处理结果',
  `compensation_amount` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '赔偿金额',
  `penalty_type` tinyint UNSIGNED NOT NULL DEFAULT 4 COMMENT '处罚类型:1警告2罚款3封禁4无',
  `penalty_desc` varchar(255) NOT NULL DEFAULT '' COMMENT '处罚描述',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_complaint_deleted_at` (`deleted_at`),
  KEY `idx_hxz_complaint_ticket_id` (`ticket_id`),
  KEY `idx_hxz_complaint_order_id` (`order_id`),
  KEY `idx_hxz_complaint_order_no` (`order_no`),
  KEY `idx_hxz_complaint_complaint_status` (`complaint_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='投诉记录表';

-- ----------------------------
-- 23. 申诉记录表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_appeal` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `ticket_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '工单ID',
  `complaint_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '投诉ID',
  `appellant_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '申诉人类型:1乘客2司机',
  `appellant_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '申诉人ID',
  `appeal_reason` text DEFAULT NULL COMMENT '申诉原因',
  `appeal_evidence` json DEFAULT NULL COMMENT '申诉证据(JSON)',
  `appeal_status` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '申诉状态:1待审核2已通过3已驳回',
  `auditor_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '审核人ID',
  `audit_remark` varchar(255) NOT NULL DEFAULT '' COMMENT '审核备注',
  `audit_time` datetime(3) DEFAULT NULL COMMENT '审核时间',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_appeal_deleted_at` (`deleted_at`),
  KEY `idx_hxz_appeal_ticket_id` (`ticket_id`),
  KEY `idx_hxz_appeal_complaint_id` (`complaint_id`),
  KEY `idx_hxz_appeal_appeal_status` (`appeal_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='申诉记录表';

-- ----------------------------
-- 24. 城市开通配置表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_city_config` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `city_code` varchar(20) NOT NULL DEFAULT '' COMMENT '城市编码',
  `city_name` varchar(50) NOT NULL DEFAULT '' COMMENT '城市名称',
  `province` varchar(50) NOT NULL DEFAULT '' COMMENT '省份',
  `is_opened` tinyint UNSIGNED NOT NULL DEFAULT 0 COMMENT '是否开通:0否1是',
  `open_time` datetime(3) DEFAULT NULL COMMENT '开通时间',
  `service_types` json DEFAULT NULL COMMENT '服务类型(JSON)',
  `base_price` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '起步价',
  `base_distance` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '起步里程(公里)',
  `price_per_km` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '每公里价格',
  `price_per_minute` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '每分钟价格',
  `night_start_time` time DEFAULT NULL COMMENT '夜间开始时间',
  `night_end_time` time DEFAULT NULL COMMENT '夜间结束时间',
  `night_surcharge` decimal(5,2) NOT NULL DEFAULT 0.00 COMMENT '夜间附加费率(%)',
  `min_charge` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '最低消费',
  `operator_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '操作人ID',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_city_config_deleted_at` (`deleted_at`),
  UNIQUE KEY `uk_hxz_city_config_city_code` (`city_code`),
  KEY `idx_hxz_city_config_is_opened` (`is_opened`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='城市开通配置表';

-- ----------------------------
-- 25. 平台费率配置表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_platform_rate` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `city_code` varchar(20) NOT NULL DEFAULT '' COMMENT '城市编码',
  `vehicle_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '车辆类型:1快车2专车3豪华车',
  `rate_type` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '费率类型:1抽成比例2固定费用',
  `rate_value` decimal(5,2) NOT NULL DEFAULT 0.00 COMMENT '费率值(百分比或固定金额)',
  `min_fee` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '最低费用',
  `max_fee` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '最高费用(0表示不限)',
  `effective_date` date DEFAULT NULL COMMENT '生效日期',
  `expire_date` date DEFAULT NULL COMMENT '失效日期',
  `is_enabled` tinyint UNSIGNED NOT NULL DEFAULT 1 COMMENT '是否启用:0否1是',
  `operator_id` bigint UNSIGNED NOT NULL DEFAULT 0 COMMENT '操作人ID',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_platform_rate_deleted_at` (`deleted_at`),
  KEY `idx_hxz_platform_rate_city_code` (`city_code`),
  KEY `idx_hxz_platform_rate_vehicle_type` (`vehicle_type`),
  KEY `idx_hxz_platform_rate_is_enabled` (`is_enabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='平台费率配置表';

-- ----------------------------
-- 26. 日统计表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_stat_daily` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `stat_date` date NOT NULL COMMENT '统计日期',
  `total_orders` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '总订单数',
  `completed_orders` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '完成订单数',
  `canceled_orders` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '取消订单数',
  `total_passengers` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '活跃乘客数',
  `total_drivers` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '活跃司机数',
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '总金额',
  `platform_income` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '平台收入',
  `avg_order_amount` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '平均订单金额',
  `avg_dispatch_time` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '平均派单时长(秒)',
  `avg_wait_time` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '平均等待时长(秒)',
  `new_passengers` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '新增乘客数',
  `new_drivers` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '新增司机数',
  `complaint_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '投诉数',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_stat_daily_deleted_at` (`deleted_at`),
  UNIQUE KEY `uk_hxz_stat_daily_stat_date` (`stat_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='日统计表';

-- ----------------------------
-- 27. 城市日统计表
-- ----------------------------
CREATE TABLE IF NOT EXISTS `hxz_stat_city_daily` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `stat_date` date NOT NULL COMMENT '统计日期',
  `city_code` varchar(20) NOT NULL DEFAULT '' COMMENT '城市编码',
  `city_name` varchar(50) NOT NULL DEFAULT '' COMMENT '城市名称',
  `total_orders` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '总订单数',
  `completed_orders` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '完成订单数',
  `canceled_orders` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '取消订单数',
  `total_passengers` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '活跃乘客数',
  `total_drivers` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '活跃司机数',
  `total_amount` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '总金额',
  `platform_income` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '平台收入',
  `avg_order_amount` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '平均订单金额',
  `avg_dispatch_time` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '平均派单时长(秒)',
  `complaint_count` int UNSIGNED NOT NULL DEFAULT 0 COMMENT '投诉数',
  `created_at` datetime(3) DEFAULT NULL COMMENT '创建时间',
  `updated_at` datetime(3) DEFAULT NULL COMMENT '更新时间',
  `deleted_at` datetime(3) DEFAULT NULL COMMENT '删除时间(软删除)',
  PRIMARY KEY (`id`),
  KEY `idx_hxz_stat_city_daily_deleted_at` (`deleted_at`),
  UNIQUE KEY `uk_hxz_stat_city_daily_date_city` (`stat_date`, `city_code`),
  KEY `idx_hxz_stat_city_daily_city_code` (`city_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='城市日统计表';

SET FOREIGN_KEY_CHECKS = 1;
