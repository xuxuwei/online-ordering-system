/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : kfc

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-12-20 16:48:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_meal_order`
-- ----------------------------
DROP TABLE IF EXISTS `tb_meal_order`;
CREATE TABLE `tb_meal_order` (
  `meal_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`order_id`,`meal_id`),
  KEY `FK1E64764340670256` (`meal_id`),
  KEY `FK1E64764350D32AFE` (`order_id`),
  CONSTRAINT `FK1E64764340670256` FOREIGN KEY (`meal_id`) REFERENCES `tb_meal` (`id`),
  CONSTRAINT `FK1E64764350D32AFE` FOREIGN KEY (`order_id`) REFERENCES `tb_order` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_meal_order
-- ----------------------------
INSERT INTO `tb_meal_order` VALUES ('1', '1897510');
INSERT INTO `tb_meal_order` VALUES ('1', '1897512');
INSERT INTO `tb_meal_order` VALUES ('27', '1897519');
INSERT INTO `tb_meal_order` VALUES ('36', '1897519');
INSERT INTO `tb_meal_order` VALUES ('38', '1897515');
INSERT INTO `tb_meal_order` VALUES ('39', '1897515');
INSERT INTO `tb_meal_order` VALUES ('41', '1897512');
