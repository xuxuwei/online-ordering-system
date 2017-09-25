/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : kfc

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-12-20 16:48:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_meal`
-- ----------------------------
DROP TABLE IF EXISTS `tb_meal`;
CREATE TABLE `tb_meal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meal_name` varchar(20) DEFAULT NULL,
  `meal_introduce` varchar(100) DEFAULT NULL,
  `meal_price` varchar(20) DEFAULT NULL,
  `meal_type` varchar(20) DEFAULT NULL,
  `meal_amount` int(11) DEFAULT NULL,
  `sale_time` varchar(10) DEFAULT NULL,
  `image_path` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_meal
-- ----------------------------
INSERT INTO `tb_meal` VALUES ('1', '帕尼尼', '很美味哟', '12', '1', '10', '2016-1-1', 'images/breakfast_01_01.png');
INSERT INTO `tb_meal` VALUES ('2', '帕尼尼', '很美味哟', '18', '1', '10', '2016-1-1', 'images/breakfast_01_02.png');
INSERT INTO `tb_meal` VALUES ('3', '帕尼尼', '很美味哟', '12', '1', '10', '2016-1-1', 'images/breakfast_01_03.png');
INSERT INTO `tb_meal` VALUES ('4', '帕尼尼', '很美味哟', '18', '1', '10', '2016-1-1', 'images/breakfast_01_04.png');
INSERT INTO `tb_meal` VALUES ('5', '帕尼尼', '很美味哟', '12', '2', '10', '2016-1-1', 'images/breakfast_01_05.png');
INSERT INTO `tb_meal` VALUES ('6', '帕尼尼', '很美味哟', '12', '2', '10', '2016-1-1', 'images/breakfast_01_06.png');
INSERT INTO `tb_meal` VALUES ('7', '帕尼尼', '很美味哟', '18', '2', '10', '2016-1-1', 'images/breakfast_01_07.png');
INSERT INTO `tb_meal` VALUES ('8', '美味汉堡', '很美味哟', '12', '2', '10', '2016-11-11', 'images/breakfast_02_01.png');
INSERT INTO `tb_meal` VALUES ('9', '美味汉堡', '很美味哟', '15', '2', '10', '2016-1-1', 'images/breakfast_02_02.png');
INSERT INTO `tb_meal` VALUES ('10', '美味汉堡', '很美味哟', '12', '2', '10', '2016-1-1', 'images/breakfast_02_03.png');
INSERT INTO `tb_meal` VALUES ('11', '美味汉堡', '很美味哟', '12', '2', '10', '2016-1-1', 'images/breakfast_02_04.png');
INSERT INTO `tb_meal` VALUES ('12', '美味汉堡', '很美味哟', '16', '2', '10', '2016-1-1', 'images/breakfast_02_05.png');
INSERT INTO `tb_meal` VALUES ('13', '法风烧饼', '很美味哟', '20', '3', '10', '2016-1-1', 'images/breakfast_03_01.png');
INSERT INTO `tb_meal` VALUES ('14', '法风烧饼', '很美味哟', '12', '3', '10', '2016-1-1', 'images/breakfast_03_02.png');
INSERT INTO `tb_meal` VALUES ('15', '法风烧饼', '很美味哟', '12', '3', '10', '2016-1-1', 'images/breakfast_03_03.png');
INSERT INTO `tb_meal` VALUES ('16', '法风烧饼', '很美味哟', '12', '3', '10', '2016-1-1', 'images/breakfast_03_04.png');
INSERT INTO `tb_meal` VALUES ('17', '法风烧饼', '很美味哟', '25', '3', '10', '2016-1-1', 'images/breakfast_03_05.png');
INSERT INTO `tb_meal` VALUES ('18', '法风烧饼', '很美味哟', '12', '3', '10', '2016-11-11', 'images/breakfast_03_06.png');
INSERT INTO `tb_meal` VALUES ('19', '现熬好粥', '很美味哟', '12', '4', '10', '2016-1-1', 'images/breakfast_04_01.png');
INSERT INTO `tb_meal` VALUES ('20', '现熬好粥', '很美味哟', '19', '4', '10', '2016-1-1', 'images/breakfast_04_02.png');
INSERT INTO `tb_meal` VALUES ('21', '现熬好粥', '很美味哟', '18', '4', '10', '2016-11-11', 'images/breakfast_04_03.png');
INSERT INTO `tb_meal` VALUES ('22', '现熬好粥', '很美味哟', '21', '4', '10', '2016-11-11', 'images/breakfast_04_04.png');
INSERT INTO `tb_meal` VALUES ('23', '帕尼尼', '很美味哟', '12', '4', '10', '2016-1-1', 'images/breakfast_04_05.png');
INSERT INTO `tb_meal` VALUES ('24', '帕尼尼', '很美味哟', '18', '4', '10', '2016-1-1', 'images/breakfast_04_06.png');
INSERT INTO `tb_meal` VALUES ('25', '帕尼尼', '很美味哟', '12', '5', '10', '2016-1-1', 'images/breakfast_05_01.png');
INSERT INTO `tb_meal` VALUES ('26', '帕尼尼', '很美味哟', '18', '5', '10', '2016-1-1', 'images/breakfast_05_02.png');
INSERT INTO `tb_meal` VALUES ('27', '帕尼尼', '很美味哟', '12', '5', '10', '2016-1-1', 'images/breakfast_05_03.png');
INSERT INTO `tb_meal` VALUES ('28', '帕尼尼', '很美味哟', '12', '5', '10', '2016-1-1', 'images/breakfast_05_04.png');
INSERT INTO `tb_meal` VALUES ('29', '帕尼尼', '很美味哟', '18', '6', '10', '2016-1-1', 'images/breakfast_06_01.png');
INSERT INTO `tb_meal` VALUES ('30', '美味汉堡', '很美味哟', '12', '6', '10', '2016-11-11', 'images/breakfast_06_02.png');
INSERT INTO `tb_meal` VALUES ('31', '美味汉堡', '很美味哟', '12', '6', '10', '2016-1-1', 'images/breakfast_06_03.png');
INSERT INTO `tb_meal` VALUES ('32', '美味汉堡', '很美味哟', '12', '6', '10', '2016-1-1', 'images/breakfast_06_04.png');
INSERT INTO `tb_meal` VALUES ('33', '美味汉堡', '很美味哟', '12', '6', '10', '2016-1-1', 'images/breakfast_06_05.png');
INSERT INTO `tb_meal` VALUES ('34', '美味汉堡', '很美味哟', '16', '6', '10', '2016-1-1', 'images/breakfast_06_05.png');
INSERT INTO `tb_meal` VALUES ('35', '法风烧饼', '很美味哟', '12', '7', '10', '2016-1-1', 'images/lunch_03_01.png');
INSERT INTO `tb_meal` VALUES ('36', '法风烧饼', '很美味哟', '12', '7', '10', '2016-1-1', 'images/lunch_03_02.png');
INSERT INTO `tb_meal` VALUES ('37', '法风烧饼', '很美味哟', '12', '7', '10', '2016-1-1', 'images/lunch_03_03.png');
INSERT INTO `tb_meal` VALUES ('38', '法风烧饼', '很美味哟', '12', '7', '10', '2016-1-1', 'images/lunch_03_04.png');
INSERT INTO `tb_meal` VALUES ('39', '法风烧饼', '很美味哟', '12', '7', '10', '2016-1-1', 'images/lunch_03_05.png');
INSERT INTO `tb_meal` VALUES ('40', '法风烧饼', '很美味哟', '15', '7', '10', '2016-11-11', 'images/lunch_03_06.png');
INSERT INTO `tb_meal` VALUES ('41', '现熬好粥', '很美味哟', '12', '7', '10', '2016-1-1', 'images/lunch_03_07.png');
INSERT INTO `tb_meal` VALUES ('42', '现熬好粥', '很美味哟', '12', '7', '10', '2016-1-1', 'images/lunch_03_08.png');
INSERT INTO `tb_meal` VALUES ('43', '美味汉堡', '很美味哟', '30', '8', '10', '2016-1-1', 'images/lunch_04_01.png');
INSERT INTO `tb_meal` VALUES ('44', '美味汉堡', '很美味哟', '12', '8', '10', '2016-1-1', 'images/lunch_04_02.png');
INSERT INTO `tb_meal` VALUES ('45', '美味汉堡', '很美味哟', '24', '8', '10', '2016-1-1', 'images/lunch_04_03.png');
INSERT INTO `tb_meal` VALUES ('46', '法风烧饼', '很美味哟', '12', '8', '10', '2016-1-1', 'images/lunch_04_04.png');
INSERT INTO `tb_meal` VALUES ('47', '法风烧饼', '很美味哟', '12', '9', '10', '2016-1-1', 'images/lunch_04_05.png');
INSERT INTO `tb_meal` VALUES ('48', '法风烧饼', '很美味哟', '12', '9', '10', '2016-1-1', 'images/lunch_04_06.png');
INSERT INTO `tb_meal` VALUES ('49', '法风烧饼', '很美味哟', '12', '9', '10', '2016-1-1', 'images/lunch_04_07.png');
INSERT INTO `tb_meal` VALUES ('50', '法风烧饼', '很美味哟', '26', '9', '10', '2016-1-1', 'images/lunch_04_08.png');
INSERT INTO `tb_meal` VALUES ('51', '法风烧饼', '很美味哟', '12', '9', '10', '2016-11-11', 'images/lunch_04_09.png');
INSERT INTO `tb_meal` VALUES ('53', '霸王堡', '超级大', '16', '午餐_主食', '122', '', null);
INSERT INTO `tb_meal` VALUES ('54', '全家桶', '超实惠', '120', '晚餐_套餐', '1222', '2016-12-12', null);
