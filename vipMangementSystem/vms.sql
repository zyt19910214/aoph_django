/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : 127.0.0.1:3306
 Source Schema         : vms

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 10/09/2019 01:07:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for ad
-- ----------------------------
DROP TABLE IF EXISTS `ad`;
CREATE TABLE `ad`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `atime` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of ad
-- ----------------------------
INSERT INTO `ad` VALUES (1, 'ad', '2019-07-03 00:28:24');
INSERT INTO `ad` VALUES (90, '', '2019-07-03 00:36:20');
INSERT INTO `ad` VALUES (91, '是是是', '2019-07-03 00:36:45');
INSERT INTO `ad` VALUES (92, '11111111111', '2019-07-03 00:36:49');
INSERT INTO `ad` VALUES (93, '赵信', '2019-07-03 00:36:56');
INSERT INTO `ad` VALUES (94, '春季大酬宾，1元红包免费领取。快来点击查看吧！', '2019-07-03 00:39:38');
INSERT INTO `ad` VALUES (95, '春季大酬宾，1元红包免费领取。快来点击查看吧！', '2019-07-03 00:40:40');
INSERT INTO `ad` VALUES (96, '春季大酬宾，1元红包免费领取。快来点击查看吧！还在等什么！', '2019-07-03 00:40:51');
INSERT INTO `ad` VALUES (97, '1', '2019-07-03 00:41:07');
INSERT INTO `ad` VALUES (98, '春季大酬宾，1元红包免费领取。快来点击查看吧！', '2019-07-03 00:41:11');
INSERT INTO `ad` VALUES (99, ' $(\"#ad\").html(\"当前公告：　\"+ad)', '2019-07-03 00:42:25');
INSERT INTO `ad` VALUES (100, '1', '2019-07-03 00:42:30');
INSERT INTO `ad` VALUES (101, '2', '2019-07-03 00:42:32');
INSERT INTO `ad` VALUES (102, '3', '2019-07-03 00:42:38');
INSERT INTO `ad` VALUES (103, '4', '2019-07-03 00:43:18');
INSERT INTO `ad` VALUES (104, '春季大酬宾，1元红包免费领取。快来点击查看吧！还在等什么！', '2019-07-03 00:43:34');
INSERT INTO `ad` VALUES (105, '春季大酬宾，1元红包免费领取。快来点击查看吧！还在等什么！', '2019-07-03 00:44:14');
INSERT INTO `ad` VALUES (106, '春季大酬宾，1元红包免费领取。快来点击查看吧！还在等什么！以下是上两周我们在社区收到的问题反馈、需求的处理进度，希望同大家一同打造小程序生态。', '2019-07-24 22:54:17');
INSERT INTO `ad` VALUES (107, '1', '2019-07-24 23:12:20');
INSERT INTO `ad` VALUES (108, '这是一个滚动的公告！', '2019-07-24 23:12:57');
INSERT INTO `ad` VALUES (109, '温娜是个好女孩！！！', '2019-09-01 15:26:29');

