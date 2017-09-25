/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : kfc

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-12-20 16:49:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_role_module`
-- ----------------------------
DROP TABLE IF EXISTS `tb_role_module`;
CREATE TABLE `tb_role_module` (
  `role_id` int(11) NOT NULL,
  `module_id` int(11) NOT NULL,
  PRIMARY KEY (`module_id`,`role_id`),
  KEY `FKA5B50A045A90E176` (`role_id`),
  KEY `FKA5B50A0480CDA6B6` (`module_id`),
  CONSTRAINT `FKA5B50A045A90E176` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`),
  CONSTRAINT `FKA5B50A0480CDA6B6` FOREIGN KEY (`module_id`) REFERENCES `tb_module` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_role_module
-- ----------------------------
INSERT INTO `tb_role_module` VALUES ('2', '1');
INSERT INTO `tb_role_module` VALUES ('2', '2');
INSERT INTO `tb_role_module` VALUES ('2', '3');
INSERT INTO `tb_role_module` VALUES ('2', '4');
INSERT INTO `tb_role_module` VALUES ('2', '5');
INSERT INTO `tb_role_module` VALUES ('2', '6');
INSERT INTO `tb_role_module` VALUES ('2', '7');
INSERT INTO `tb_role_module` VALUES ('4', '1');
INSERT INTO `tb_role_module` VALUES ('4', '2');
INSERT INTO `tb_role_module` VALUES ('4', '4');
INSERT INTO `tb_role_module` VALUES ('4', '7');
