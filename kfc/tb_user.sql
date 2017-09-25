/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : kfc

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-12-20 16:49:32
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(10) DEFAULT NULL,
  `user_tel` varchar(11) DEFAULT NULL,
  `user_email` varchar(20) DEFAULT NULL,
  `user_password` varchar(20) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKA4FF6AFC5A90E176` (`role_id`),
  CONSTRAINT `FKA4FF6AFC5A90E176` FOREIGN KEY (`role_id`) REFERENCES `tb_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'admin', '13007310400', '1042880086@qq.com', 'admin', '2');
INSERT INTO `tb_user` VALUES ('2', 'sale', '13574283033', '', 'sale', '4');
INSERT INTO `tb_user` VALUES ('3', 'wangv', '132456', '', '123', '1');
INSERT INTO `tb_user` VALUES ('4', 'wangv1', '123456', 'modify', '213', '1');
INSERT INTO `tb_user` VALUES ('5', 'wangv2', '13574283033', '123', '132', '2');
INSERT INTO `tb_user` VALUES ('6', null, null, null, null, null);
INSERT INTO `tb_user` VALUES ('7', '4', '5587', '中', '123', null);
INSERT INTO `tb_user` VALUES ('8', '45', '75', '57', '57', null);
INSERT INTO `tb_user` VALUES ('9', '8', '8', '', '456', '1');
INSERT INTO `tb_user` VALUES ('10', '74', '758', '875', '857', '1');
INSERT INTO `tb_user` VALUES ('11', '57', '75', '758', '57', '1');
INSERT INTO `tb_user` VALUES ('12', '57', '75', '758', '57', '1');
INSERT INTO `tb_user` VALUES ('13', '57', '75', '758', '57', '1');
INSERT INTO `tb_user` VALUES ('14', '112', '45', '78', '45', '1');
INSERT INTO `tb_user` VALUES ('15', '112', '45', '78', '45', '1');
INSERT INTO `tb_user` VALUES ('16', '王威', '45', '78', '45', '1');
INSERT INTO `tb_user` VALUES ('17', '徐伟', '45', '78', '12', '1');
INSERT INTO `tb_user` VALUES ('18', '朱敏', '45', '78', '12', '1');
INSERT INTO `tb_user` VALUES ('19', '潘娟', '45', '78', '12', '1');
INSERT INTO `tb_user` VALUES ('20', '吴青', '45', '78', '12', '1');
INSERT INTO `tb_user` VALUES ('21', '张三', '45', '78', '12', '1');
INSERT INTO `tb_user` VALUES ('22', '李四', '45', '78', '12', '1');
INSERT INTO `tb_user` VALUES ('23', '王五', '24', '1234', '123', '1');
INSERT INTO `tb_user` VALUES ('24', '54', '87578', '78578', '785875', '1');
INSERT INTO `tb_user` VALUES ('25', '64564', '7845', '2423', '86754', '1');
INSERT INTO `tb_user` VALUES ('26', 'jkkl', '11111111111', '321223123123123', '123', '1');
INSERT INTO `tb_user` VALUES ('27', '萨克雷大', '12345678911', '4564825868@qq.com', '55', '1');
INSERT INTO `tb_user` VALUES ('28', 'godWei', '14725836910', 'dsadasd@qq.com', 'q123456', '1');
INSERT INTO `tb_user` VALUES ('29', '15165', '13111656', null, null, '1');
INSERT INTO `tb_user` VALUES ('30', '旺旺123', '12345679802', '123@qq.com', 'ww1234, ww1234', '1');
INSERT INTO `tb_user` VALUES ('31', '回家', '12345678912', '55645645445@qq.com', 'sdf ', '1');
