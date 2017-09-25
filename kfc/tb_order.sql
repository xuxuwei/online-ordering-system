/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : kfc

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-12-20 16:49:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_order`
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_date` varchar(20) DEFAULT NULL,
  `order_address` varchar(100) DEFAULT NULL,
  `order_total` int(11) DEFAULT NULL,
  `order_pay_type` varchar(255) DEFAULT NULL,
  `boolean` varchar(255) DEFAULT NULL,
  `other_require` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKFA98EE3DFFBBA556` (`user_id`),
  CONSTRAINT `FKFA98EE3DFFBBA556` FOREIGN KEY (`user_id`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1897520 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order
-- ----------------------------
INSERT INTO `tb_order` VALUES ('1897446', null, '铁道学院', '0', null, '是', null, null);
INSERT INTO `tb_order` VALUES ('1897449', null, '铁道学院二综', '0', null, '是', null, null);
INSERT INTO `tb_order` VALUES ('1897450', null, '铁道学院电子楼', '0', null, null, null, null);
INSERT INTO `tb_order` VALUES ('1897451', null, '铁道学院图书馆', '0', null, null, null, '6');
INSERT INTO `tb_order` VALUES ('1897452', null, '铁道学院大排档', '0', null, null, null, '6');
INSERT INTO `tb_order` VALUES ('1897453', null, '铁道学院图书馆', '0', null, null, '阿萨德撒多', null);
INSERT INTO `tb_order` VALUES ('1897454', null, '铁道学院大排档', '0', null, null, '大多数多撒', null);
INSERT INTO `tb_order` VALUES ('1897458', null, '铁道学院二综', '0', null, null, '萨芬撒', null);
INSERT INTO `tb_order` VALUES ('1897459', null, '铁道学院大排档', '12', null, null, '萨达', '6');
INSERT INTO `tb_order` VALUES ('1897460', null, '铁道学院图书馆', '0', null, null, null, '6');
INSERT INTO `tb_order` VALUES ('1897461', null, '铁道学院大排档', '0', null, null, null, '6');
INSERT INTO `tb_order` VALUES ('1897462', null, '铁道学院二综', '0', null, null, null, '6');
INSERT INTO `tb_order` VALUES ('1897463', null, '铁道学院大排档', '0', null, null, null, '6');
INSERT INTO `tb_order` VALUES ('1897464', null, '铁道学院图书馆', '0', null, null, null, '6');
INSERT INTO `tb_order` VALUES ('1897465', null, '铁道学院大排档', '0', null, '是', 'kjsahdaskhd', '6');
INSERT INTO `tb_order` VALUES ('1897466', null, '铁道学院二综', '0', null, null, 'kjsahdaskhd', '6');
INSERT INTO `tb_order` VALUES ('1897468', '2016-12-19', '铁道学院图书馆', '0', null, null, 'kjsahdaskhd', '6');
INSERT INTO `tb_order` VALUES ('1897470', '2016-12-19', '铁道学院二综', '12', null, null, '艾斯德斯撒', '6');
INSERT INTO `tb_order` VALUES ('1897471', '2016-12-19', '铁道学院图书馆', '12', null, 'false', '萨达萨达所多', '6');
INSERT INTO `tb_order` VALUES ('1897474', '2016-12-19', 'dsadsa', '0', null, null, 'kjsahdaskhd', '6');
INSERT INTO `tb_order` VALUES ('1897481', '2016-12-19', 'dsadsa', '0', null, null, 'kjsahdaskhd', '6');
INSERT INTO `tb_order` VALUES ('1897484', '2016-12-19', '5444444444444444444444', '12', null, null, '65555', '6');
INSERT INTO `tb_order` VALUES ('1897486', '2016-12-19', 'dsadsa', '0', null, null, 'kjsahdaskhd', '6');
INSERT INTO `tb_order` VALUES ('1897488', '2016-12-19', '文呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃呃', '12', null, null, '鹅鹅鹅鹅鹅鹅', '6');
INSERT INTO `tb_order` VALUES ('1897510', '2016-12-20 14:24:08', '铁道学院二综', '12', '支付宝', '未支付', 'zzz', '23');
INSERT INTO `tb_order` VALUES ('1897512', '2016-12-20 15:14:47', '铁道学院电子楼', '24', '货到付款', '已支付', '多放辣椒', '23');
INSERT INTO `tb_order` VALUES ('1897515', '2016-12-20 15:48:31', '铁道学院大排档', '24', '货到付款', '已支付', '少放辣', '23');
INSERT INTO `tb_order` VALUES ('1897519', '2016-12-20 16:32:52', '铁道学院足球场', '24', '支付宝', '已支付', '求速度', '1');
