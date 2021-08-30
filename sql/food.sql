/*
 Navicat Premium Data Transfer

 Source Server         : conn
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : food

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 30/08/2021 17:33:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for food_rec_list
-- ----------------------------
DROP TABLE IF EXISTS `food_rec_list`;
CREATE TABLE `food_rec_list`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `food_rec_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `food_rec_ulogo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `food_rec_uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `food_rec_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `food_rec_likeNum` int(255) NOT NULL,
  `food_rec_commandNum` int(255) NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of food_rec_list
-- ----------------------------
INSERT INTO `food_rec_list` VALUES (1, '怎么在京东上买东西最便宜？', 'anne.png', '王小手', '千万不要用原价在京东上购物，感觉自己亏了一个亿！千万不要用原价在京东上购物，感觉自己亏了一个亿！千万不要用原价在京东上购物，感觉自己亏了一个亿！', 1932, 2);
INSERT INTO `food_rec_list` VALUES (2, '为什么不能买外卖会员', 'bob.png', '张三', '作为资深外卖骑手我告诉你绝对不要买外卖会员！作为资深外卖骑手我告诉你绝对不要买外卖会员！作为资深外卖骑手我告诉你绝对不要买外卖会员！', 2100, 31);

-- ----------------------------
-- Table structure for mycart
-- ----------------------------
DROP TABLE IF EXISTS `mycart`;
CREATE TABLE `mycart`  (
  `id` int(255) NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `num` int(100) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of mycart
-- ----------------------------
INSERT INTO `mycart` VALUES (10032, 'info_left.png', 999.00, 21, '精神小伙');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `id` int(255) NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `desc_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `isSelected` int(4) NOT NULL,
  `desc_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1001, 'item-1.jpg', '特级东北大米', 1, '特级东北大米颗粒饱满、入口即化，你值得拥有', 29.00);
INSERT INTO `product` VALUES (1002, 'item-2.jpg', '深海鱼子酱', 1, '深海鱼子酱颗粒饱满、入口即化，你值得拥有', 399.00);

SET FOREIGN_KEY_CHECKS = 1;