-- ----------------------------
-- Table structure for good
-- ----------------------------
DROP TABLE IF EXISTS `good`;
CREATE TABLE `good`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `good_category_id` int(11) NULL DEFAULT NULL,
  `price` float(10, 1) NULL DEFAULT NULL,
  `origin_price` float(10, 1) NULL DEFAULT NULL,
  `uploadtime` datetime(0) NULL DEFAULT NULL,
  `status` int(10) NULL DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `img_urls` varchar(20000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `good_info` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of good
-- ----------------------------
INSERT INTO `good` VALUES (2, '雪碧', 1, 3.0, 2.0, '2018-08-09 23:33:44', 1, '../../images/icon/noimg.png', '', NULL);
INSERT INTO `good` VALUES (4, '凉皮', 3, 7.0, 0.0, '2018-08-09 23:34:40', 1, '../../images/icon/noimg.png', '', NULL);
INSERT INTO `good` VALUES (5, '雪花', 2, 3.0, 0.0, '2018-08-09 23:35:01', 1, '../../images/icon/noimg.png', '', NULL);
INSERT INTO `good` VALUES (6, '黑啤', 2, 4.0, 0.0, '2018-08-09 23:35:15', 1, '../../images/icon/noimg.png', '', NULL);
INSERT INTO `good` VALUES (7, '牛奶', 1, 8.0, 0.0, '2018-08-09 23:35:36', 1, '../../images/icon/noimg.png', '', NULL);
INSERT INTO `good` VALUES (9, '自制酸梅汤', 1, 8.0, 0.0, '2018-08-09 23:53:02', 1, '../../images/icon/noimg.png', '', NULL);
INSERT INTO `good` VALUES (10, '自制柳橙汁', 1, 8.0, 2.0, '2018-08-09 23:53:15', 1, '../../images/icon/noimg.png', '', NULL);
INSERT INTO `good` VALUES (11, '自制橙汁', 1, 8.0, 0.0, '2018-08-09 23:53:27', 1, '../../images/icon/noimg.png', '', NULL);
INSERT INTO `good` VALUES (14, '加多宝', 1, 5.5, 0.0, '2018-08-31 01:02:50', 1, '../../images/icon/noimg.png', '', NULL);
INSERT INTO `good` VALUES (15, '红牛', 1, 6.0, 0.0, '2018-08-22 10:29:28', 1, '../../images/icon/noimg.png', '', NULL);
INSERT INTO `good` VALUES (16, '茶π', 1, 6.0, 0.0, '2018-08-22 10:48:00', 1, '../../images/icon/noimg.png', '', NULL);
INSERT INTO `good` VALUES (17, '阿萨姆', 1, 5.0, 0.0, '2018-09-02 23:26:56', 1, '../../images/icon/noimg.png', 'http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0Tg8KAR0a2AA1eBOVQX64032.png', NULL);
INSERT INTO `good` VALUES (19, '15', 2, 12.0, 0.0, '2019-06-13 00:31:30', 1, '../../images/icon/noimg.png', '', NULL);
INSERT INTO `good` VALUES (20, '12', 1, 22.0, 0.0, '2019-06-13 00:59:43', 1, '../../images/icon/noimg.png', '', NULL);
INSERT INTO `good` VALUES (21, '22', 1, 12.0, 0.0, '2019-06-13 01:02:34', 1, '../../images/icon/noimg.png', '', NULL);
INSERT INTO `good` VALUES (22, '223', 1, 222.0, 0.0, '2019-06-13 01:06:00', 1, '../../images/icon/noimg.png', '', NULL);
INSERT INTO `good` VALUES (23, '2223', 1, 12.0, 1.0, '2019-06-13 01:07:24', 1, '../../images/icon/noimg.png', '', NULL);
INSERT INTO `good` VALUES (24, '222', 1, 31.0, 22.0, '2019-06-13 01:08:11', 1, '../../images/icon/noimg.png', '', NULL);
INSERT INTO `good` VALUES (25, '22231', 1, 22.0, 0.0, '2019-06-13 01:11:32', 1, '../../images/icon/noimg.png', '', NULL);
INSERT INTO `good` VALUES (32, '1222222', 1, 1222.0, 0.0, '2019-06-17 23:48:52', 1, '../../images/icon/noimg.png', '', NULL);
INSERT INTO `good` VALUES (37, '英雄联盟', 1, 200.0, 0.0, '2019-06-18 01:46:56', 1, 'http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0H0fCAewPZAAHOGYy0SIw332.jpg', 'http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0H0fSAb8G3AAHOGYy0SIw734.jpg,http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0H0faAWM3bAA1eBOVQX64320.png,http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0H0fiAI8EbAAHOGYy0SIw419.jpg,http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0H0fqATDs_AA1eBOVQX64451.png,http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0H0fyAMXuYAAHOGYy0SIw968.jpg,http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0H0f6ARxYKAAHOGYy0SIw221.jpg,http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0H0gGAKc08AA1eBOVQX64592.png,http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0H0gOAfoLaAA1eBOVQX64294.png,http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0H0gWAIpswAAHOGYy0SIw349.jpg,http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0H0geASzsKAAHOGYy0SIw029.jpg,http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0H0gqAI2Z2AA1eBOVQX64675.png,http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0H0gyATAClAA1eBOVQX64791.png', 'YSL全新限量圣诞彩妆【金夜繁星限量彩妆盘】是时尚配件，更是一个收藏YSL女人所有美丽秘密的彩妆盘，拥有4色派对眼影色选：紫梅、璨金、古铜和金属玫瑰，搭配裸唇和女王艳红两款唇色，无论是优雅气质还是华丽气势都能驾驭！');
INSERT INTO `good` VALUES (38, '马甲个', 3, 111.0, 0.0, '2019-06-23 14:47:18', 1, 'http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0PIHGAeDNPAA1eBOVQX64786.png', 'http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0PIHWAV83XAAHOGYy0SIw715.jpg', NULL);
INSERT INTO `good` VALUES (39, '美国对台军售哪些企业将被中国制裁美国对台军售，哪些企业将制裁', 3, 100.0, 0.0, '2019-06-25 23:30:00', 1, 'http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0SPFaAZIGWAAHOGYy0SIw141.jpg', 'http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0SPEKAGQqUAAHOGYy0SIw457.jpg,http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0SPEWAFRlvAAHOGYy0SIw162.jpg,http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0SPEeAQ9j2AAHOGYy0SIw838.jpg,http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0SPEqAIk2uAA1eBOVQX64769.png,http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0SPE2AQ1N-AA1eBOVQX64456.png,http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0SPE-AZMU6AAHOGYy0SIw079.jpg', 'YSL全新限量圣诞彩妆【金夜繁星限量彩妆盘】是时尚配件，更是一个收藏YSL女人所有美丽秘密的彩妆盘，拥有4色派对眼影色选：紫梅、璨金、古铜和金属玫瑰，搭配裸唇和女王艳红两款唇色，无论是优雅气质还是华丽气势都能驾驭！');
INSERT INTO `good` VALUES (40, '赵信', 2, 111.0, 0.0, '2019-06-26 22:37:38', 1, 'http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0TgyOAHv-aAAHOGYy0SIw365.jpg', 'http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0TgyeAdXDVAAHOGYy0SIw134.jpg,http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0TgyqABjA6AA1eBOVQX64805.png', NULL);
INSERT INTO `good` VALUES (41, '你好', 1, 100.0, 0.0, '2019-06-26 22:40:10', 1, 'http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0Tg76AaCAQAAHOGYy0SIw122.jpg', 'http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0Tg8KAR0a2AA1eBOVQX64032.png,http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0Tg8SAXRlwAAHOGYy0SIw388.jpg', NULL);
INSERT INTO `good` VALUES (42, 'sada', 1, 100.0, 1.0, '2019-07-14 00:07:30', 1, 'http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0qAb2AYPAqAAHOGYy0SIw683.jpg', '', NULL);
INSERT INTO `good` VALUES (43, '你好噜啦', 27, 12.0, 1.0, '2019-07-21 12:22:33', 1, 'http://127.0.0.1:9999/group1/M00/00/01/wKgCgV0z6ISANXtgAAHOGYy0SIw554.jpg', '', NULL);
INSERT INTO `good` VALUES (44, '中华', 4, 15.0, 0.0, '2019-07-24 23:49:17', 1, 'http://127.0.0.1:9999/group1/M00/00/02/wKgCgV04feyAJERBAAHOGYy0SIw980.jpg', 'http://127.0.0.1:9999/group1/M00/00/01/wKgCgV04fdKAckC0AAHOGYy0SIw924.jpg,http://127.0.0.1:9999/group1/M00/00/01/wKgCgV04fdSAXCyDAAHOGYy0SIw057.jpg,http://127.0.0.1:9999/group1/M00/00/02/wKgCgV04fdaAR4GXAADfjsj9IGQ127.jpg,http://127.0.0.1:9999/group1/M00/00/02/wKgCgV04fdmAB35dAADfjsj9IGQ495.jpg,http://127.0.0.1:9999/group1/M00/00/02/wKgCgV04fd6ACNuFAADfjsj9IGQ367.jpg,http://127.0.0.1:9999/group1/M00/00/02/wKgCgV04feGAJqkgAADfjsj9IGQ226.jpg,http://127.0.0.1:9999/group1/M00/00/02/wKgCgV04feiAIIh2AADfjsj9IGQ629.jpg', NULL);
INSERT INTO `good` VALUES (45, '玉溪', 2, 18.0, 16.0, '2019-07-24 23:53:20', 1, 'http://127.0.0.1:9999/group1/M00/00/02/wKgCgV04fuGAX6-AAAHOGYy0SIw041.jpg', 'http://127.0.0.1:9999/group1/M00/00/02/wKgCgV04fueAAerSAADfjsj9IGQ315.jpg', '玉溪的烟，很好～');
INSERT INTO `good` VALUES (46, '1', 2, 111.0, 12.0, '2019-09-01 16:05:44', 1, 'http://127.0.0.1:9999/group1/M00/00/02/wKgCgV1re9GALGChAADfjsj9IGQ851.jpg', '', '');
INSERT INTO `good` VALUES (47, '111', 2, 22.0, 12.0, '2019-09-01 16:05:56', 1, 'http://127.0.0.1:9999/group1/M00/00/02/wKgCgV1re-KAGt_BAADfjsj9IGQ516.jpg', '', '');
INSERT INTO `good` VALUES (48, '1111', 2, 122.0, 2.0, '2019-09-01 16:06:26', 1, 'http://127.0.0.1:9999/group1/M00/00/02/wKgCgV1re_6ARdE4AADfjsj9IGQ860.jpg', '', '');
INSERT INTO `good` VALUES (49, '11111', 2, 222.0, 2.0, '2019-09-01 16:06:53', 1, 'http://127.0.0.1:9999/group1/M00/00/02/wKgCgV1rfBqAf7VmAADfjsj9IGQ343.jpg', '', '');
INSERT INTO `good` VALUES (50, '12111', 4, 1222.0, 12.0, '2019-09-01 16:07:11', 1, 'http://127.0.0.1:9999/group1/M00/00/02/wKgCgV1rfCqATH62AADfjsj9IGQ178.jpg', '', '');
INSERT INTO `good` VALUES (51, '1232111', 17, 12.0, 1.0, '2019-09-01 16:07:30', 1, 'http://127.0.0.1:9999/group1/M00/00/02/wKgCgV1rfECAZg_oAADfjsj9IGQ729.jpg', '', '');
INSERT INTO `good` VALUES (52, '2112312', 16, 1222.0, 0.0, '2019-09-01 16:12:28', 1, 'http://127.0.0.1:9999/group1/M00/00/02/wKgCgV1rfWqALsE5AADfjsj9IGQ250.jpg', '', '');

-- ----------------------------
-- Table structure for good_category
-- ----------------------------
DROP TABLE IF EXISTS `good_category`;
CREATE TABLE `good_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sort` int(11) NULL DEFAULT NULL,
  `chart` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of good_category
-- ----------------------------
INSERT INTO `good_category` VALUES (1, '饮料', 4, NULL);
INSERT INTO `good_category` VALUES (2, '酒水', 1, NULL);
INSERT INTO `good_category` VALUES (3, '简餐', 3, NULL);
INSERT INTO `good_category` VALUES (4, '火锅', 2, NULL);
INSERT INTO `good_category` VALUES (15, '母婴用品', 7, NULL);
INSERT INTO `good_category` VALUES (16, '进口奶粉', 8, NULL);
INSERT INTO `good_category` VALUES (17, '健康保健', 9, NULL);
INSERT INTO `good_category` VALUES (18, '食品辅食', 10, NULL);
INSERT INTO `good_category` VALUES (19, '美容护肤', 12, NULL);
INSERT INTO `good_category` VALUES (20, '洗护日化', 13, NULL);
INSERT INTO `good_category` VALUES (21, '家居生活', 14, NULL);
INSERT INTO `good_category` VALUES (22, '宝宝玩具', 15, NULL);
INSERT INTO `good_category` VALUES (23, '大牌彩妆', 16, NULL);
INSERT INTO `good_category` VALUES (24, 'LLLL', 18, NULL);
INSERT INTO `good_category` VALUES (25, 'LV$LV', 19, NULL);
INSERT INTO `good_category` VALUES (26, 'LSSA', 20, NULL);
INSERT INTO `good_category` VALUES (28, 'SILAI', 22, NULL);
INSERT INTO `good_category` VALUES (29, 'SUUIOO', 24, NULL);

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` tinyint(1) NULL DEFAULT NULL,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES (1, 'zyt', '7630508tong', 1, '张运通', NULL, '17629298189', '707150586@qq.com', NULL);
INSERT INTO `manager` VALUES (2, 'wn', '111111', 0, '温娜', NULL, '15353775130', 'wenna2@huawei .com', NULL);

-- ----------------------------
-- Table structure for order_category
-- ----------------------------
DROP TABLE IF EXISTS `order_category`;
CREATE TABLE `order_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` float(10, 1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order_category
-- ----------------------------
INSERT INTO `order_category` VALUES (1, '299轰趴', 299.0);
INSERT INTO `order_category` VALUES (2, '399轰趴', 399.0);
INSERT INTO `order_category` VALUES (3, '521轰趴', 521.0);
INSERT INTO `order_category` VALUES (4, '麻将', 88.0);
INSERT INTO `order_category` VALUES (5, '狼人杀包场', 300.0);

-- ----------------------------
-- Table structure for order_good_item
-- ----------------------------
DROP TABLE IF EXISTS `order_good_item`;
CREATE TABLE `order_good_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `good_id` int(11) NOT NULL,
  `good_count` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for order_server_item
-- ----------------------------
DROP TABLE IF EXISTS `order_server_item`;
CREATE TABLE `order_server_item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `server_id` int(11) NOT NULL,
  `server_count` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for person
-- ----------------------------
DROP TABLE IF EXISTS `person`;
CREATE TABLE `person`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `resrver1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 82 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of person
-- ----------------------------
INSERT INTO `person` VALUES (1, '武通', 1, '17629298188', '', '2018-08-19 00:05:25', '');
INSERT INTO `person` VALUES (2, '温娜', 0, '15353775130', '活动会员', '2018-07-31 15:16:30', NULL);
INSERT INTO `person` VALUES (19, '牛龙1', 1, '18778882220', '1', '2018-08-08 15:56:55', NULL);
INSERT INTO `person` VALUES (20, '牛龙2', 1, '18778882222', '1', '2018-08-08 15:56:55', NULL);
INSERT INTO `person` VALUES (21, '牛龙3', 1, '18778882223', '1', '2018-08-08 15:56:55', NULL);
INSERT INTO `person` VALUES (22, '牛龙4', 1, '18778882224', '1', '2018-08-08 15:56:55', NULL);
INSERT INTO `person` VALUES (23, '牛龙5', 1, '18778882225', '1', '2018-08-08 15:56:55', NULL);
INSERT INTO `person` VALUES (24, '牛龙6', 1, '18778882226', '1', '2018-08-08 15:56:55', NULL);
INSERT INTO `person` VALUES (25, '牛龙7', 1, '18778882227', '1', '2018-08-08 15:56:55', NULL);
INSERT INTO `person` VALUES (26, '牛龙8', 1, '18778882228', '1', '2018-08-08 15:56:55', NULL);
INSERT INTO `person` VALUES (27, '牛龙9', 1, '18778882229', '1', '2018-08-08 15:56:55', NULL);
INSERT INTO `person` VALUES (28, '牛龙10', 1, '18778882240', '1', '2018-08-08 15:56:55', NULL);
INSERT INTO `person` VALUES (29, '牛龙11', 1, '18778882241', '1', '2018-08-08 15:56:55', NULL);
INSERT INTO `person` VALUES (31, '牛龙13', 1, '18778882243', '1', '2018-08-08 15:56:55', NULL);
INSERT INTO `person` VALUES (32, '牛龙14', 1, '18778882244', '1', '2018-08-08 15:56:55', NULL);
INSERT INTO `person` VALUES (33, '牛龙15', 1, '18778882245', '1', '2018-08-08 15:56:55', NULL);
INSERT INTO `person` VALUES (34, '牛龙16', 1, '18778882246', '1', '2018-08-08 15:56:55', NULL);
INSERT INTO `person` VALUES (35, '牛龙17', 1, '18778882247', '1', '2018-08-08 15:56:55', NULL);
INSERT INTO `person` VALUES (36, '牛龙18', 1, '18778882248', '1', '2018-08-08 15:56:55', NULL);
INSERT INTO `person` VALUES (37, '牛龙19', 1, '18778882249', '1', '2018-08-19 15:54:16', NULL);
INSERT INTO `person` VALUES (71, '牛牛1', 1, '12222222223', '1', '2018-08-19 00:58:18', NULL);
INSERT INTO `person` VALUES (72, '小马佩德罗', 1, '15349246114', '', '2018-08-22 10:27:56', NULL);
INSERT INTO `person` VALUES (73, '找份', 1, '14747475454', '', '2018-09-02 21:08:28', NULL);
INSERT INTO `person` VALUES (74, '正数', 1, '15455554554', '', '2018-09-02 21:11:39', NULL);
INSERT INTO `person` VALUES (75, '负数', 1, '15444448787', '1', '2018-09-02 21:13:04', NULL);
INSERT INTO `person` VALUES (76, '1', 1, '17544445888', '1', '2018-09-02 21:21:56', NULL);
INSERT INTO `person` VALUES (81, '张运通', 1, '17629298189', '', '2018-09-02 23:45:14', NULL);

-- ----------------------------
-- Table structure for person_love
-- ----------------------------
DROP TABLE IF EXISTS `person_love`;
CREATE TABLE `person_love`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `openid` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `good_id` int(11) NULL DEFAULT NULL,
  `add_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of person_love
-- ----------------------------
INSERT INTO `person_love` VALUES (1, '1', 2, '2019-07-03 15:42:41');
INSERT INTO `person_love` VALUES (4, '2', 4, '2019-07-03 15:56:05');
INSERT INTO `person_love` VALUES (5, '72', 4, '2019-07-03 17:42:04');
INSERT INTO `person_love` VALUES (6, '73', 4, '2019-07-03 17:42:25');
INSERT INTO `person_love` VALUES (7, '74', 4, '2019-07-03 17:42:35');
INSERT INTO `person_love` VALUES (8, '75', 37, '2019-07-03 17:42:46');
INSERT INTO `person_love` VALUES (39, 'undefined', 2, '2019-07-14 22:43:18');
INSERT INTO `person_love` VALUES (54, 'o4Cg449DdaqJADYe8Bc0vlBwZOQo', 39, '2019-07-14 23:21:36');
INSERT INTO `person_love` VALUES (57, 'o4Cg449DdaqJADYe8Bc0vlBwZOQo', 5, '2019-07-14 23:26:25');
INSERT INTO `person_love` VALUES (62, 'o4Cg449DdaqJADYe8Bc0vlBwZOQo', 15, '2019-07-14 23:26:42');
INSERT INTO `person_love` VALUES (63, 'o4Cg449DdaqJADYe8Bc0vlBwZOQo', 2, '2019-07-24 01:00:49');
INSERT INTO `person_love` VALUES (64, 'o4Cg449DdaqJADYe8Bc0vlBwZOQo', 40, '2019-07-24 01:02:19');
INSERT INTO `person_love` VALUES (65, 'o4Cg449DdaqJADYe8Bc0vlBwZOQo', 43, '2019-07-24 21:11:46');
INSERT INTO `person_love` VALUES (66, 'o4Cg449DdaqJADYe8Bc0vlBwZOQo', 10, '2019-07-24 21:41:24');

-- ----------------------------
-- Table structure for point_detail
-- ----------------------------
DROP TABLE IF EXISTS `point_detail`;
CREATE TABLE `point_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `point` float(6, 1) NOT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for server
-- ----------------------------
DROP TABLE IF EXISTS `server`;
CREATE TABLE `server`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `server_category_id` int(11) NOT NULL,
  `price` float(10, 1) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for server_category
-- ----------------------------
DROP TABLE IF EXISTS `server_category`;
CREATE TABLE `server_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of server_category
-- ----------------------------
INSERT INTO `server_category` VALUES (1, '团建活动');
INSERT INTO `server_category` VALUES (2, '生日趴');
INSERT INTO `server_category` VALUES (3, '求婚趴');
INSERT INTO `server_category` VALUES (4, '交友趴');
INSERT INTO `server_category` VALUES (5, '家庭趴');

-- ----------------------------
-- Table structure for t_token
-- ----------------------------
DROP TABLE IF EXISTS `t_token`;
CREATE TABLE `t_token`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 192 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_token
-- ----------------------------
INSERT INTO `t_token` VALUES (56, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1MzU5MDYxNzcsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.g6SYgjWJQlDu0O_6oFEPCTJYkqIFmqYrRTGcVA9rJuE', '2018-09-03 00:51:28');
INSERT INTO `t_token` VALUES (57, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1MzU5MDcxMzAsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.okrp5hMbSjephdsBKMxvXOSOzIpNjqkKkFTO7b_Tgk4', '2018-09-03 00:52:21');
INSERT INTO `t_token` VALUES (58, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1MzU5MDcxNDksInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.oWk4Y9gPtlxJMwLn4SntFZ0ht01gj3viLRM_7ukEBEc', '2018-09-03 00:52:29');
INSERT INTO `t_token` VALUES (59, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjAzNDk5NjIsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.gdnldJhXYxyJr0D35GDWcwknVOyQXjiV-Q5P-TOkB2I', '2019-06-12 22:34:42');
INSERT INTO `t_token` VALUES (61, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3OTM4MzAsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.t5mqEjbuKI8XzFKd64DBsmiGpal2pnYZQPr4FE9GtK0', '2019-06-17 19:28:39');
INSERT INTO `t_token` VALUES (63, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3ODMzMTUsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.v-jte1kNaq_QPaTUICPnmh2j7n6FMAmgQrUFeV8yZ4o', '2019-06-17 22:55:19');
INSERT INTO `t_token` VALUES (64, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3ODQxODUsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.W4fCGOp7ThGcG1gBfNtzqlJGXY9MJ8ZKWpAbSohtS-E', '2019-06-17 23:09:46');
INSERT INTO `t_token` VALUES (65, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3ODQ5NjcsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.EPU0nXJLZRBnwr_q9xM1_5zwKEd2beEdEUyo8zu74qs', '2019-06-17 23:22:48');
INSERT INTO `t_token` VALUES (66, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3ODU0NzgsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.AI_eBLt8aiNCGvp_VGT5TmTKJWo-lz6rmksX37HK8zM', '2019-06-17 23:31:19');
INSERT INTO `t_token` VALUES (67, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3ODU1MzYsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.N8VypM55EcrVHKp_WbL3ZSTWRIdL4dAA7_FN9-od99I', '2019-06-17 23:32:16');
INSERT INTO `t_token` VALUES (68, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3ODU1NjcsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.VRKmeqaznf2fsX9zmTfYCjfBpDU5NTRTrVDF56WgDHI', '2019-06-17 23:32:48');
INSERT INTO `t_token` VALUES (69, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3ODYwODYsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.4clgU6PI-M36HgKSCg84oHdBkwTs6gwPxVaFiubVdkU', '2019-06-17 23:43:24');
INSERT INTO `t_token` VALUES (70, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3ODY1MTcsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.2bam_1AvPpcaNf0qjYSW7srsR-pb-4ECYWX65BfXJHI', '2019-06-17 23:48:52');
INSERT INTO `t_token` VALUES (71, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3ODY4NzMsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.yDapKNbDlxoaPNtbOKuVNvNY2Ux7LYXyqes2aWuShmo', '2019-06-17 23:54:34');
INSERT INTO `t_token` VALUES (75, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3ODgwNDUsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.f_4CAShCcKgl9WlV4faeUINvooM9vYxlRcY-Qd-fJXk', '2019-06-18 00:14:08');
INSERT INTO `t_token` VALUES (77, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3ODgzOTcsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.xqF-sEjnnUn85We2KLb6eo6lvmiLeJ0aZzwX5oV1Dno', '2019-06-18 00:20:00');
INSERT INTO `t_token` VALUES (79, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3ODg3MzcsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.OCnNIuPP8gsEOeTXxW78-gWi6dGQdae8FMz6EFBp7As', '2019-06-18 00:25:40');
INSERT INTO `t_token` VALUES (80, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3ODg3OTgsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.wwkJJL4jifq1GUxCrRjvOZ7v-1IoHhi8bU206LAFJlo', '2019-06-18 00:26:39');
INSERT INTO `t_token` VALUES (81, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3ODg4MjEsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.u2G0DyXX3Y6w65JhvUAF4EsQiSs-rwXrhbcm925sCBA', '2019-06-18 00:27:02');
INSERT INTO `t_token` VALUES (83, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3ODg5MDcsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.8SBYtJI5hdkZ3qv9JY8_riRbYqv2XLK4O2ZzOxSDP2w', '2019-06-18 00:28:30');
INSERT INTO `t_token` VALUES (84, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3ODkxMzUsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.DXvLyLHYAgPoNN6JUmaO252XFIKen636gfDH3hjQIs0', '2019-06-18 00:32:16');
INSERT INTO `t_token` VALUES (88, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3OTAwODQsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.fVw5osPD1JxKTKoMg-sOyvhq032VxX3Czwa4gGMP_Hc', '2019-06-18 00:48:06');
INSERT INTO `t_token` VALUES (89, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3OTAxNTEsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.XZdrVBkmQfLsYC9FUS3h3dPLhENv5s1BOJH-Fl3Wztc', '2019-06-18 00:49:12');
INSERT INTO `t_token` VALUES (90, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3OTAxOTUsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.w-Z_qpF-GHuuaUewTwvlauqR0Y_PEDgVuu1-w1Zyoqw', '2019-06-18 00:49:56');
INSERT INTO `t_token` VALUES (91, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3OTAyNDMsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.XnNNLjinT-DaPVP-ftOwepnCSO4s4kQdpfXATMPpIS8', '2019-06-18 00:50:44');
INSERT INTO `t_token` VALUES (92, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3OTAzMjYsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.76ONb8Wxb-nOhjPVqRweUmzSaL1HyQb9F_beCHvp-9k', '2019-06-18 00:52:06');
INSERT INTO `t_token` VALUES (94, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3OTA1NzcsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.IlWyKZ2UiVFxHqg9kzszP3nXF_raA3z8m_3joLuYfzs', '2019-06-18 00:56:20');
INSERT INTO `t_token` VALUES (95, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3OTA2MjYsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.PsjYslhHlBUdM0ObBLuxDST8QimMvlxnvxtvqFPdK10', '2019-06-18 00:57:07');
INSERT INTO `t_token` VALUES (96, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3OTA3ODAsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.BuEDAb0r05jCPD7tV6jVpMfheHykb5w4X8VMqOH2hfU', '2019-06-18 00:59:41');
INSERT INTO `t_token` VALUES (97, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3OTEzOTAsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.F5TuaA7KoNO084E_AlsdAB99MnOGgDtc1Cp1tzGglx8', '2019-06-18 01:12:27');
INSERT INTO `t_token` VALUES (98, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3OTIwMjYsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.iH-ZxRpXf5j4zIUq6ectbGfurxTXLZWwbnTwmpODOMw', '2019-06-18 01:22:19');
INSERT INTO `t_token` VALUES (99, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3OTIxNTcsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.EZaEQy8X3DwFsZ7mdByG2GHsHVPSvWZfLHcR4c7wo14', '2019-06-18 01:22:38');
INSERT INTO `t_token` VALUES (100, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjA3OTIyMjksInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.qblyCrbtbv9GlwhAy8f4ya4YEyNSACZ6i8T6MQ1fI6I', '2019-06-18 01:24:27');
INSERT INTO `t_token` VALUES (102, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNjQ3MDgsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.oepB5rGwCGVj2dub29JefJ5TSwTOrjFrdIIJ6Edi7kc', '2019-06-23 12:46:23');
INSERT INTO `t_token` VALUES (106, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNjU2MzMsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.takH9ucgCQIx-X0JaVsnFw_mAdbno31d5lmT9ZtBdrg', '2019-06-23 12:53:56');
INSERT INTO `t_token` VALUES (108, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNjU3MDAsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.9f-P3N7YFylc9gskLmzTulrKrR9rBbov0vWQXgZMkyA', '2019-06-23 12:55:04');
INSERT INTO `t_token` VALUES (111, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNjcwNjMsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.qtrqyqRqihoAL3emUCkGa1h-aywAM4gt-DPllAcrypo', '2019-06-23 13:17:47');
INSERT INTO `t_token` VALUES (112, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNjcwOTUsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.PAVjiY9NsEijxEQ1DhqOXlhiJDiIsBFoGa8UJtcgEo4', '2019-06-23 13:20:02');
INSERT INTO `t_token` VALUES (113, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNjcyMTMsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.YuI_eHwegGG2MFdrSP-RjcsjsThgtUGI0lxI0FbyjoU', '2019-06-23 13:20:13');
INSERT INTO `t_token` VALUES (114, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNjcyODMsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.MK9WMJQj5qpA9t-7YKtJ1Xib_0JyM1irvSO5oExMjk0', '2019-06-23 13:21:23');
INSERT INTO `t_token` VALUES (115, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNjc0MTIsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.sqHtk1F3ehIohB7P9K0QloL2YU9VwqF4rrQ0xR-k5w8', '2019-06-23 13:23:33');
INSERT INTO `t_token` VALUES (116, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNjc0NTQsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.gpqU0ApbbwjUA8tp_NTNw4jKn_vC3oVcAgpuUvgUQRw', '2019-06-23 13:30:07');
INSERT INTO `t_token` VALUES (117, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNjc4NzQsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.-HPpQRXuSQlelB7-jszW3OsL9Ve1oL4BKwn1ds27MG4', '2019-06-23 13:31:15');
INSERT INTO `t_token` VALUES (118, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNjkxNjYsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.f5q5lAt44cv1OopXG1b175Mx0oANU3dlo7bDf37YQO0', '2019-06-23 13:52:46');
INSERT INTO `t_token` VALUES (119, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNjk5OTgsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.1c3bk6CRjnNz5q9V7XJij_RUB8qyzgve-4mpkjFRQws', '2019-06-23 14:06:54');
INSERT INTO `t_token` VALUES (120, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzAxMjksInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.TSwu64uFQPoltK9ksuzSg4bFELS7-homeuqGahLQZN0', '2019-06-23 14:09:05');
INSERT INTO `t_token` VALUES (121, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzAxNjUsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.eSN40ImU8K-7YQC3rXQleXuB5dx-Vk3JW1Kv7To-XfI', '2019-06-23 14:09:26');
INSERT INTO `t_token` VALUES (122, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzAzODAsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.-iqdqauqgO-p7-7UWdJNM0ktDZReSXTP1IUxLrGFxVM', '2019-06-23 14:13:01');
INSERT INTO `t_token` VALUES (123, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzA0MzYsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.WmcnUPaO_oGQtV-6N0w9ORWuYria8z6XBWiJueyga74', '2019-06-23 14:13:56');
INSERT INTO `t_token` VALUES (124, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzA0NDgsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ._G_oJPWFy4rnx-G0gKjG1JwC-JIwJy8fE339E8J05PE', '2019-06-23 14:14:09');
INSERT INTO `t_token` VALUES (125, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzA1MzMsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.ozK1JdFOtAFquRs9qWEOIFYn4-SSvLMlXYOsPNk8BRE', '2019-06-23 14:15:34');
INSERT INTO `t_token` VALUES (126, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzA1NjYsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.9hFSh6yTq50QB5x0C8lNMgvH-k9bkGddAPKmtcP9yD8', '2019-06-23 14:16:06');
INSERT INTO `t_token` VALUES (127, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzA2MTIsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.RzsoBas7CDqz_kn3CiljOeOQv0gRfJnA0uUp1w3iA4c', '2019-06-23 14:16:52');
INSERT INTO `t_token` VALUES (128, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzA4MzksInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.9jK-4K2rA_gnqMKGmtoPSABcpadP2dNAkz_kz5q2kro', '2019-06-23 14:20:40');
INSERT INTO `t_token` VALUES (129, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzA5MjIsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.i-wLPzNKb3vj0NDbvqzpqideIZNzK3B-0fS-qXpLNlE', '2019-06-23 14:22:26');
INSERT INTO `t_token` VALUES (130, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzEwMjYsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.UnpGPeivUvt-RWkv92PxLIWd5E2alKXn2sIPFvlLw8s', '2019-06-23 14:23:47');
INSERT INTO `t_token` VALUES (131, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzExOTMsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.6P7_wU6iGVi7VnqooquEVr5zEm_0dYe0lQwZjT39xVA', '2019-06-23 14:26:33');
INSERT INTO `t_token` VALUES (132, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzEzMDgsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.foElfw5KXlCT8VAEMmXzKR6FRzSVYHaDkvWVDtgSLDE', '2019-06-23 14:28:28');
INSERT INTO `t_token` VALUES (133, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzE0NTgsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.5DoJzmWPz_FBjcyNbWHbVcO-lixpBp84M0mUd71m4zY', '2019-06-23 14:31:31');
INSERT INTO `t_token` VALUES (134, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzE4NjAsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.C7s0-u50MZqyLmnPU_kBna8JaqoZMQN1mXFL6WB1JPM', '2019-06-23 14:37:40');
INSERT INTO `t_token` VALUES (135, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzE4ODAsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.LFY2UUNlFw4BbIqJG1XeVwZURJUdDoW97UCsGodmJ8Y', '2019-06-23 14:38:00');
INSERT INTO `t_token` VALUES (136, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzE5MzUsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.PVHNYPnKmHiAM_wDJGBjmYJa_wdOeAz43G-yqXs8DK8', '2019-06-23 14:39:24');
INSERT INTO `t_token` VALUES (137, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzIwOTAsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.fwuEG1TR6pucMHuvlzoW5I_RrqzPx2_U_9zA5funXh4', '2019-06-23 14:41:31');
INSERT INTO `t_token` VALUES (138, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzIxMjUsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.FLOWG4UVtwMSbvagFCLOvKYLtCVWger3nV8HxmWLNzs', '2019-06-23 14:42:06');
INSERT INTO `t_token` VALUES (139, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzIxOTYsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.qwBVIfFAqcZ64Krbcpj119vnlQ94T9Q8p42M0Fnv8o4', '2019-06-23 14:43:17');
INSERT INTO `t_token` VALUES (140, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzIzNDEsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.dwMIC8wGJib3BeW9nDnkA4iNAM5Eyh2fYJWZNLbHC9Y', '2019-06-23 14:54:42');
INSERT INTO `t_token` VALUES (141, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzMxMjUsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.rKfjbW0p6WcocM2izTNurweaaF1gbesdgqJ7uRZmZ2M', '2019-06-23 14:59:20');
INSERT INTO `t_token` VALUES (142, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzMyNzksInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.wHmf5PHA3PyfHmdE_y4lNT3OWnqoD2rOx3cRlPZR-RU', '2019-06-23 15:01:19');
INSERT INTO `t_token` VALUES (143, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzMzNjYsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.XhkESU1l8jYVFDEDYQ-N8DK7btiLAuebgoNJUjBf21w', '2019-06-23 15:02:47');
INSERT INTO `t_token` VALUES (144, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzM0NjcsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.2ODdHsP1NugcVdF70PgY-mNaUQIK84IkhDvO-x064b0', '2019-06-23 15:04:28');
INSERT INTO `t_token` VALUES (145, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzM5NDQsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.TVOfptgaACsa2Ekb-9VetGzHaLF35FpEq0S0m1_VjZQ', '2019-06-23 15:12:25');
INSERT INTO `t_token` VALUES (146, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEyNzQwNTMsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.gqs-5mLbK31VFNTOW4eqEcw2n-ORJ3eTw1nEWuorxc0', '2019-06-23 15:14:14');
INSERT INTO `t_token` VALUES (147, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDE1NjksInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.-0DKDEla1AEl4hz7-wpx6cGcPE-1IweHTImUxLTZZSU', '2019-06-23 22:54:20');
INSERT INTO `t_token` VALUES (148, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDIyNDEsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.ky7u9ApHU798zSn7vXbV-dnm7MkXxOOKJ3gDH3tGJr8', '2019-06-23 23:12:23');
INSERT INTO `t_token` VALUES (149, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDI3NjAsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.NnxEMVk5piUeELEd0Jyoj1OZPI2ocSFctHMZ9vzCijI', '2019-06-23 23:13:25');
INSERT INTO `t_token` VALUES (150, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDMwMjgsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.ghUUKDAoTlraRKvjGMz8SjHaiHP9SlgWkTkk2MXBKR4', '2019-06-23 23:17:08');
INSERT INTO `t_token` VALUES (151, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDMwNjksInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.VHd3tkaukDfgj2AFXWRb9axskfFKfNNHV4CwZQRzJcE', '2019-06-23 23:17:50');
INSERT INTO `t_token` VALUES (152, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDMxMjcsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.EIlYiMZH8ziBYb77-iQOK2URKCm7WsD-gy8GAipLonA', '2019-06-23 23:18:48');
INSERT INTO `t_token` VALUES (153, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDMxOTAsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.zVBYfWatjlVoW1Kj_7I05vFpTeD1VjyyPl_wpODoiX8', '2019-06-23 23:19:51');
INSERT INTO `t_token` VALUES (154, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDMyMjUsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.vE9xz-oyKBRIQax8Ock7OAYg7T5UaRvkWu_mwJYX7h8', '2019-06-23 23:20:38');
INSERT INTO `t_token` VALUES (155, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDMyNDcsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.Xme67qByE4RAP_dOYNnIN54DODZZm4k-2QzDBOgE_s8', '2019-06-23 23:21:10');
INSERT INTO `t_token` VALUES (156, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDMzMzMsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.tgpM6A8QYdza9u-wyUILCSDAd1ZQKJVwfLvYDTBzKAU', '2019-06-23 23:22:14');
INSERT INTO `t_token` VALUES (157, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDMzNTEsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.FXgJhHox3X7cr9jLHtvKTZnIUcGI5yFEi5cXN73uOUY', '2019-06-23 23:23:29');
INSERT INTO `t_token` VALUES (158, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDM0NjUsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.2YMhO9KfJQ0-jhDbtA0uF-qfVNZU_x9IN_pezh2zUSU', '2019-06-23 23:27:46');
INSERT INTO `t_token` VALUES (159, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDM3MTAsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.t5Dy_iPortFqoj6-xU0vjbaMvILOkXNyBMXItFhzB0E', '2019-06-23 23:29:13');
INSERT INTO `t_token` VALUES (160, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDM4MzYsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.M9jZATbs9Mv8WUcbFmmPg68Q1TS5Ard_cEOPzMmfBIs', '2019-06-23 23:32:04');
INSERT INTO `t_token` VALUES (161, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDQxMTEsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.8YhBneYrJQjemSokAPCnD_Ks6KfMBFPV4W1dcITra_g', '2019-06-23 23:35:25');
INSERT INTO `t_token` VALUES (162, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDQxOTgsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.mIClfpodyLP1BLgqN6c2eN-fVRbg5-wzqzpjrcCZIZg', '2019-06-23 23:37:06');
INSERT INTO `t_token` VALUES (163, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDQzODksInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.B5HeRN_9INZi85B_oH-OqY4S2tPPkG_YeDPMn-GYRjM', '2019-06-23 23:40:32');
INSERT INTO `t_token` VALUES (164, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDQ0NDQsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.fT9V4RSPvLgb0VFVOUmHffjtVrcUCDcavDkWK7HrDIQ', '2019-06-23 23:40:45');
INSERT INTO `t_token` VALUES (165, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDQ1NTMsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.U4XH34xylJMMFxFfv2BiAdq-K7l3ffNw-DpmRJ2ibpQ', '2019-06-23 23:42:34');
INSERT INTO `t_token` VALUES (166, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDQ4MjYsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.gEz2LXc6UQ0mVIPG9BR2e55sjYlewLm65D9MoRW_daE', '2019-06-23 23:47:06');
INSERT INTO `t_token` VALUES (167, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDQ5NDgsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.WlsOUBOaG7-O7YNxrt-cONCBrHY_iYR-M8F5jHVXrSc', '2019-06-23 23:50:48');
INSERT INTO `t_token` VALUES (168, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjEzMDUxMDYsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.Su6ItLAPx_K8ryo0dhwCGQ_4r-8QcIRuY6fIBmg1O5E', '2019-06-23 23:52:26');
INSERT INTO `t_token` VALUES (169, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM2ODA0MjIsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.T5ahbuv4ILtJqQMoIs2pQ1-AePiwKh_jndtfuxER7to', '2019-07-21 11:40:22');
INSERT INTO `t_token` VALUES (170, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM2ODE4ODUsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.74mwNDKKx5B4e-NMvXfslF_4PbGJ2gVVVaPWrMCaOgw', '2019-07-21 12:04:45');
INSERT INTO `t_token` VALUES (171, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM2ODI4MjAsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.3WEuOGJpTNTQnwEVKl8dNKP0y9nX-5VcSzD42yl5Ayw', '2019-07-21 12:20:20');
INSERT INTO `t_token` VALUES (172, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM2ODM4NzAsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.zw-el_bCzrlQpIhB9y-DHDOm_5Fh38VyG7xuMrNK0dA', '2019-07-21 12:37:50');
INSERT INTO `t_token` VALUES (173, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM4ODkyNDEsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.B4vcO3gNmuzr6gZiXoXjuvRXxd8LTBOE-nRwxbShEZ4', '2019-07-23 21:40:41');
INSERT INTO `t_token` VALUES (174, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM4OTAxNTEsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.V4DHb5cFMHG-l9S_AnmQ6FiAan2xMUBPrBMmhkEBTN4', '2019-07-23 21:55:51');
INSERT INTO `t_token` VALUES (175, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM4OTA3NjksInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.WVis9ulGUYdTSoeJWtQFdUZWLl_DO_ttXYh6t77Z1Oo', '2019-07-23 22:06:09');
INSERT INTO `t_token` VALUES (176, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM4OTI3MzQsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.LibXpJ9etL2x7gUlO5HZ61xeZOuMMEA9vciWxzvaRAI', '2019-07-23 22:38:54');
INSERT INTO `t_token` VALUES (177, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM4OTI5NDIsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.u3-CdL6xCRoPyWMZF9o680rvinTOQMJlS0JtfSwCnWE', '2019-07-23 22:42:22');
INSERT INTO `t_token` VALUES (178, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM4OTMwNzcsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.eyIh3x0dYL9FGkQKa4gTcjdgfJummA58dzfH5x4YILo', '2019-07-23 22:44:37');
INSERT INTO `t_token` VALUES (179, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM4OTMxNDEsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.oMrStidU73TTX7eHy7QTUqOsZRna0cF6WghOwW-mB-w', '2019-07-23 22:45:41');
INSERT INTO `t_token` VALUES (180, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM4OTM0NDYsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.a9eL3fTtPwA697_v0ut1h9fDibProBm9snR4NHyeAOE', '2019-07-23 22:50:46');
INSERT INTO `t_token` VALUES (181, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM4OTM4NDQsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.EG7c8QdEI2SKHBgSVLrq_LSbwDzxmdZrx8l0-qHngOg', '2019-07-23 22:57:24');
INSERT INTO `t_token` VALUES (182, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM4OTQwMTcsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.qTaQXAqPEW2NHr87P3X5ftbTUiCJpX80aHedICoLtR0', '2019-07-23 23:00:17');
INSERT INTO `t_token` VALUES (183, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM4OTQxNzAsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.MYqrZkzZvOdkzjh7Yar569pMnhLD5u44BU4hKXwukS4', '2019-07-23 23:02:50');
INSERT INTO `t_token` VALUES (184, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM4OTQyMDIsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.Xzl63gTuqfBz2hUZZlhH15LKbaf7JXhQ8nJgKWnOXq8', '2019-07-23 23:03:22');
INSERT INTO `t_token` VALUES (185, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM4OTUyMDgsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.cbZ-ZTC3r0yyM_4wUlo2rWq-sa5JcXnvJARCIW8y-BQ', '2019-07-23 23:20:08');
INSERT INTO `t_token` VALUES (186, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM4OTYyMjMsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.N6JSs19dFx5ZAgnXpwLYVk6cjODpMPHNHStlk5Fw2E0', '2019-07-23 23:37:03');
INSERT INTO `t_token` VALUES (187, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM4OTYyNjYsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.bgYxTjMww3Ar8c97IVOTYuPTFa7Ww8vx1KSVfa4ppdU', '2019-07-23 23:37:46');
INSERT INTO `t_token` VALUES (188, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM4OTcxNzMsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.RUZNt0Yc6hjTGOtyZBoGeo2u2EuySZWMh3EV-k2IwhM', '2019-07-23 23:52:53');
INSERT INTO `t_token` VALUES (189, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM5NzYwMzksInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.08adX8xG_8SJVdms4dA6ZccYixMsX4rOvh69dU3opFg', '2019-07-24 21:47:19');
INSERT INTO `t_token` VALUES (190, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM5ODE4MzUsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.oh2IJsOhAZoHg9NOtOC02n5IfT0eLOGhwKTHHsdVTug', '2019-07-24 23:23:55');
INSERT INTO `t_token` VALUES (191, 2, 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJtb3RoYW50eS5jb20iLCJpYXQiOjE1NjM5ODIzOTEsInVzZXJuYW1lIjoid24iLCJzY29wZXMiOlsib3BlbiJdfQ.JzMsgDxLjbn2v4IGJ1AsEeGHKiFxCD0QDkpc2MnNbr4', '2019-07-24 23:33:11');

-- ----------------------------
-- Table structure for vip_order
-- ----------------------------
DROP TABLE IF EXISTS `vip_order`;
CREATE TABLE `vip_order`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `person_id` int(11) UNSIGNED NOT NULL,
  `order_serial_number` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `order_status` tinyint(1) NOT NULL,
  `order_category_id` int(11) NOT NULL,
  `create_time` datetime(0) NOT NULL,
  `end_time` datetime(0) NULL DEFAULT NULL,
  `notes` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `all_value` float(10, 1) NULL DEFAULT NULL,
  `lay_value` float(10, 1) NULL DEFAULT NULL,
  `free_value` float(10, 1) NULL DEFAULT NULL,
  `point_offset` float(10, 1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of vip_order
-- ----------------------------
INSERT INTO `vip_order` VALUES (95, 74, '20180902225717', 1, 1, '2018-09-02 22:57:17', '2018-09-02 22:57:25', '', 299.0, 0.0, 0.0, 0.0);
INSERT INTO `vip_order` VALUES (96, 74, '20180902225733', 1, 1, '2018-09-02 22:57:33', '2018-09-02 22:57:42', '', 269.0, 0.0, 0.0, 30.0);
INSERT INTO `vip_order` VALUES (97, 81, '20180902225839', 1, 4, '2018-09-02 22:58:39', '2018-09-02 23:10:35', '', 58.1, 0.0, 0.0, 29.9);
INSERT INTO `vip_order` VALUES (98, 81, '20180902233231', 1, 1, '2018-09-02 23:32:31', '2018-09-02 23:43:48', '', 294.0, 0.0, 0.0, 5.0);
INSERT INTO `vip_order` VALUES (99, 71, '20180902233543', 1, 1, '2018-09-02 23:35:43', '2018-09-02 23:35:51', '', 299.0, 0.0, 0.0, 0.0);
INSERT INTO `vip_order` VALUES (100, 71, '20180902233601', 1, 1, '2018-09-02 23:36:01', '2018-09-02 23:36:10', '', 270.0, 0.0, 0.0, 29.0);
INSERT INTO `vip_order` VALUES (101, 71, '20180902233909', 1, 1, '2018-09-02 23:39:09', '2018-09-02 23:39:46', '', 272.0, 0.0, 0.0, 27.0);

SET FOREIGN_KEY_CHECKS = 1;
