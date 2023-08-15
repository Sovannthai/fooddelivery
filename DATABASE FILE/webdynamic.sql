/*
 Navicat Premium Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : localhost:3306
 Source Schema         : webdynamic

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 17/07/2023 11:37:47
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `adm_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `code` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`adm_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '$2y$10$ryaRNKJ7QXc2Ue3y45qO4utU8laGzj6ZdpWK6T5f9u3JcPtjQ2bvi', 'admin@gmail.com', '1', '2023-07-07 10:39:27');

-- ----------------------------
-- Table structure for dishes
-- ----------------------------
DROP TABLE IF EXISTS `dishes`;
CREATE TABLE `dishes`  (
  `d_id` int(11) NOT NULL AUTO_INCREMENT,
  `rs_id` int(11) NOT NULL,
  `title` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `slogan` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `img` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `c_id` int(11) NOT NULL,
  PRIMARY KEY (`d_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dishes
-- ----------------------------
INSERT INTO `dishes` VALUES (18, 5, 'Samlor Korko', 'Nice', 7.50, '64acd4a48ed89.jpg', 12);
INSERT INTO `dishes` VALUES (19, 5, 'AMOK', 'Nice testy', 6.50, '64ad1b98ce83a.jpg', 12);
INSERT INTO `dishes` VALUES (20, 5, 'BEEF OYSTER', 'Best food in restaurant', 10.00, '64acfa154fc29.jpg', 12);
INSERT INTO `dishes` VALUES (21, 8, 'Pad Krapow', 'Best food in restaurant', 3.50, '64ad19925a4d5.jpg', 0);
INSERT INTO `dishes` VALUES (22, 8, 'TOM YUM', 'Best food in restaurant', 5.00, '64ad19de19416.jpg', 0);
INSERT INTO `dishes` VALUES (23, 8, 'Massaman Chi', 'Amazing food', 7.50, '64ad1a3feeb7f.jpg', 0);
INSERT INTO `dishes` VALUES (24, 6, 'Khmer Noodle', 'Best food in restaurant', 5.00, '64ad1beca2d36.jpg', 0);
INSERT INTO `dishes` VALUES (25, 6, 'Samlor Machu trey ', 'Nice testy', 7.50, '64ad1cc7e50b3.jpg', 0);
INSERT INTO `dishes` VALUES (26, 6, 'Lok lak', 'Amazing food', 6.50, '64ad1d2509e4e.jpg', 0);
INSERT INTO `dishes` VALUES (27, 7, 'Khmer Red Curry', 'Best food in restaurant', 7.50, '64ad1dd45e4cd.jpg', 0);
INSERT INTO `dishes` VALUES (28, 7, 'Prahok Ktiss', 'Amazing food', 10.00, '64ad1e02831bd.jpg', 0);
INSERT INTO `dishes` VALUES (29, 7, ' Lap Khmer', 'Nice testy', 5.00, '64ad1e52a4356.jpg', 0);

-- ----------------------------
-- Table structure for remark
-- ----------------------------
DROP TABLE IF EXISTS `remark`;
CREATE TABLE `remark`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frm_id` int(11) NOT NULL,
  `status` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `remark` mediumtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `remarkDate` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of remark
-- ----------------------------
INSERT INTO `remark` VALUES (1, 24, 'closed', 'Delivery', '2023-07-10 20:07:17');
INSERT INTO `remark` VALUES (2, 26, 'closed', 'Dilivered', '2023-07-11 08:08:28');
INSERT INTO `remark` VALUES (3, 28, 'rejected', 'Hmm', '2023-07-11 16:21:27');
INSERT INTO `remark` VALUES (4, 29, 'in process', 'Please wait!', '2023-07-11 16:23:53');
INSERT INTO `remark` VALUES (5, 30, 'closed', 'under delivery', '2023-07-11 16:24:36');
INSERT INTO `remark` VALUES (6, 29, 'closed', 'djlkfs', '2023-07-14 20:23:15');
INSERT INTO `remark` VALUES (7, 31, 'in process', 'Hello Please wait', '2023-07-17 11:32:08');

-- ----------------------------
-- Table structure for res_category
-- ----------------------------
DROP TABLE IF EXISTS `res_category`;
CREATE TABLE `res_category`  (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of res_category
-- ----------------------------
INSERT INTO `res_category` VALUES (12, 'Break First ', '2023-07-11 15:45:33');
INSERT INTO `res_category` VALUES (13, 'Noodle Soup', '2023-07-11 15:45:37');
INSERT INTO `res_category` VALUES (14, 'Khmer Food', '2023-07-11 15:45:40');
INSERT INTO `res_category` VALUES (15, 'Thai Food', '2023-07-11 15:45:46');

-- ----------------------------
-- Table structure for restaurant
-- ----------------------------
DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE `restaurant`  (
  `rs_id` int(11) NOT NULL AUTO_INCREMENT,
  `c_id` int(11) NOT NULL,
  `title` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `url` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `o_hr` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `c_hr` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `o_days` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `image` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`rs_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of restaurant
-- ----------------------------
INSERT INTO `restaurant` VALUES (5, 12, 'MHOB KHMER', 'MHOB KHMER@gmail.com', '098765432', 'https://youtu.be/UzFtjVqcMuk', '--Select your Hours--', '--Select your Hours--', '--Select your Days--', ' P.O.Box 54436, sitra\r\nP.O.Box 54436, sitra ', '64acfd601b900.jpg', '2023-07-12 09:41:00');
INSERT INTO `restaurant` VALUES (6, 9, 'Khmer Angkor Restaurant', 'domreymeas@gmail.com', '0987654345', 'https://youtu.be/UzFtjVqcMuk', '8am', '5pm', '24hr-x7', 'Siem Reap Cambodia', '64acbed2b66d9.jpg', '2023-07-11 09:30:42');
INSERT INTO `restaurant` VALUES (7, 9, 'AKA', 'Thai@gmail.com', '098987766', 'https://youtu.be/UzFtjVqcMuk', '8am', '5pm', '24hr-x7', 'Siem Reap Cambodia', '64acbfdb3cd28.jpg', '2023-07-11 09:35:07');
INSERT INTO `restaurant` VALUES (8, 10, 'Jim Jom Restaurant', 'info@autolux.com', '0989876788', 'https://youtu.be/UzFtjVqcMuk', '8am', '5pm', '24hr-x7', 'Thailand', '64acd44fbd764.jpg', '2023-07-11 11:02:23');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `u_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `f_name` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `l_name` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `email` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `phone` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `address` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`u_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (9, 'adminVillage', 'Thai', 'Sros', 'domreymeas@gmail.com', '0998899988', 'aac3c0a1b9cc599626b1d6f6fc12e248', 'P.O.Box 54436, sitra\r\nP.O.Box 54436, sitra', 1, '2023-07-11 14:06:26');
INSERT INTO `users` VALUES (10, 'pech12345', 'Pech', 'Noun', 'pech@gamail.com', '0987654321', '25d55ad283aa400af464c76d713c07ad', 'Kleang', 1, '2023-07-10 20:05:07');

-- ----------------------------
-- Table structure for users_orders
-- ----------------------------
DROP TABLE IF EXISTS `users_orders`;
CREATE TABLE `users_orders`  (
  `o_id` int(11) NOT NULL AUTO_INCREMENT,
  `u_id` int(11) NOT NULL,
  `title` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `status` varchar(222) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`o_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users_orders
-- ----------------------------
INSERT INTO `users_orders` VALUES (29, 10, 'AMOK', 1, 6.50, 'closed', '2023-07-14 20:23:15');
INSERT INTO `users_orders` VALUES (30, 10, 'BEEF OYSTER', 1, 10.00, 'closed', '2023-07-11 16:24:36');
INSERT INTO `users_orders` VALUES (31, 10, 'Samlor Korko', 1, 7.50, 'in process', '2023-07-17 11:32:08');
INSERT INTO `users_orders` VALUES (32, 10, 'BEEF OYSTER', 1, 10.00, NULL, '2023-07-17 11:31:42');

SET FOREIGN_KEY_CHECKS = 1;
