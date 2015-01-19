/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : minhui

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2015-01-14 14:42:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `activity`
-- ----------------------------
DROP TABLE IF EXISTS `activity`;
CREATE TABLE `activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '活动名称',
  `start_time` date NOT NULL DEFAULT '2000-01-01' COMMENT '活动开始时间',
  `end_time` date NOT NULL DEFAULT '2000-01-01' COMMENT '活动结束时间',
  `hosted_by` varchar(100) NOT NULL DEFAULT '' COMMENT '主办方',
  `hold_place` varchar(100) NOT NULL DEFAULT '' COMMENT '主办地点',
  `priority` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1-11，越小优先级越高',
  `categories_id` int(11) NOT NULL DEFAULT '0' COMMENT '归属栏目类型',
  `price` float(16,2) NOT NULL DEFAULT '0.00' COMMENT '0表示免费',
  `score_profit` int(11) NOT NULL DEFAULT '0',
  `max_can_join` int(11) NOT NULL DEFAULT '0',
  `content` varchar(1024) NOT NULL DEFAULT '' COMMENT '活动具体描述',
  `contact_us` varchar(64) NOT NULL DEFAULT '' COMMENT '联系人',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity
-- ----------------------------

-- ----------------------------
-- Table structure for `activity_resources`
-- ----------------------------
DROP TABLE IF EXISTS `activity_resources`;
CREATE TABLE `activity_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL DEFAULT '0',
  `resource_kind` tinyint(4) NOT NULL DEFAULT '0' COMMENT '资源类型：1- 图片 2- 文字 3-视频',
  `resource_index` smallint(8) NOT NULL DEFAULT '0' COMMENT '页面展示顺序',
  `resource_content` varchar(128) NOT NULL DEFAULT '' COMMENT '可以是具体内容，也可以是路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of activity_resources
-- ----------------------------

-- ----------------------------
-- Table structure for `authority`
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `authorities` varchar(8) NOT NULL DEFAULT '00000000' COMMENT '格式为01010101等，1表示有权限，0表示无权限，从左到右依次为增、删、改、查、参加、。。待补充',
  `activity_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authority
-- ----------------------------

-- ----------------------------
-- Table structure for `categories`
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of categories
-- ----------------------------

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `activity_id` int(11) NOT NULL DEFAULT '0',
  `content` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comments
-- ----------------------------

-- ----------------------------
-- Table structure for `competition`
-- ----------------------------
DROP TABLE IF EXISTS `competition`;
CREATE TABLE `competition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of competition
-- ----------------------------

-- ----------------------------
-- Table structure for `competition_rank`
-- ----------------------------
DROP TABLE IF EXISTS `competition_rank`;
CREATE TABLE `competition_rank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of competition_rank
-- ----------------------------

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `ordered_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '订单状态，1、未付款 2、已成功 3、已取消',
  `count` tinyint(8) NOT NULL DEFAULT '0' COMMENT '订单份数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for `sms_code`
-- ----------------------------
DROP TABLE IF EXISTS `sms_code`;
CREATE TABLE `sms_code` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(10) NOT NULL DEFAULT '',
  `last_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sms_code
-- ----------------------------

-- ----------------------------
-- Table structure for `titbits`
-- ----------------------------
DROP TABLE IF EXISTS `titbits`;
CREATE TABLE `titbits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL DEFAULT '0',
  `titbits_kind` tinyint(4) NOT NULL DEFAULT '0' COMMENT '资源类型：1- 图片 2- 文字 3-视频',
  `titbits_index` smallint(8) NOT NULL DEFAULT '0' COMMENT '页面展示顺序',
  `titbits_content` varchar(128) NOT NULL DEFAULT '' COMMENT '可以是具体内容，也可以是路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of titbits
-- ----------------------------

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ids',
  `username` varchar(40) NOT NULL DEFAULT '',
  `password` varchar(40) NOT NULL DEFAULT '',
  `phone` varchar(40) NOT NULL DEFAULT '',
  `mail` varchar(40) NOT NULL DEFAULT '',
  `birthday` varchar(20) NOT NULL DEFAULT '',
  `address` varchar(64) NOT NULL DEFAULT '',
  `nickname` varchar(40) NOT NULL DEFAULT '',
  `role_id` tinyint(4) NOT NULL DEFAULT '0' COMMENT '角色 1 系统管理员 2 活动管理员 3 会员 4 普通会员',
  `score` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------

-- ----------------------------
-- Table structure for `works`
-- ----------------------------
DROP TABLE IF EXISTS `works`;
CREATE TABLE `works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `activity_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of works
-- ----------------------------
