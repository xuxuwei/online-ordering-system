/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : kfc

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-12-20 16:49:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_module`
-- ----------------------------
DROP TABLE IF EXISTS `tb_module`;
CREATE TABLE `tb_module` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(20) DEFAULT NULL,
  `url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_module
-- ----------------------------
INSERT INTO `tb_module` VALUES ('1', '商品信息管理', 'backMeal.action');
INSERT INTO `tb_module` VALUES ('2', '订单信息管理', 'backOrder.action');
INSERT INTO `tb_module` VALUES ('3', '顾客信息管理', 'backCustomer.action');
INSERT INTO `tb_module` VALUES ('4', '销售情况统计', 'summary.jsp');
INSERT INTO `tb_module` VALUES ('5', '管理员信息管理', 'backAdmin.action');
INSERT INTO `tb_module` VALUES ('6', '模块信息管理', 'backModule!toPart.action');
INSERT INTO `tb_module` VALUES ('7', '版本信息', 'empty.jsp');
INSERT INTO `tb_module` VALUES ('8', '评论模块', 'index.jsp');
