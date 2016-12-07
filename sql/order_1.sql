-- --------------------------------------------------------
-- 主机:                           192.168.1.110
-- 服务器版本:                        5.1.73-log - Source distribution
-- 服务器操作系统:                      redhat-linux-gnu
-- HeidiSQL 版本:                  9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=gbk ROW_FORMAT=COMPACT COMMENT='活动';

-- 正在导出表  food_order_0.activity 的数据：~7 rows (大约)
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` (`id`, `title`, `num_limit`, `start_time`, `create_time`, `place_name`, `place_id`, `address`, `contract_name`, `status`, `creater_id`, `creater`, `memo`, `uuid`) VALUES
	(2, '2015-12-29 23:28:00-半亩园', 12, '2016-09-10 23:03:23', '2016-09-10 23:03:23', 'bei', 0, '', '', 0, 0, '', '', ''),
	(3, '生成代码', 100, NULL, NULL, '', 123221, '', '', 0, 0, '', '', ''),
	(4, '2016-10-15 19:59:42-半亩园', 0, NULL, '2016-10-15 19:59:42', '半亩园', -2003849844, '', '', 0, 0, '', '', '60c93a43310c45b3921216dc810c1ccd'),
	(5, '2016-10-15 19:59:43-半亩园', 0, NULL, '2016-10-15 19:59:43', '半亩园', 464660095, '', '', 0, 0, '', '', 'a92d0b156ce54a33ba2236a80ca83f47'),
	(6, '2016-10-15 19:59:50-半亩园', 0, NULL, '2016-10-15 19:59:50', '半亩园', 926121080, '', '', 0, 0, '', '', '2a7986c2ae35475eadef788faeb4c289'),
	(7, '2016-10-15 19:59:51-半亩园', 0, NULL, '2016-10-15 19:59:51', '半亩园', -2096649264, '', '', 0, 0, '', '', 'd34910fa138443c2921adebfd09f886a'),
	(8, '2016-10-15 19:59:53-半亩园', 0, NULL, '2016-10-15 19:59:53', '半亩园', 1934456036, '', '', 0, 0, '', '', 'c7377883673a4d1eb5601bc5ef8b82d6');
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;


-- 导出  表 food_order_0.activity_order 结构
CREATE TABLE IF NOT EXISTS `activity_order` (
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk COMMENT='订单';

-- 正在导出表  food_order_0.activity_order 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `activity_order` DISABLE KEYS */;
INSERT INTO `activity_order` (`id`, `activity_id`, `user_id`, `user_name`, `tel`, `status`, `nums`, `master_id`, `create_time`, `content`) VALUES
	(1, 1, 0, '叶峰', '', 0, 0, 0, '2015-12-30 03:59:17', '可口可乐*1'),
	(2, 1, 0, '测试', '', 0, 0, 0, '2015-12-30 04:10:59', '可口可乐*1'),
	(3, 1, 0, '刘刚', '', 0, 0, 0, '2015-12-30 04:17:03', '可口可乐*1'),
	(4, 1, 0, '测试123', '', 0, 0, 0, '2015-12-30 04:18:13', '可乐*1');
/*!40000 ALTER TABLE `activity_order` ENABLE KEYS */;


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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk COMMENT='订单';

-- 正在导出表  food_order_0.activity_order_0 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `activity_order_0` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_order_0` ENABLE KEYS */;


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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk COMMENT='订单';

-- 正在导出表  food_order_0.activity_order_1 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `activity_order_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_order_1` ENABLE KEYS */;


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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=gbk ROW_FORMAT=COMPACT COMMENT='订单';

-- 正在导出表  food_order_0.activity_order_detail 的数据：~4 rows (大约)
/*!40000 ALTER TABLE `activity_order_detail` DISABLE KEYS */;
INSERT INTO `activity_order_detail` (`id`, `activity_id`, `order_id`, `user_id`, `user_name`, `nums`, `price`, `product_id`, `product`) VALUES
	(1, 1, 1, 0, '叶峰', 1, 0, 0, '可口可乐'),
	(2, 1, 2, 0, '测试', 1, 0, 0, '可口可乐'),
	(3, 1, 3, 0, '刘刚', 1, 0, 0, '可口可乐'),
	(4, 1, 4, 0, '测试123', 1, 0, 0, '可乐');
/*!40000 ALTER TABLE `activity_order_detail` ENABLE KEYS */;


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

-- 正在导出表  food_order_0.product 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;


-- 导出  表 food_order_0.sequence_value 结构
CREATE TABLE IF NOT EXISTS `sequence_value` (
  `name` varchar(50) NOT NULL COMMENT '序列名',
  `id` int(11) NOT NULL COMMENT '当前id值',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='序列表';

-- 正在导出表  food_order_0.sequence_value 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `sequence_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `sequence_value` ENABLE KEYS */;


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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商家';

-- 正在导出表  food_order_0.shop 的数据：2 rows
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` (`id`, `name`, `contract_name`, `tel`, `address`, `creater`, `creater_id`, `create_time`, `act_nums`) VALUES
	(1, '鸿毛饺子管', '', '', '北京', '', 0, '2016-09-08 22:02:20', 0),
	(2, '小丽都', '', '', '', '', 0, '2016-10-15 20:01:36', 0);
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;


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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='会员';

-- 正在导出表  food_order_0.users 的数据：~1 rows (大约)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `real_name`, `user_name`, `email`, `password`, `mobile`, `sex`, `city_id`, `area_id`, `reg_date`, `last_login_time`, `status`) VALUES
	(1, '孙七', 'wujiang', 'wujiang@foxmail.com', 'wujiang', '19292', '', 0, 0, NULL, NULL, 1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
