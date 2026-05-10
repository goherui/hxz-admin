-- ============================================================
-- 花小猪运营后台 建表SQL
-- 数据库: hxz | 字符集: utf8mb4 | 排序: utf8mb4_general_ci
-- 所有业务表统一 hxz_ 前缀，软删除 via deleted_at
-- 可直接导入 MySQL 8.0+
-- ============================================================

-- -----------------------------------------------------------
-- 1. 乘客用户管理
-- -----------------------------------------------------------

CREATE TABLE `hxz_passengers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号（加密存储）',
  `nickname` varchar(50) NOT NULL DEFAULT '' COMMENT '昵称',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像URL',
  `gender` tinyint NOT NULL DEFAULT 0 COMMENT '性别 0未知 1男 2女',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态 1正常 2封禁',
  `register_city` varchar(20) NOT NULL DEFAULT '' COMMENT '注册城市编码',
  `register_source` varchar(20) NOT NULL DEFAULT '' COMMENT '注册来源',
  `last_active_at` datetime DEFAULT NULL COMMENT '最后活跃时间',
  `total_trips` int NOT NULL DEFAULT 0 COMMENT '总行程数',
  `total_amount` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '总消费金额',
  `risk_score` int NOT NULL DEFAULT 0 COMMENT '风控评分 0-100',
  `remark` varchar(500) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_passengers_phone` (`phone`),
  KEY `idx_hxz_passengers_status` (`status`),
  KEY `idx_hxz_passengers_register_city` (`register_city`),
  KEY `idx_hxz_passengers_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='乘客信息表';

CREATE TABLE `hxz_tag_dict` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '标签名称',
  `type` tinyint NOT NULL DEFAULT 1 COMMENT '类型 1乘客 2司机 3通用',
  `color` varchar(20) NOT NULL DEFAULT '' COMMENT '标签颜色',
  `sort` int NOT NULL DEFAULT 0 COMMENT '排序',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_hxz_tag_dict_name` (`name`,`type`,`deleted_at`),
  KEY `idx_hxz_tag_dict_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='标签字典表';

CREATE TABLE `hxz_passenger_tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `passenger_id` bigint unsigned NOT NULL COMMENT '乘客ID',
  `tag_id` bigint unsigned NOT NULL COMMENT '标签字典ID',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_passenger_tags_passenger_id` (`passenger_id`),
  KEY `idx_hxz_passenger_tags_tag_id` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='乘客标签关联表';

CREATE TABLE `hxz_ban_records` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `target_type` tinyint NOT NULL DEFAULT 1 COMMENT '对象类型 1乘客 2司机',
  `target_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '对象ID',
  `reason` varchar(500) NOT NULL DEFAULT '' COMMENT '封禁原因',
  `ban_type` tinyint NOT NULL DEFAULT 1 COMMENT '封禁类型 1临时 2永久',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态 1封禁中 2已解封',
  `operator_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '操作人ID',
  `unbanned_at` datetime DEFAULT NULL COMMENT '预计解封时间',
  `unbanned_by` bigint unsigned NOT NULL DEFAULT 0 COMMENT '解封操作人ID',
  `unbanned_reason` varchar(500) NOT NULL DEFAULT '' COMMENT '解封原因',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_ban_records_target_type` (`target_type`),
  KEY `idx_hxz_ban_records_target_id` (`target_id`),
  KEY `idx_hxz_ban_records_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='封禁记录表';

-- -----------------------------------------------------------
-- 2. 司机管理
-- -----------------------------------------------------------

CREATE TABLE `hxz_drivers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `real_name` varchar(30) NOT NULL DEFAULT '' COMMENT '真实姓名',
  `id_card` varchar(30) NOT NULL DEFAULT '' COMMENT '身份证号（加密）',
  `gender` tinyint NOT NULL DEFAULT 0 COMMENT '性别 0未知 1男 2女',
  `avatar` varchar(255) NOT NULL DEFAULT '' COMMENT '头像',
  `city_code` varchar(20) NOT NULL DEFAULT '' COMMENT '所在城市编码',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态 1待审核 2已通过 3已驳回 4已封禁',
  `audit_status` tinyint NOT NULL DEFAULT 1 COMMENT '审核状态 1待审核 2审核中 3通过 4驳回',
  `service_status` tinyint NOT NULL DEFAULT 2 COMMENT '服务状态 1在线 2离线 3休息中',
  `rating` decimal(3,2) NOT NULL DEFAULT 5.00 COMMENT '评分 0.00-5.00',
  `total_trips` int NOT NULL DEFAULT 0 COMMENT '总完成行程',
  `total_income` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '总收入',
  `join_date` date DEFAULT NULL COMMENT '入驻日期',
  `risk_score` int NOT NULL DEFAULT 0 COMMENT '风控评分',
  `remark` varchar(500) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_drivers_phone` (`phone`),
  UNIQUE KEY `uni_hxz_drivers_id_card` (`id_card`,`deleted_at`),
  KEY `idx_hxz_drivers_city_code` (`city_code`),
  KEY `idx_hxz_drivers_status` (`status`),
  KEY `idx_hxz_drivers_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='司机信息表';

