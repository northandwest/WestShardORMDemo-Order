-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.14 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出 food_order_0 的数据库结构
CREATE DATABASE IF NOT EXISTS `food_order_0` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `food_order_0`;


-- 导出  表 food_order_0.activity 结构
CREATE TABLE IF NOT EXISTS `activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT '' COMMENT '名称',
  `num_limit` int(11) DEFAULT '0' COMMENT '人数限制',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `create_time` datetime DEFAULT NULL COMMENT '创建',
  `place_name` varchar(100) DEFAULT '' COMMENT '活动场所',
  `place_id` int(11) DEFAULT '0' COMMENT '场所',
  `address` varchar(100) DEFAULT '' COMMENT '地址',
  `contract_name` varchar(20) DEFAULT '' COMMENT '联系人',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  `creater_id` bigint(20) DEFAULT '0' COMMENT '创建人',
  `creater` varchar(20) DEFAULT '' COMMENT '创建人',
  `memo` varchar(200) DEFAULT '' COMMENT '备注',
  `uuid` varchar(50) DEFAULT '' COMMENT '邀请码',
  PRIMARY KEY (`id`),
  KEY `Index 2` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=COMPACT COMMENT='活动';

-- 数据导出被取消选择。


-- 导出  表 food_order_0.activity_order_0 结构
CREATE TABLE IF NOT EXISTS `activity_order_0` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) DEFAULT '0' COMMENT '活动',
  `user_id` bigint(20) DEFAULT '0' COMMENT '用户',
  `user_name` varchar(20) DEFAULT '' COMMENT '用户名',
  `tel` varchar(20) DEFAULT '' COMMENT '电话',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  `nums` int(11) DEFAULT '0' COMMENT '数量',
  `master_id` int(11) DEFAULT '0' COMMENT '发起人',
  `create_time` datetime DEFAULT NULL COMMENT '时间',
  `content` varchar(500) DEFAULT '' COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='订单';

-- 数据导出被取消选择。


-- 导出  表 food_order_0.activity_order_1 结构
CREATE TABLE IF NOT EXISTS `activity_order_1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) DEFAULT '0' COMMENT '活动',
  `user_id` bigint(20) DEFAULT '0' COMMENT '用户',
  `user_name` varchar(20) DEFAULT '' COMMENT '用户名',
  `tel` varchar(20) DEFAULT '' COMMENT '电话',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  `nums` int(11) DEFAULT '0' COMMENT '数量',
  `master_id` int(11) DEFAULT '0' COMMENT '发起人',
  `create_time` datetime DEFAULT NULL COMMENT '时间',
  `content` varchar(500) DEFAULT '' COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='订单';

-- 数据导出被取消选择。


-- 导出  表 food_order_0.activity_order_2 结构
CREATE TABLE IF NOT EXISTS `activity_order_2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) DEFAULT '0' COMMENT '活动',
  `user_id` bigint(20) DEFAULT '0' COMMENT '用户',
  `user_name` varchar(20) DEFAULT '' COMMENT '用户名',
  `tel` varchar(20) DEFAULT '' COMMENT '电话',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  `nums` int(11) DEFAULT '0' COMMENT '数量',
  `master_id` int(11) DEFAULT '0' COMMENT '发起人',
  `create_time` datetime DEFAULT NULL COMMENT '时间',
  `content` varchar(500) DEFAULT '' COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='订单';

-- 数据导出被取消选择。


-- 导出  表 food_order_0.activity_order_3 结构
CREATE TABLE IF NOT EXISTS `activity_order_3` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) DEFAULT '0' COMMENT '活动',
  `user_id` bigint(20) DEFAULT '0' COMMENT '用户',
  `user_name` varchar(20) DEFAULT '' COMMENT '用户名',
  `tel` varchar(20) DEFAULT '' COMMENT '电话',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  `nums` int(11) DEFAULT '0' COMMENT '数量',
  `master_id` int(11) DEFAULT '0' COMMENT '发起人',
  `create_time` datetime DEFAULT NULL COMMENT '时间',
  `content` varchar(500) DEFAULT '' COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='订单';

-- 数据导出被取消选择。


-- 导出  表 food_order_0.activity_order_detail 结构
CREATE TABLE IF NOT EXISTS `activity_order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) DEFAULT '0' COMMENT '活动',
  `order_id` bigint(20) DEFAULT '0' COMMENT '订单',
  `user_id` bigint(20) DEFAULT '0' COMMENT '用户',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户名称',
  `nums` int(11) DEFAULT '0' COMMENT '数量',
  `price` double DEFAULT '0' COMMENT '价格',
  `product_id` bigint(20) DEFAULT '0' COMMENT '商品编号',
  `product` varchar(50) DEFAULT '' COMMENT '商品',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk ROW_FORMAT=COMPACT COMMENT='订单';

-- 数据导出被取消选择。


