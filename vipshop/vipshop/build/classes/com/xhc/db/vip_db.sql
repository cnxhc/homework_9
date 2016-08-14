/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : vip_db

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2016-07-04 23:54:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `commodity`
-- ----------------------------
DROP TABLE IF EXISTS `commodity`;
CREATE TABLE `commodity` (
  `commodityId` int(11) NOT NULL AUTO_INCREMENT,
  `commodityName` varchar(30) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `agio` decimal(4,3) DEFAULT NULL,
  PRIMARY KEY (`commodityId`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of commodity
-- ----------------------------
INSERT INTO `commodity` VALUES ('1', '小米6', '1999.00', '1.000');
INSERT INTO `commodity` VALUES ('2', '魅族mx6', '1999.00', '1.000');
INSERT INTO `commodity` VALUES ('3', '一加三', '2500.00', '1.000');
INSERT INTO `commodity` VALUES ('4', 'note4', '3000.00', '0.900');
INSERT INTO `commodity` VALUES ('5', 's7', '5000.00', '0.990');
INSERT INTO `commodity` VALUES ('6', 'xm2', '3000.00', '0.990');
INSERT INTO `commodity` VALUES ('7', '小米手环', '150.00', '0.900');
INSERT INTO `commodity` VALUES ('8', 'note6', '5900.00', '1.000');
INSERT INTO `commodity` VALUES ('9', 's7', '6000.00', '1.000');
INSERT INTO `commodity` VALUES ('31', '自行车', '900.00', '1.000');
INSERT INTO `commodity` VALUES ('33', '电饭煲', '300.00', '1.000');
INSERT INTO `commodity` VALUES ('34', 's7+', '6000.00', '1.000');
INSERT INTO `commodity` VALUES ('35', '白菜', '1.00', '0.000');
INSERT INTO `commodity` VALUES ('36', 'hp8', '6000.00', '0.000');

-- ----------------------------
-- Table structure for `consume`
-- ----------------------------
DROP TABLE IF EXISTS `consume`;
CREATE TABLE `consume` (
  `consumeId` int(11) NOT NULL AUTO_INCREMENT,
  `vipid` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `commodityId` int(11) DEFAULT NULL,
  `commodityName` varchar(30) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `practicePrice` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`consumeId`),
  KEY `vipid` (`vipid`),
  KEY `commodityId` (`commodityId`),
  CONSTRAINT `consume_ibfk_1` FOREIGN KEY (`vipid`) REFERENCES `vip` (`vipId`),
  CONSTRAINT `consume_ibfk_2` FOREIGN KEY (`commodityId`) REFERENCES `commodity` (`commodityId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of consume
-- ----------------------------
INSERT INTO `consume` VALUES ('1', '1', '李思', '1', '小米5', '1999.00', '1999.00');
INSERT INTO `consume` VALUES ('2', '1', '李思', '1', '小米5 ', '1999.00', '1999.00');
INSERT INTO `consume` VALUES ('3', '3', 'jack M', '3', '一加三', '2500.00', '2500.00');
INSERT INTO `consume` VALUES ('5', '5', 'java', '5', 's7', '5000.00', '5000.00');
INSERT INTO `consume` VALUES ('6', '3', 'jack M', '4', 'note4', '3000.00', '3000.00');
INSERT INTO `consume` VALUES ('7', '1', '李思', '5', 's7', '5000.00', '5000.00');
INSERT INTO `consume` VALUES ('8', '3', 'jack M', '3', '一加三', '2500.00', '2500.00');
INSERT INTO `consume` VALUES ('9', '3', '王舞', '1', '小米5', '1999.00', '1999.00');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) DEFAULT NULL,
  `quanxian` int(11) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('123086', '123', '1');
INSERT INTO `user` VALUES ('admin', 'admin', '2');
INSERT INTO `user` VALUES ('hp', '321', '1');
INSERT INTO `user` VALUES ('tb', '123', '1');
INSERT INTO `user` VALUES ('user', 'user', '1');

-- ----------------------------
-- Table structure for `vip`
-- ----------------------------
DROP TABLE IF EXISTS `vip`;
CREATE TABLE `vip` (
  `vipId` int(11) NOT NULL AUTO_INCREMENT,
  `joinTime` date DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `profession` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`vipId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of vip
-- ----------------------------
INSERT INTO `vip` VALUES ('1', '2016-06-01', '李思', '26', '教师');
INSERT INTO `vip` VALUES ('2', '2016-04-05', '王舞', '26', '白领');
INSERT INTO `vip` VALUES ('3', '2016-03-08', 'jack M', '33', '初级程序员');
INSERT INTO `vip` VALUES ('5', '2015-06-29', 'java', '27', '高级程序员');
INSERT INTO `vip` VALUES ('7', '2013-07-26', 'McCormick', '25', '极客学院');
INSERT INTO `vip` VALUES ('8', '2016-06-01', '李思', '26', '教师');
INSERT INTO `vip` VALUES ('10', '2016-06-26', 'vip1111', '12', '工人');