CREATE TABLE `hxz_driver_licenses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `driver_id` bigint unsigned NOT NULL COMMENT '司机ID',
  `license_type` tinyint NOT NULL DEFAULT 1 COMMENT '证件类型 1驾驶证 2行驶证 3网约车资格证 4人车合照',
  `license_no` varchar(50) NOT NULL DEFAULT '' COMMENT '证件编号',
  `license_img` varchar(255) NOT NULL DEFAULT '' COMMENT '证件照片URL',
  `expire_date` date DEFAULT NULL COMMENT '过期日期',
  `audit_status` tinyint NOT NULL DEFAULT 1 COMMENT '审核状态 1待审核 2通过 3驳回',
  `audit_remark` varchar(200) NOT NULL DEFAULT '' COMMENT '审核备注',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_driver_licenses_driver_id` (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='司机证件表';

CREATE TABLE `hxz_vehicles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `driver_id` bigint unsigned NOT NULL COMMENT '司机ID',
  `plate_no` varchar(20) NOT NULL DEFAULT '' COMMENT '车牌号',
  `brand` varchar(30) NOT NULL DEFAULT '' COMMENT '品牌',
  `model` varchar(30) NOT NULL DEFAULT '' COMMENT '型号',
  `color` varchar(20) NOT NULL DEFAULT '' COMMENT '颜色',
  `vehicle_type` tinyint NOT NULL DEFAULT 1 COMMENT '车型 1快车 2专车 3豪华车',
  `seat_count` tinyint NOT NULL DEFAULT 5 COMMENT '座位数',
  `year` int NOT NULL DEFAULT 0 COMMENT '年份',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态 1待审核 2已通过 3已驳回',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_vehicles_driver_id` (`driver_id`),
  UNIQUE KEY `uni_hxz_vehicles_plate_no` (`plate_no`,`deleted_at`),
  KEY `idx_hxz_vehicles_vehicle_type` (`vehicle_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='车辆信息表';

CREATE TABLE `hxz_driver_audit_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `driver_id` bigint unsigned NOT NULL COMMENT '司机ID',
  `audit_type` tinyint NOT NULL DEFAULT 1 COMMENT '审核类型 1入驻审核 2证件审核 3车辆审核',
  `action` tinyint NOT NULL DEFAULT 1 COMMENT '操作 1通过 2驳回',
  `reason` varchar(500) NOT NULL DEFAULT '' COMMENT '原因',
  `operator_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '操作人ID',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_driver_audit_logs_driver_id` (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='司机审核日志表';

-- -----------------------------------------------------------
-- 3. 订单管理
-- -----------------------------------------------------------

CREATE TABLE `hxz_orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_no` varchar(32) NOT NULL DEFAULT '' COMMENT '订单号',
  `passenger_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '乘客ID',
  `driver_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '司机ID',
  `city_code` varchar(20) NOT NULL DEFAULT '' COMMENT '城市编码',
  `order_type` tinyint NOT NULL DEFAULT 1 COMMENT '订单类型 1快车 2专车 3豪华车',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态 1待派单 2已派单 3行程中 4已完成 5已取消 6异常',
  `pickup_address` varchar(255) NOT NULL DEFAULT '' COMMENT '上车地址',
  `pickup_lng` decimal(10,7) NOT NULL DEFAULT 0.0000000 COMMENT '上车经度',
  `pickup_lat` decimal(10,7) NOT NULL DEFAULT 0.0000000 COMMENT '上车纬度',
  `dropoff_address` varchar(255) NOT NULL DEFAULT '' COMMENT '下车地址',
  `dropoff_lng` decimal(10,7) NOT NULL DEFAULT 0.0000000 COMMENT '下车经度',
  `dropoff_lat` decimal(10,7) NOT NULL DEFAULT 0.0000000 COMMENT '下车纬度',
  `actual_pickup_at` datetime DEFAULT NULL COMMENT '实际上车时间',
  `actual_dropoff_at` datetime DEFAULT NULL COMMENT '实际下车时间',
  `distance` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '行驶里程(km)',
  `duration` int NOT NULL DEFAULT 0 COMMENT '行驶时长(秒)',
  `original_amount` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '原价',
  `discount_amount` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '优惠金额',
  `actual_amount` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '实付金额',
  `platform_fee` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '平台抽成',
  `driver_income` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '司机收入',
  `cancel_reason` varchar(200) NOT NULL DEFAULT '' COMMENT '取消原因',
  `cancel_by` tinyint NOT NULL DEFAULT 0 COMMENT '取消方 0无 1乘客 2司机 3系统',
  `is_abnormal` tinyint NOT NULL DEFAULT 0 COMMENT '是否异常 0否 1是',
  `abnormal_type` tinyint NOT NULL DEFAULT 0 COMMENT '异常类型 1绕路 2异常停留 3费用争议 4其他',
  `risk_flag` tinyint NOT NULL DEFAULT 0 COMMENT '风控标记 0无 1低 2中 3高',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_hxz_orders_order_no` (`order_no`),
  KEY `idx_hxz_orders_passenger_id` (`passenger_id`),
  KEY `idx_hxz_orders_driver_id` (`driver_id`),
  KEY `idx_hxz_orders_city_code` (`city_code`),
  KEY `idx_hxz_orders_status` (`status`),
  KEY `idx_hxz_orders_is_abnormal` (`is_abnormal`),
  KEY `idx_hxz_orders_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='订单表';

CREATE TABLE `hxz_order_status_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL COMMENT '订单ID',
  `from_status` tinyint NOT NULL DEFAULT 0 COMMENT '原状态',
  `to_status` tinyint NOT NULL DEFAULT 0 COMMENT '新状态',
  `operator_type` tinyint NOT NULL DEFAULT 1 COMMENT '操作方 1系统 2人工',
  `operator_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '操作人ID',
  `remark` varchar(500) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_order_status_logs_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='订单状态流转日志表';

-- -----------------------------------------------------------
-- 4. 行程管理
-- -----------------------------------------------------------

CREATE TABLE `hxz_trips` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `trip_no` varchar(32) NOT NULL DEFAULT '' COMMENT '行程编号',
  `order_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '订单ID',
  `driver_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '司机ID',
  `passenger_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '乘客ID',
  `start_at` datetime DEFAULT NULL COMMENT '行程开始时间',
  `end_at` datetime DEFAULT NULL COMMENT '行程结束时间',
  `total_distance` decimal(10,2) NOT NULL DEFAULT 0.00 COMMENT '总里程(km)',
  `total_duration` int NOT NULL DEFAULT 0 COMMENT '总时长(秒)',
  `route_summary` json DEFAULT NULL COMMENT '路线摘要',
  `is_abnormal` tinyint NOT NULL DEFAULT 0 COMMENT '是否异常 0否 1是',
  `abnormal_tags` varchar(200) NOT NULL DEFAULT '' COMMENT '异常标签',
  `risk_flag` tinyint NOT NULL DEFAULT 0 COMMENT '风控标记 0无 1低 2中 3高',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_hxz_trips_trip_no` (`trip_no`),
  KEY `idx_hxz_trips_order_id` (`order_id`),
  KEY `idx_hxz_trips_driver_id` (`driver_id`),
  KEY `idx_hxz_trips_passenger_id` (`passenger_id`),
  KEY `idx_hxz_trips_is_abnormal` (`is_abnormal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='行程表';

CREATE TABLE `hxz_trip_points` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `trip_id` bigint unsigned NOT NULL COMMENT '行程ID',
  `lng` decimal(10,7) NOT NULL DEFAULT 0.0000000 COMMENT '经度',
  `lat` decimal(10,7) NOT NULL DEFAULT 0.0000000 COMMENT '纬度',
  `speed` decimal(5,1) NOT NULL DEFAULT 0.0 COMMENT '速度(km/h)',
  `bearing` decimal(5,1) NOT NULL DEFAULT 0.0 COMMENT '方向角',
  `recorded_at` datetime DEFAULT NULL COMMENT '记录时间',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_trip_points_trip_id` (`trip_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='行程轨迹点表';

-- -----------------------------------------------------------
-- 5. 派单规则配置
-- -----------------------------------------------------------

CREATE TABLE `hxz_dispatch_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `rule_name` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `city_code` varchar(20) NOT NULL DEFAULT '' COMMENT '城市编码',
  `vehicle_type` tinyint NOT NULL DEFAULT 1 COMMENT '车型 1快车 2专车 3豪华车',
  `time_start` time DEFAULT NULL COMMENT '时段开始',
  `time_end` time DEFAULT NULL COMMENT '时段结束',
  `max_radius` decimal(5,1) NOT NULL DEFAULT 5.0 COMMENT '最大派单半径(km)',
  `max_wait_time` int NOT NULL DEFAULT 60 COMMENT '最大等待时间(秒)',
  `weight_distance` int NOT NULL DEFAULT 50 COMMENT '距离权重(0-100)',
  `weight_rating` int NOT NULL DEFAULT 30 COMMENT '评分权重(0-100)',
  `weight_completion` int NOT NULL DEFAULT 20 COMMENT '完单率权重(0-100)',
  `max_dispatch_count` int NOT NULL DEFAULT 3 COMMENT '最大派单次数',
  `is_active` tinyint NOT NULL DEFAULT 1 COMMENT '是否启用 0否 1是',
  `priority` int NOT NULL DEFAULT 0 COMMENT '优先级',
  `version` int NOT NULL DEFAULT 1 COMMENT '版本号',
  `remark` varchar(500) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_dispatch_rules_city_code` (`city_code`),
  KEY `idx_hxz_dispatch_rules_is_active` (`is_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='派单规则表';

CREATE TABLE `hxz_dispatch_rule_versions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `rule_id` bigint unsigned NOT NULL COMMENT '规则ID',
  `version` int NOT NULL DEFAULT 1 COMMENT '版本号',
  `snapshot` json DEFAULT NULL COMMENT '规则快照',
  `change_desc` varchar(500) NOT NULL DEFAULT '' COMMENT '变更说明',
  `operator_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '操作人ID',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_dispatch_rule_versions_rule_id` (`rule_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='派单规则版本历史表';

CREATE TABLE `hxz_dispatch_manual_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL COMMENT '订单ID',
  `action` tinyint NOT NULL DEFAULT 1 COMMENT '操作 1强制指派 2取消派单',
  `original_driver_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '原司机ID',
  `target_driver_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '目标司机ID',
  `reason` varchar(500) NOT NULL DEFAULT '' COMMENT '原因',
  `operator_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '操作人ID',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_dispatch_manual_logs_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='人工干预派单日志表';

-- -----------------------------------------------------------
-- 6. 财务管理
-- -----------------------------------------------------------

CREATE TABLE `hxz_finance_records` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `record_no` varchar(32) NOT NULL DEFAULT '' COMMENT '流水号',
  `order_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '关联订单ID',
  `type` tinyint NOT NULL DEFAULT 1 COMMENT '类型 1收入 2支出 3退款',
  `amount` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '金额',
  `balance_before` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '变动前余额',
  `balance_after` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '变动后余额',
  `category` tinyint NOT NULL DEFAULT 1 COMMENT '分类 1订单抽成 2结算支出 3退款 4调整',
  `target_type` tinyint NOT NULL DEFAULT 1 COMMENT '对象类型 1平台 2司机',
  `target_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '对象ID',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态 1待确认 2已确认 3已对账',
  `remark` varchar(500) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_hxz_finance_records_record_no` (`record_no`),
  KEY `idx_hxz_finance_records_order_id` (`order_id`),
  KEY `idx_hxz_finance_records_type` (`type`),
  KEY `idx_hxz_finance_records_status` (`status`),
  KEY `idx_hxz_finance_records_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='财务流水表';

CREATE TABLE `hxz_settlements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `settlement_no` varchar(32) NOT NULL DEFAULT '' COMMENT '结算单号',
  `driver_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '司机ID',
  `period_start` date DEFAULT NULL COMMENT '结算周期开始',
  `period_end` date DEFAULT NULL COMMENT '结算周期结束',
  `total_amount` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '总金额',
  `platform_fee` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '平台抽成',
  `actual_amount` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '实结金额',
  `order_count` int NOT NULL DEFAULT 0 COMMENT '订单数',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态 1待审核 2已审核 3已打款 4已取消',
  `audit_by` bigint unsigned NOT NULL DEFAULT 0 COMMENT '审核人',
  `audit_at` datetime DEFAULT NULL COMMENT '审核时间',
  `pay_by` bigint unsigned NOT NULL DEFAULT 0 COMMENT '打款人',
  `pay_at` datetime DEFAULT NULL COMMENT '打款时间',
  `remark` varchar(500) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_hxz_settlements_settlement_no` (`settlement_no`),
  KEY `idx_hxz_settlements_driver_id` (`driver_id`),
  KEY `idx_hxz_settlements_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='结算单表';

CREATE TABLE `hxz_commission_configs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `city_code` varchar(20) NOT NULL DEFAULT '' COMMENT '城市编码',
  `vehicle_type` tinyint NOT NULL DEFAULT 1 COMMENT '车型',
  `commission_rate` decimal(5,4) NOT NULL DEFAULT 0.1500 COMMENT '抽成比例',
  `min_fee` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '最低抽成金额',
  `max_fee` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '最高抽成金额(0不限)',
  `is_active` tinyint NOT NULL DEFAULT 1 COMMENT '是否启用 0否 1是',
  `effective_date` date DEFAULT NULL COMMENT '生效日期',
  `remark` varchar(500) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_commission_configs_city_code` (`city_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='抽成配置表';

CREATE TABLE `hxz_reconciliation_records` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `reconcile_date` date DEFAULT NULL COMMENT '对账日期',
  `total_orders` int NOT NULL DEFAULT 0 COMMENT '总订单数',
  `matched_orders` int NOT NULL DEFAULT 0 COMMENT '匹配订单数',
  `mismatch_orders` int NOT NULL DEFAULT 0 COMMENT '差异订单数',
  `total_amount` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '总金额',
  `difference_amount` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '差异金额',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态 1待对账 2已对账 3有差异',
  `operator_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '操作人',
  `remark` varchar(500) NOT NULL DEFAULT '' COMMENT '备注',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_reconciliation_records_date` (`reconcile_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='对账记录表';

-- -----------------------------------------------------------
-- 7. 优惠券/营销活动管理
-- -----------------------------------------------------------

CREATE TABLE `hxz_coupon_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '优惠券名称',
  `type` tinyint NOT NULL DEFAULT 1 COMMENT '类型 1金额券 2折扣券',
  `value` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '面额/折扣',
  `min_amount` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '最低消费金额',
  `max_discount` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '最大优惠金额',
  `total_count` int NOT NULL DEFAULT 0 COMMENT '发放总量',
  `used_count` int NOT NULL DEFAULT 0 COMMENT '已使用数量',
  `remain_count` int NOT NULL DEFAULT 0 COMMENT '剩余数量',
  `valid_type` tinyint NOT NULL DEFAULT 1 COMMENT '有效期类型 1固定时间 2领取后N天',
  `valid_start` datetime DEFAULT NULL COMMENT '固定有效期开始',
  `valid_end` datetime DEFAULT NULL COMMENT '固定有效期结束',
  `valid_days` int NOT NULL DEFAULT 0 COMMENT '领取后有效天数',
  `apply_scope` tinyint NOT NULL DEFAULT 1 COMMENT '适用范围 1全部 2指定城市 3指定车型',
  `apply_config` json DEFAULT NULL COMMENT '适用配置',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态 1草稿 2已发布 3已下架',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_coupon_templates_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='优惠券模板表';

CREATE TABLE `hxz_coupon_records` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `template_id` bigint unsigned NOT NULL COMMENT '模板ID',
  `coupon_code` varchar(32) NOT NULL DEFAULT '' COMMENT '券码',
  `passenger_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '乘客ID',
  `source` tinyint NOT NULL DEFAULT 1 COMMENT '来源 1系统发放 2活动领取 3人工发放',
  `activity_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '活动ID',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态 1未使用 2已使用 3已过期 4已作废',
  `used_at` datetime DEFAULT NULL COMMENT '使用时间',
  `used_order_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '使用的订单ID',
  `expired_at` datetime DEFAULT NULL COMMENT '过期时间',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_hxz_coupon_records_coupon_code` (`coupon_code`),
  KEY `idx_hxz_coupon_records_template_id` (`template_id`),
  KEY `idx_hxz_coupon_records_passenger_id` (`passenger_id`),
  KEY `idx_hxz_coupon_records_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='优惠券发放记录表';

CREATE TABLE `hxz_activities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '活动名称',
  `type` tinyint NOT NULL DEFAULT 1 COMMENT '类型 1优惠券活动 2首单优惠 3邀请返利',
  `description` text COMMENT '活动描述',
  `start_at` datetime DEFAULT NULL COMMENT '开始时间',
  `end_at` datetime DEFAULT NULL COMMENT '结束时间',
  `coupon_template_ids` json DEFAULT NULL COMMENT '关联优惠券模板ID列表',
  `rules` json DEFAULT NULL COMMENT '活动规则配置',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态 1草稿 2进行中 3已结束 4已暂停',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_activities_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='营销活动表';

-- -----------------------------------------------------------
-- 8. 风控管理
-- -----------------------------------------------------------

CREATE TABLE `hxz_blacklists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `target_type` tinyint NOT NULL DEFAULT 1 COMMENT '类型 1乘客 2司机',
  `target_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '对象ID',
  `reason` varchar(500) NOT NULL DEFAULT '' COMMENT '加入原因',
  `level` tinyint NOT NULL DEFAULT 1 COMMENT '级别 1低 2中 3高',
  `source` tinyint NOT NULL DEFAULT 1 COMMENT '来源 1系统自动 2人工添加',
  `operator_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '操作人ID',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态 1生效 2已移除',
  `removed_by` bigint unsigned NOT NULL DEFAULT 0 COMMENT '移除操作人',
  `removed_reason` varchar(500) NOT NULL DEFAULT '' COMMENT '移除原因',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_blacklists_target_type` (`target_type`),
  KEY `idx_hxz_blacklists_target_id` (`target_id`),
  KEY `idx_hxz_blacklists_status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='黑名单表';

CREATE TABLE `hxz_risk_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '规则名称',
  `type` tinyint NOT NULL DEFAULT 1 COMMENT '类型 1频率异常 2金额异常 3行为异常 4轨迹异常',
  `condition` json DEFAULT NULL COMMENT '触发条件配置',
  `risk_level` tinyint NOT NULL DEFAULT 1 COMMENT '风险等级 1低 2中 3高',
  `action` tinyint NOT NULL DEFAULT 1 COMMENT '触发动作 1仅预警 2自动标记 3自动封禁',
  `is_active` tinyint NOT NULL DEFAULT 1 COMMENT '是否启用 0否 1是',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_risk_rules_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='风控预警规则表';

CREATE TABLE `hxz_risk_alerts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `rule_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '规则ID',
  `target_type` tinyint NOT NULL DEFAULT 1 COMMENT '对象类型 1乘客 2司机',
  `target_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '对象ID',
  `order_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '关联订单ID',
  `risk_level` tinyint NOT NULL DEFAULT 1 COMMENT '风险等级 1低 2中 3高',
  `alert_data` json DEFAULT NULL COMMENT '预警数据详情',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态 1待处理 2处理中 3已处理 4已忽略',
  `handler_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '处理人ID',
  `handle_result` varchar(500) NOT NULL DEFAULT '' COMMENT '处理结果',
  `handle_at` datetime DEFAULT NULL COMMENT '处理时间',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_risk_alerts_rule_id` (`rule_id`),
  KEY `idx_hxz_risk_alerts_target_id` (`target_id`),
  KEY `idx_hxz_risk_alerts_order_id` (`order_id`),
  KEY `idx_hxz_risk_alerts_status` (`status`),
  KEY `idx_hxz_risk_alerts_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='风控预警记录表';

-- -----------------------------------------------------------
-- 9. 客服工单管理
-- -----------------------------------------------------------

CREATE TABLE `hxz_tickets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ticket_no` varchar(32) NOT NULL DEFAULT '' COMMENT '工单号',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '标题',
  `type` tinyint NOT NULL DEFAULT 1 COMMENT '类型 1投诉 2咨询 3费用争议 4安全 5其他',
  `priority` tinyint NOT NULL DEFAULT 1 COMMENT '优先级 1低 2中 3高 4紧急',
  `status` tinyint NOT NULL DEFAULT 1 COMMENT '状态 1待接单 2处理中 3待确认 4已完结 5已关闭',
  `reporter_type` tinyint NOT NULL DEFAULT 1 COMMENT '报告人类型 1乘客 2司机 3系统',
  `reporter_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '报告人ID',
  `related_order_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '关联订单ID',
  `description` text COMMENT '问题描述',
  `attachments` json DEFAULT NULL COMMENT '附件列表',
  `handler_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '当前处理人ID',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_hxz_tickets_ticket_no` (`ticket_no`),
  KEY `idx_hxz_tickets_type` (`type`),
  KEY `idx_hxz_tickets_priority` (`priority`),
  KEY `idx_hxz_tickets_status` (`status`),
  KEY `idx_hxz_tickets_related_order_id` (`related_order_id`),
  KEY `idx_hxz_tickets_handler_id` (`handler_id`),
  KEY `idx_hxz_tickets_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='工单表';

CREATE TABLE `hxz_ticket_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ticket_id` bigint unsigned NOT NULL COMMENT '工单ID',
  `action` tinyint NOT NULL DEFAULT 1 COMMENT '操作 1创建 2接单 3回复 4转派 5完结 6关闭',
  `content` text COMMENT '内容',
  `operator_id` bigint unsigned NOT NULL DEFAULT 0 COMMENT '操作人ID',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_ticket_logs_ticket_id` (`ticket_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='工单处理记录表';

-- -----------------------------------------------------------
-- 10. 平台配置
-- -----------------------------------------------------------

CREATE TABLE `hxz_platform_configs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `config_key` varchar(50) NOT NULL DEFAULT '' COMMENT '配置键',
  `config_value` text COMMENT '配置值',
  `config_type` tinyint NOT NULL DEFAULT 3 COMMENT '类型 1费率 2加价 3通用',
  `city_code` varchar(20) NOT NULL DEFAULT '' COMMENT '城市编码（空为全局）',
  `description` varchar(200) NOT NULL DEFAULT '' COMMENT '描述',
  `is_active` tinyint NOT NULL DEFAULT 1 COMMENT '是否启用 0否 1是',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_hxz_platform_configs_config_key` (`config_key`,`city_code`,`deleted_at`),
  KEY `idx_hxz_platform_configs_city_code` (`city_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='平台配置表';

CREATE TABLE `hxz_cities` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `city_code` varchar(20) NOT NULL DEFAULT '' COMMENT '城市编码',
  `city_name` varchar(30) NOT NULL DEFAULT '' COMMENT '城市名称',
  `province` varchar(30) NOT NULL DEFAULT '' COMMENT '省份',
  `is_opened` tinyint NOT NULL DEFAULT 0 COMMENT '是否开通 0否 1是',
  `open_date` date DEFAULT NULL COMMENT '开通日期',
  `center_lng` decimal(10,7) NOT NULL DEFAULT 0.0000000 COMMENT '中心经度',
  `center_lat` decimal(10,7) NOT NULL DEFAULT 0.0000000 COMMENT '中心纬度',
  `service_radius` decimal(5,1) NOT NULL DEFAULT 10.0 COMMENT '服务半径(km)',
  `config` json DEFAULT NULL COMMENT '城市专属配置',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uni_hxz_cities_city_code` (`city_code`,`deleted_at`),
  KEY `idx_hxz_cities_is_opened` (`is_opened`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='城市配置表';

CREATE TABLE `hxz_fare_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `city_code` varchar(20) NOT NULL DEFAULT '' COMMENT '城市编码',
  `vehicle_type` tinyint NOT NULL DEFAULT 1 COMMENT '车型',
  `base_distance` decimal(5,1) NOT NULL DEFAULT 3.0 COMMENT '起步里程(km)',
  `base_price` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '起步价',
  `per_km_price` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '每公里价',
  `per_min_price` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '每分钟价',
  `min_price` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT '最低消费',
  `night_start` time DEFAULT NULL COMMENT '夜间开始时间',
  `night_end` time DEFAULT NULL COMMENT '夜间结束时间',
  `night_rate` decimal(5,2) NOT NULL DEFAULT 1.00 COMMENT '夜间加价倍率',
  `is_active` tinyint NOT NULL DEFAULT 1 COMMENT '是否启用 0否 1是',
  `effective_date` date DEFAULT NULL COMMENT '生效日期',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_fare_rules_city_code` (`city_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='费率规则表';

CREATE TABLE `hxz_surge_rules` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `city_code` varchar(20) NOT NULL DEFAULT '' COMMENT '城市编码',
  `trigger_type` tinyint NOT NULL DEFAULT 1 COMMENT '触发类型 1供需比 2天气 3时段',
  `trigger_condition` json DEFAULT NULL COMMENT '触发条件',
  `surge_rate` decimal(5,2) NOT NULL DEFAULT 1.00 COMMENT '加价倍率',
  `max_surge_rate` decimal(5,2) NOT NULL DEFAULT 3.00 COMMENT '最大加价倍率',
  `time_start` time DEFAULT NULL COMMENT '时段开始',
  `time_end` time DEFAULT NULL COMMENT '时段结束',
  `is_active` tinyint NOT NULL DEFAULT 1 COMMENT '是否启用 0否 1是',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_surge_rules_city_code` (`city_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='加价规则表';

-- -----------------------------------------------------------
-- 11. 数据统计报表
-- -----------------------------------------------------------

CREATE TABLE `hxz_report_snapshots` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `report_type` tinyint NOT NULL DEFAULT 1 COMMENT '报表类型 1运营日报 2财务日报 3司机周报 4月报',
  `report_date` date DEFAULT NULL COMMENT '报表日期',
  `data` json DEFAULT NULL COMMENT '报表数据',
  `generated_at` datetime DEFAULT NULL COMMENT '生成时间',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_hxz_report_snapshots_type` (`report_type`),
  KEY `idx_hxz_report_snapshots_date` (`report_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='报表快照表';