-- 导出  表 food_order_0.product 结构
CREATE TABLE IF NOT EXISTS `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `shop_id` bigint(20) NOT NULL DEFAULT '0',
  `typex` varchar(50) NOT NULL DEFAULT '' COMMENT '类型',
  `price` double NOT NULL DEFAULT '0' COMMENT '价格',
  `buy_count` int(11) NOT NULL DEFAULT '0' COMMENT '购买次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品';

-- 数据导出被取消选择。


-- 导出  表 food_order_0.sequence_value 结构
CREATE TABLE IF NOT EXISTS `sequence_value` (
  `name` varchar(50) NOT NULL COMMENT '序列名',
  `id` int(11) NOT NULL COMMENT '当前id值',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='序列表';

-- 数据导出被取消选择。


-- 导出  表 food_order_0.shop 结构
CREATE TABLE IF NOT EXISTS `shop` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '名称',
  `contract_name` varchar(50) NOT NULL DEFAULT '' COMMENT '联系方式',
  `tel` varchar(50) NOT NULL DEFAULT '' COMMENT '电话',
  `address` varchar(50) NOT NULL DEFAULT '' COMMENT '地址',
  `creater` varchar(50) NOT NULL DEFAULT '' COMMENT '创建人',
  `creater_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_time` datetime NOT NULL COMMENT '时间',
  `act_nums` int(11) NOT NULL DEFAULT '0' COMMENT '下单次数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商家';

-- 数据导出被取消选择。


-- 导出  表 food_order_0.users 结构
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `real_name` varchar(20) DEFAULT '' COMMENT '真实姓名',
  `user_name` varchar(20) DEFAULT '' COMMENT '用户名',
  `email` varchar(50) DEFAULT '' COMMENT 'email',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  `mobile` varchar(11) DEFAULT '' COMMENT '手机',
  `sex` varchar(6) DEFAULT '' COMMENT '性别',
  `city_id` int(11) DEFAULT '0' COMMENT '城市',
  `area_id` int(11) DEFAULT '0' COMMENT '的确',
  `reg_date` datetime DEFAULT NULL COMMENT '注册日期',
  `last_login_time` datetime DEFAULT NULL COMMENT '上次登陆时间',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='会员';

-- 数据导出被取消选择。


-- 导出 food_order_1 的数据库结构
CREATE DATABASE IF NOT EXISTS `food_order_1` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `food_order_1`;


-- 导出  表 food_order_1.activity_order_0 结构
CREATE TABLE IF NOT EXISTS `activity_order_0` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) DEFAULT '0' COMMENT '活动',
  `user_id` bigint(20) DEFAULT '0' COMMENT '用户',
  `user_name` varchar(20) DEFAULT '' COMMENT '用户名',
  `tel` varchar(20) DEFAULT '' COMMENT '电话',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  `nums` int(11) DEFAULT '0' COMMENT '数量',
  `master_id` int(11) DEFAULT '0' COMMENT '发起人',
  `create_time` datetime DEFAULT NULL COMMENT '时间',
  `content` varchar(500) DEFAULT '' COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='订单';

-- 数据导出被取消选择。


-- 导出  表 food_order_1.activity_order_1 结构
CREATE TABLE IF NOT EXISTS `activity_order_1` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) DEFAULT '0' COMMENT '活动',
  `user_id` bigint(20) DEFAULT '0' COMMENT '用户',
  `user_name` varchar(20) DEFAULT '' COMMENT '用户名',
  `tel` varchar(20) DEFAULT '' COMMENT '电话',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  `nums` int(11) DEFAULT '0' COMMENT '数量',
  `master_id` int(11) DEFAULT '0' COMMENT '发起人',
  `create_time` datetime DEFAULT NULL COMMENT '时间',
  `content` varchar(500) DEFAULT '' COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='订单';

-- 数据导出被取消选择。


-- 导出  表 food_order_1.activity_order_2 结构
CREATE TABLE IF NOT EXISTS `activity_order_2` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) DEFAULT '0' COMMENT '活动',
  `user_id` bigint(20) DEFAULT '0' COMMENT '用户',
  `user_name` varchar(20) DEFAULT '' COMMENT '用户名',
  `tel` varchar(20) DEFAULT '' COMMENT '电话',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  `nums` int(11) DEFAULT '0' COMMENT '数量',
  `master_id` int(11) DEFAULT '0' COMMENT '发起人',
  `create_time` datetime DEFAULT NULL COMMENT '时间',
  `content` varchar(500) DEFAULT '' COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='订单';

-- 数据导出被取消选择。


-- 导出  表 food_order_1.activity_order_3 结构
CREATE TABLE IF NOT EXISTS `activity_order_3` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) DEFAULT '0' COMMENT '活动',
  `user_id` bigint(20) DEFAULT '0' COMMENT '用户',
  `user_name` varchar(20) DEFAULT '' COMMENT '用户名',
  `tel` varchar(20) DEFAULT '' COMMENT '电话',
  `status` int(11) DEFAULT '0' COMMENT '状态',
  `nums` int(11) DEFAULT '0' COMMENT '数量',
  `master_id` int(11) DEFAULT '0' COMMENT '发起人',
  `create_time` datetime DEFAULT NULL COMMENT '时间',
  `content` varchar(500) DEFAULT '' COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk COMMENT='订单';

-- 数据导出被取消选择。
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
