/*
 Navicat Premium Data Transfer

 Source Server         : 本地数据库
 Source Server Type    : MySQL
 Source Server Version : 50723
 Source Host           : localhost:3306
 Source Schema         : myblog

 Target Server Type    : MySQL
 Target Server Version : 50723
 File Encoding         : 65001sys_config

 Date: 21/04/2023 20:06:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for appraise
-- ----------------------------
DROP TABLE IF EXISTS `appraise`;
CREATE TABLE `appraise`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '来自谁的',
  `topic_id` int(11) NOT NULL COMMENT '帖子的id',
  `type` int(11) NOT NULL DEFAULT 0 COMMENT '1:对帖子    0：对帖子里的评论',
  `comment_id` int(11) NOT NULL DEFAULT 0 COMMENT '评论的id，如果是对帖子的操作则为0，默认为0',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '1:处于此状态，0:取消了该状态，如取消点赞',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 183 CHitemiditem_nameARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of appraise
-- ----------------------------
INSERT INTO `appraise` VALUES (72, 99, 1, 1, 0, 1);
INSERT INTO `appraise` VALUES (73, 99, 2, 1, 0, 0);
INSERT INTO `appraise` VALUES (74, 99, 3, 1, 0, 0);
INSERT INTO `appraise` VALUES (75, 99, 6, 1, 0, 1);
INSERT INTO `appraise` VALUES (76, 99, 7, 1, 0, 1);
INSERT INTO `appraise` VALUES (77, 99, 53, 1, 0, 1);
INSERT INTO `appraise` VALUES (78, 99, 52, 1, 0, 1);
INSERT INTO `appraise` VALUES (90, 6, 1, 1, 0, 1);
INSERT INTO `appraise` VALUES (91, 99, 1, 0, 1, 0);
INSERT INTO `appraise` VALUES (92, 99, 1, 0, 5, 1);
INSERT INTO `appraise` VALUES (93, 99, 1, 0, 6, 1);
INSERT INTO `appraise` VALUES (94, 99, 1, 0, 10, 1);
INSERT INTO `appraise` VALUES (95, 99, 1, 0, 22, 1);
INSERT INTO `appraise` VALUES (96, 99, 1, 0, 25, 1);
INSERT INTO `appraise` VALUES (97, 99, 1, 0, 4, 1);
INSERT INTO `appraise` VALUES (98, 99, 1, 0, 3, 1);
INSERT INTO `appraise` VALUES (99, 99, 1, 0, 2, 0);
INSERT INTO `appraise` VALUES (100, 99, 1, 0, 28, 1);
INSERT INTO `appraise` VALUES (101, 99, 1, 0, 39, 1);
INSERT INTO `appraise` VALUES (102, 99, 1, 0, 40, 1);
INSERT INTO `appraise` VALUES (103, 99, 1, 0, 41, 0);
INSERT INTO `appraise` VALUES (104, 99, 1, 0, 44, 0);
INSERT INTO `appraise` VALUES (105, 6, 1, 0, 4, 0);
INSERT INTO `appraise` VALUES (106, 6, 1, 0, 3, 1);
INSERT INTO `appraise` VALUES (107, 6, 1, 0, 1, 1);
INSERT INTO `appraise` VALUES (108, 6, 1, 0, 2, 1);
INSERT INTO `appraise` VALUES (109, 6, 1, 0, 28, 1);
INSERT INTO `appraise` VALUES (110, 6, 1, 0, 39, 1);
INSERT INTO `appraise` VALUES (111, 6, 1, 0, 40, 1);
INSERT INTO `appraise` VALUES (112, 6, 1, 0, 41, 1);
INSERT INTO `appraise` VALUES (113, 6, 1, 0, 44, 1);
INSERT INTO `appraise` VALUES (114, 99, 8, 1, 0, 1);
INSERT INTO `appraise` VALUES (115, 99, 25, 1, 0, 1);
INSERT INTO `appraise` VALUES (116, 99, 33, 1, 0, 0);
INSERT INTO `appraise` VALUES (117, 99, 34, 1, 0, 0);
INSERT INTO `appraise` VALUES (118, 99, 35, 1, 0, 1);
INSERT INTO `appraise` VALUES (119, 99, 36, 1, 0, 1);
INSERT INTO `appraise` VALUES (120, 99, 37, 1, 0, 1);
INSERT INTO `appraise` VALUES (121, 99, 50, 1, 0, 1);
INSERT INTO `appraise` VALUES (122, 6, 2, 1, 0, 1);
INSERT INTO `appraise` VALUES (123, 6, 3, 1, 0, 1);
INSERT INTO `appraise` VALUES (124, 6, 6, 1, 0, 0);
INSERT INTO `appraise` VALUES (125, 6, 7, 1, 0, 1);
INSERT INTO `appraise` VALUES (126, 6, 8, 1, 0, 0);
INSERT INTO `appraise` VALUES (127, 6, 25, 1, 0, 1);
INSERT INTO `appraise` VALUES (128, 6, 33, 1, 0, 1);
INSERT INTO `appraise` VALUES (129, 99, 1, 0, 70, 1);
INSERT INTO `appraise` VALUES (130, 99, 1, 0, 42, 0);
INSERT INTO `appraise` VALUES (131, 99, 1, 0, 52, 1);
INSERT INTO `appraise` VALUES (132, 99, 54, 1, 0, 1);
INSERT INTO `appraise` VALUES (133, 99, 57, 1, 0, 1);
INSERT INTO `appraise` VALUES (134, 99, 56, 1, 0, 1);
INSERT INTO `appraise` VALUES (135, 6, 5, 1, 0, 0);
INSERT INTO `appraise` VALUES (136, 6, 34, 1, 0, 1);
INSERT INTO `appraise` VALUES (137, 6, 35, 1, 0, 1);
INSERT INTO `appraise` VALUES (138, 6, 36, 1, 0, 1);
INSERT INTO `appraise` VALUES (139, 99, 1, 0, 43, 1);
INSERT INTO `appraise` VALUES (140, 99, 1, 0, 47, 1);
INSERT INTO `appraise` VALUES (141, 99, 2, 0, 66, 1);
INSERT INTO `appraise` VALUES (142, 99, 2, 0, 60, 1);
INSERT INTO `appraise` VALUES (143, 99, 3, 0, 73, 0);
INSERT INTO `appraise` VALUES (144, 99, 3, 0, 75, 1);
INSERT INTO `appraise` VALUES (145, 99, 3, 0, 74, 1);
INSERT INTO `appraise` VALUES (146, 99, 2, 0, 58, 1);
INSERT INTO `appraise` VALUES (147, 99, 2, 0, 63, 1);
INSERT INTO `appraise` VALUES (148, 99, 2, 0, 23, 1);
INSERT INTO `appraise` VALUES (149, 99, 1, 0, 69, 1);
INSERT INTO `appraise` VALUES (150, 99, 2, 0, 62, 1);
INSERT INTO `appraise` VALUES (151, 99, 2, 0, 65, 0);
INSERT INTO `appraise` VALUES (152, 99, 2, 0, 55, 0);
INSERT INTO `appraise` VALUES (153, 99, 2, 0, 24, 0);
INSERT INTO `appraise` VALUES (154, 99, 2, 0, 26, 0);
INSERT INTO `appraise` VALUES (155, 99, 1, 0, 68, 1);
INSERT INTO `appraise` VALUES (156, 6, 1, 0, 22, 1);
INSERT INTO `appraise` VALUES (157, 6, 1, 0, 46, 1);
INSERT INTO `appraise` VALUES (158, 6, 1, 0, 25, 1);
INSERT INTO `appraise` VALUES (159, 99, 1, 0, 46, 1);
INSERT INTO `appraise` VALUES (160, 99, 60, 1, 0, 1);
INSERT INTO `appraise` VALUES (161, 6, 1, 0, 42, 1);
INSERT INTO `appraise` VALUES (162, 6, 1, 0, 43, 1);
INSERT INTO `appraise` VALUES (163, 6, 1, 0, 45, 1);
INSERT INTO `appraise` VALUES (164, 99, 59, 1, 0, 1);
INSERT INTO `appraise` VALUES (165, 6, 58, 1, 0, 0);
INSERT INTO `appraise` VALUES (166, 6, 71, 1, 0, 1);
INSERT INTO `appraise` VALUES (167, 99, 58, 1, 0, 1);
INSERT INTO `appraise` VALUES (168, 99, 70, 1, 0, 1);
INSERT INTO `appraise` VALUES (169, 1, 76, 1, 0, 0);
INSERT INTO `appraise` VALUES (170, 1, 78, 1, 0, 1);
INSERT INTO `appraise` VALUES (171, 1, 76, 0, 80, 0);
INSERT INTO `appraise` VALUES (172, 99, 76, 1, 0, 0);
INSERT INTO `appraise` VALUES (173, 1, 79, 1, 0, 1);
INSERT INTO `appraise` VALUES (174, 99, 78, 1, 0, 1);
INSERT INTO `appraise` VALUES (175, 99, 79, 1, 0, 1);
INSERT INTO `appraise` VALUES (176, 1, 80, 1, 0, 0);
INSERT INTO `appraise` VALUES (177, 99, 80, 1, 0, 1);
INSERT INTO `appraise` VALUES (178, 99, 87, 1, 0, 1);
INSERT INTO `appraise` VALUES (179, 99, 88, 1, 0, 1);
INSERT INTO `appraise` VALUES (180, 99, 81, 1, 0, 1);
INSERT INTO `appraise` VALUES (181, 1, 87, 1, 0, 0);
INSERT INTO `appraise` VALUES (182, 7, 87, 1, 0, 0);

-- ----------------------------
-- Table structure for ban
-- ----------------------------
DROP TABLE IF EXISTS `ban`;
CREATE TABLE `ban`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `date_from` date NULL DEFAULT NULL COMMENT '封禁开始时间',
  `date_to` date NULL DEFAULT NULL COMMENT '封禁结束时间',
  `reason` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '封禁原因',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of ban
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `comment_user_id` int(11) NOT NULL COMMENT '发评论的用户ID',
  `comment_topic_id` int(11) NOT NULL COMMENT '评论所属帖子ID',
  `comment_time` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  `floor` int(11) NULL DEFAULT NULL COMMENT '主楼层',
  `reply` int(11) NOT NULL DEFAULT 0 COMMENT '回复其他用户的用户ID，若只是对帖子评论则为0',
  `child_floor` int(11) NOT NULL DEFAULT 0 COMMENT '子楼层',
  `support_count` int(11) NOT NULL DEFAULT 0 COMMENT '获得点赞数',
  `criticism_count` int(11) NOT NULL DEFAULT 0 COMMENT '踩',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 94 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, '6666666', 1, 1, '2022-11-20 22:45:30', 1, 0, 0, 2, 0);
INSERT INTO `comment` VALUES (2, '叼你', 2, 1, '2022-11-20 22:45:45', 1, 4, 3, 1, 0);
INSERT INTO `comment` VALUES (3, '傻逼小三', 3, 1, '2022-11-20 22:45:34', 1, 4, 2, 1, 0);
INSERT INTO `comment` VALUES (4, '卧槽', 4, 1, '2022-11-20 22:19:45', 1, 1, 1, 0, 0);
INSERT INTO `comment` VALUES (5, '大炮', 2, 1, '2022-11-19 22:16:46', 2, 0, 0, 2, 0);
INSERT INTO `comment` VALUES (6, '位置是的是的', 3, 1, '2022-11-20 22:46:11', 3, 0, 0, 2, 0);
INSERT INTO `comment` VALUES (10, '零零零零', 6, 1, '2022-11-19 22:16:50', 4, 0, 0, 2, 0);
INSERT INTO `comment` VALUES (22, 'eee', 6, 1, '2022-11-20 23:12:41', 5, 0, 0, 2, 0);
INSERT INTO `comment` VALUES (23, '11111', 6, 2, '2022-11-20 22:45:12', 1, 0, 0, 1, 0);
INSERT INTO `comment` VALUES (24, 'qqq', 6, 2, '2022-11-20 23:08:19', 2, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (25, 'qqqqqqqq', 6, 1, '2022-11-21 01:32:56', 6, 0, 0, 2, 0);
INSERT INTO `comment` VALUES (26, 'www', 6, 2, '2022-11-20 23:08:23', 1, 6, 1, 0, 0);
INSERT INTO `comment` VALUES (27, '111111', 6, 2, '2022-10-25 08:36:09', 1, 6, 2, 0, 0);
INSERT INTO `comment` VALUES (28, '111', 6, 1, '2022-11-20 22:34:24', 1, 1, 4, 2, 0);
INSERT INTO `comment` VALUES (39, '', 6, 1, '2022-11-20 23:12:02', 1, 1, 5, 3, 0);
INSERT INTO `comment` VALUES (40, '', 6, 1, '2022-11-20 23:12:04', 1, 1, 6, 3, 0);
INSERT INTO `comment` VALUES (41, '', 6, 1, '2022-11-20 23:25:18', 1, 1, 7, 2, 0);
INSERT INTO `comment` VALUES (42, '12346589', 6, 1, '2022-11-21 01:29:20', 2, 2, 1, 2, 0);
INSERT INTO `comment` VALUES (43, 'qwertyuio', 6, 1, '2022-11-21 01:29:21', 2, 6, 2, 2, 0);
INSERT INTO `comment` VALUES (44, 'hahahahahahahha', 6, 1, '2022-11-19 22:18:29', 1, 2, 8, 2, 0);
INSERT INTO `comment` VALUES (45, '妈的妈的妈的\r\n妈的妈的妈的', 6, 1, '2022-11-21 01:32:58', 6, 6, 1, 1, 0);
INSERT INTO `comment` VALUES (46, '啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊', 6, 1, '2022-11-21 01:32:34', 5, 6, 1, 3, 0);
INSERT INTO `comment` VALUES (47, '', 6, 1, '2022-11-20 22:39:52', 7, 0, 0, 1, 0);
INSERT INTO `comment` VALUES (48, '', 6, 1, '2022-10-26 07:35:29', 8, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (49, '', 6, 1, '2022-10-26 07:36:25', 9, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (50, '', 6, 1, '2022-10-26 07:36:34', 10, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (51, '', 6, 1, '2022-10-26 07:36:57', 11, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (52, 'q', 6, 1, '2022-11-20 16:38:32', 12, 0, 0, 1, 0);
INSERT INTO `comment` VALUES (53, '22', 6, 1, '2022-10-29 06:18:28', 13, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (54, 'qq', 6, 1, '2022-10-29 06:18:42', 14, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (55, '强强强强', 1, 2, '2022-11-20 23:08:14', 3, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (56, '呜呜呜呜呜呜呜', 1, 2, '2022-10-29 06:20:08', 2, 6, 1, 0, 0);
INSERT INTO `comment` VALUES (57, '呃呃呃呃呃呃', 1, 2, '2022-10-29 06:21:13', 1, 6, 3, 0, 0);
INSERT INTO `comment` VALUES (58, '前期', 1, 2, '2022-11-20 22:44:39', 4, 0, 0, 1, 0);
INSERT INTO `comment` VALUES (59, 'q', 1, 2, '2022-10-29 06:22:41', 5, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (60, '七七七', 1, 2, '2022-11-20 22:42:51', 5, 1, 1, 1, 0);
INSERT INTO `comment` VALUES (61, '钱钱钱钱钱钱', 6, 2, '2022-10-29 06:24:59', 1, 6, 4, 0, 0);
INSERT INTO `comment` VALUES (62, 'qqqq', 6, 2, '2022-11-20 23:18:26', 4, 1, 1, 1, 0);
INSERT INTO `comment` VALUES (63, 'qqqq', 6, 2, '2022-11-20 22:45:10', 1, 6, 5, 1, 0);
INSERT INTO `comment` VALUES (64, 'wwwwwwwww', 6, 2, '2022-10-29 06:28:37', 1, 6, 6, 0, 0);
INSERT INTO `comment` VALUES (65, 'qqqqqqqqqqqqqq', 6, 2, '2022-11-20 23:18:29', 4, 6, 2, 0, 0);
INSERT INTO `comment` VALUES (66, 'qq', 6, 2, '2022-11-20 22:42:19', 6, 0, 0, 1, 0);
INSERT INTO `comment` VALUES (67, 'qq', 6, 2, '2022-10-29 06:30:21', 1, 6, 7, 0, 0);
INSERT INTO `comment` VALUES (68, 'oih;ioho', 6, 1, '2022-11-20 23:08:44', 15, 0, 0, 1, 0);
INSERT INTO `comment` VALUES (69, '哈哈', 4, 1, '2022-11-20 22:46:08', 3, 3, 1, 1, 0);
INSERT INTO `comment` VALUES (70, '666', 1, 1, '2022-11-20 16:36:41', 4, 6, 1, 1, 0);
INSERT INTO `comment` VALUES (71, '前文', 6, 1, '2022-11-12 17:48:12', 16, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (72, '前文', 6, 1, '2022-11-12 17:48:22', 16, 6, 1, 0, 0);
INSERT INTO `comment` VALUES (73, '请求', 99, 3, '2022-11-20 23:24:32', 1, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (74, '王五', 99, 3, '2022-11-20 22:43:08', 2, 0, 0, 1, 0);
INSERT INTO `comment` VALUES (75, '王五', 99, 3, '2022-11-20 22:43:06', 1, 99, 1, 1, 0);
INSERT INTO `comment` VALUES (76, 'qwe', 99, 1, '2022-11-19 11:54:19', 17, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (77, 'ryu', 99, 1, '2022-11-19 11:55:03', 18, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (78, 'qw', 99, 58, '2022-11-24 01:53:45', 1, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (79, 'yy', 99, 1, '2022-11-24 02:57:04', 3, 3, 2, 0, 0);
INSERT INTO `comment` VALUES (80, '66', 1, 76, '2022-11-24 16:14:13', 1, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (81, 'diaoA', 1, 79, '2022-11-24 09:34:34', 1, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (82, '66\r\n', 1, 79, '2022-11-24 09:35:08', 1, 1, 1, 0, 0);
INSERT INTO `comment` VALUES (83, '0.0', 99, 76, '2022-11-24 11:15:08', 2, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (84, '0.0', 99, 78, '2022-11-24 11:16:05', 1, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (85, '00000000000000000', 99, 81, '2022-11-24 11:17:50', 1, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (86, '1234', 99, 79, '2022-11-24 11:24:19', 2, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (87, '1234', 1, 78, '2022-11-24 11:24:39', 2, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (88, 'qwerty', 1, 79, '2022-11-24 12:32:00', 3, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (89, 'qweqwe', 1, 79, '2022-11-24 12:32:07', 2, 99, 1, 0, 0);
INSERT INTO `comment` VALUES (90, 'qwe', 99, 76, '2022-11-26 08:06:58', 3, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (91, 'sssssssssss', 1, 76, '2023-04-10 10:01:59', 1, 1, 1, 0, 0);
INSERT INTO `comment` VALUES (92, 'fucking days', 1, 76, '2023-04-10 10:09:28', 4, 0, 0, 0, 0);
INSERT INTO `comment` VALUES (93, 'sssssssss', 1, 87, '2023-04-11 05:11:07', 1, 0, 0, 0, 0);

-- ----------------------------
-- Table structure for fans
-- ----------------------------
DROP TABLE IF EXISTS `fans`;
CREATE TABLE `fans`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '偶像',
  `fans_id` int(11) NOT NULL COMMENT '粉丝',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '状态，1为关注，0为取消关注',
  `creat_time` datetime NULL DEFAULT NULL COMMENT '第一次成为粉丝的时间',
  `update_time` datetime NULL DEFAULT NULL COMMENT '状态改变的时间，取消/再次关注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of fans
-- ----------------------------
INSERT INTO `fans` VALUES (1, 6, 1, 1, '2022-11-15 00:04:22', NULL);
INSERT INTO `fans` VALUES (2, 6, 2, 1, '2022-11-24 00:04:26', NULL);
INSERT INTO `fans` VALUES (3, 6, 3, 1, '2022-11-16 00:04:30', NULL);
INSERT INTO `fans` VALUES (4, 6, 4, 1, '2022-12-10 00:04:33', NULL);
INSERT INTO `fans` VALUES (5, 2, 1, 1, NULL, NULL);
INSERT INTO `fans` VALUES (6, 2, 3, 1, NULL, NULL);
INSERT INTO `fans` VALUES (7, 6, 5, 1, NULL, NULL);
INSERT INTO `fans` VALUES (8, 6, 7, 1, NULL, NULL);
INSERT INTO `fans` VALUES (20, 1, 6, 1, '2022-11-03 11:42:55', '2022-11-12 14:13:30');
INSERT INTO `fans` VALUES (21, 2, 6, 1, '2022-11-03 12:07:22', '2022-11-03 12:07:22');
INSERT INTO `fans` VALUES (23, 7, 6, 1, '2022-11-06 15:55:30', '2022-11-06 15:55:34');
INSERT INTO `fans` VALUES (24, 99, 6, 1, '2022-11-20 14:23:18', '2022-11-20 14:23:18');
INSERT INTO `fans` VALUES (25, 3, 99, 1, '2022-11-22 09:52:15', '2022-11-22 09:52:15');
INSERT INTO `fans` VALUES (26, 2, 99, 1, '2022-11-22 09:52:19', '2022-11-22 09:52:19');
INSERT INTO `fans` VALUES (27, 1, 99, 1, '2022-11-22 09:52:28', '2022-11-23 11:59:33');
INSERT INTO `fans` VALUES (28, 6, 99, 1, '2022-11-23 17:44:28', '2022-11-23 18:01:37');
INSERT INTO `fans` VALUES (29, 99, 1, 1, '2022-11-24 12:33:51', '2022-11-24 12:33:51');

-- ----------------------------
-- Table structure for games
-- ----------------------------
DROP TABLE IF EXISTS `games`;
CREATE TABLE `games`  (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏名称',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏描述',
  `genres` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏种类',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '游戏封面url',
  `comment_count` int(11) NULL DEFAULT NULL COMMENT '评论数',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `create_user_id` int(11) NULL DEFAULT NULL COMMENT '创建人',
  `browse_count` int(11) NULL DEFAULT NULL COMMENT '浏览量',
  `support_count` int(11) NULL DEFAULT NULL COMMENT '点赞数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of games
-- ----------------------------
INSERT INTO `games` VALUES (1, 'Glory of Kings', 'King of Glory is a 5V5 combat game', '0', 'wangzherongyao.jpg', 1, '2023-04-11 00:00:00', 1, 5, 0);
INSERT INTO `games` VALUES (2, 'League of Legends(LOL)', 'League of Legends(LOL) is a 5V5 combat game', '0', 'LOL.jpg', 0, '2023-04-11 00:00:00', 1, 5, 0);
INSERT INTO `games` VALUES (3, 'Game for Peace', 'Peace Elite is a survival gunfight game', '0', 'hepingjingying.jpg', 0, '2023-04-11 00:00:00', 1, 5, 0);
INSERT INTO `games` VALUES (4, 'Cross Fire(CF)', 'Crossing the Fire Line is an FPS shooting game', '0', 'CF.JPG', 0, '2023-04-11 00:00:00', 1, 5, 0);

-- ----------------------------
-- Table structure for ip
-- ----------------------------
DROP TABLE IF EXISTS `ip`;
CREATE TABLE `ip`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of ip
-- ----------------------------
INSERT INTO `ip` VALUES (43, '0:0:0:0:0:0:0:1', '2023-02-06 08:36:21');

-- ----------------------------
-- Table structure for notification
-- ----------------------------
DROP TABLE IF EXISTS `notification`;
CREATE TABLE `notification`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) NOT NULL COMMENT '发送者',
  `to_id` int(11) NOT NULL COMMENT '接收者',
  `subject` int(11) NOT NULL COMMENT '0：系统通知，1：评论，2：点赞 ，3：新增粉丝，4：私信',
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '是否已读,1:已读，0：未读\r\n',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题\r\n',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `time` datetime NOT NULL COMMENT '时间',
  `topic_id` int(11) NOT NULL DEFAULT 0 COMMENT '点赞的文章id',
  `comment_id` int(11) NOT NULL DEFAULT 0 COMMENT '点赞的评论id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 192 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notification
-- ----------------------------
INSERT INTO `notification` VALUES (2, 6, 1, 2, 1, '帖子点赞通知', '位置错的错的于Sun Nov 20 14:33:15 CST 2022点赞了你的文章\'null\'!', '2022-11-20 06:33:16', 8, 0);
INSERT INTO `notification` VALUES (3, 6, 6, 2, 1, '帖子点赞通知', '666于Sun Nov 20 14:35:33 CST 2022点赞了你的文章\'null\'!', '2022-11-20 06:35:33', 25, 0);
INSERT INTO `notification` VALUES (4, 6, 6, 2, 1, '帖子点赞通知', '666于Sun Nov 20 14:39:54 CST 2022点赞了你的文章\'请求\'!', '2022-11-20 06:39:55', 33, 0);
INSERT INTO `notification` VALUES (5, 99, 6, 2, 1, '帖子点赞通知', '666于Sun Nov 20 17:53:32 CST 2022点赞了你的文章\'王五\'!', '2022-11-20 09:53:32', 54, 0);
INSERT INTO `notification` VALUES (6, 99, 99, 2, 1, '帖子点赞通知', '123于Sun Nov 20 17:56:12 CST 2022点赞了你的文章\'qwe\'!', '2022-11-20 09:56:12', 57, 0);
INSERT INTO `notification` VALUES (22, 99, 6, 2, 1, '帖子取消点赞通知', '123于Sun Nov 20 18:15:52 CST 2022取消了你的文章\'vv\'的点赞!', '2022-11-20 10:15:52', 52, 0);
INSERT INTO `notification` VALUES (23, 99, 6, 2, 1, '帖子点赞通知', '123于Sun Nov 20 18:15:53 CST 2022点赞了你的文章\'vv\'!', '2022-11-20 10:15:53', 52, 0);
INSERT INTO `notification` VALUES (24, 99, 6, 2, 1, '帖子取消点赞通知', '123于Sun Nov 20 18:15:55 CST 2022取消了你的文章\'123\'的点赞!', '2022-11-20 10:15:55', 53, 0);
INSERT INTO `notification` VALUES (25, 99, 6, 2, 1, '帖子点赞通知', '123于Sun Nov 20 18:15:56 CST 2022点赞了你的文章\'123\'!', '2022-11-20 10:15:57', 53, 0);
INSERT INTO `notification` VALUES (26, 99, 6, 2, 1, '帖子取消点赞通知', '123于Sun Nov 20 18:15:58 CST 2022取消了你的文章\'王五\'的点赞!', '2022-11-20 10:15:58', 54, 0);
INSERT INTO `notification` VALUES (27, 99, 6, 2, 1, '帖子点赞通知', '123于Sun Nov 20 18:15:59 CST 2022点赞了你的文章\'王五\'!', '2022-11-20 10:15:59', 54, 0);
INSERT INTO `notification` VALUES (28, 6, 6, 2, 1, '帖子取消点赞通知', '666于Sun Nov 20 18:33:28 CST 2022取消了你的文章\'6\'的点赞!', '2022-11-20 10:33:28', 6, 0);
INSERT INTO `notification` VALUES (29, 6, 6, 2, 1, '帖子点赞通知', '666于Sun Nov 20 18:33:29 CST 2022点赞了你的文章\'6\'!', '2022-11-20 10:33:30', 6, 0);
INSERT INTO `notification` VALUES (30, 6, 6, 2, 1, '帖子取消点赞通知', '666于Sun Nov 20 22:06:43 CST 2022取消了你的文章\'6\'的点赞!', '2022-11-20 14:06:43', 6, 0);
INSERT INTO `notification` VALUES (31, 6, 6, 2, 1, '帖子点赞通知', '666于Sun Nov 20 22:06:56 CST 2022点赞了你的文章\'eeeee\'!', '2022-11-20 14:06:57', 34, 0);
INSERT INTO `notification` VALUES (32, 6, 6, 2, 1, '帖子点赞通知', '666于Sun Nov 20 22:06:59 CST 2022点赞了你的文章\'五五五五\'!', '2022-11-20 14:06:59', 35, 0);
INSERT INTO `notification` VALUES (33, 6, 3, 2, 0, '帖子取消点赞通知', '666于Sun Nov 20 22:07:33 CST 2022取消了你的文章\'c++\'的点赞!', '2022-11-20 14:07:33', 3, 0);
INSERT INTO `notification` VALUES (34, 6, 1, 2, 1, '帖子取消点赞通知', '666于Sun Nov 20 22:07:35 CST 2022取消了你的文章\'java\'的点赞!', '2022-11-20 14:07:35', 1, 0);
INSERT INTO `notification` VALUES (35, 6, 2, 2, 0, '帖子取消点赞通知', '666于Sun Nov 20 22:07:36 CST 2022取消了你的文章\'python\'的点赞!', '2022-11-20 14:07:37', 2, 0);
INSERT INTO `notification` VALUES (36, 6, 3, 2, 0, '帖子点赞通知', '666于Sun Nov 20 22:07:38 CST 2022点赞了你的文章\'c++\'!', '2022-11-20 14:07:38', 3, 0);
INSERT INTO `notification` VALUES (50, 99, 1, 2, 1, '评论点赞通知', '123于Sun Nov 20 22:39:52 CST 2022点赞了你在文章\'java\'下发表的评论：\'\'', '2022-11-20 14:39:52', 1, 47);
INSERT INTO `notification` VALUES (51, 99, 3, 2, 0, '评论点赞通知', '123于Sun Nov 20 22:43:16 CST 2022点赞了你在文章\'java\'下发表的评论：\'傻逼小三\'', '2022-11-20 14:43:16', 1, 3);
INSERT INTO `notification` VALUES (52, 99, 2, 2, 0, '评论点赞通知', '123于Sun Nov 20 22:43:22 CST 2022点赞了你在文章\'java\'下发表的评论：\'叼你\'', '2022-11-20 14:43:22', 1, 2);
INSERT INTO `notification` VALUES (53, 99, 1, 2, 1, '评论取消点赞通知', '123于Sun Nov 20 22:45:30 CST 2022取消了你在文章\'java\'下发表的评论：\'6666666\'的赞', '2022-11-20 14:45:30', 1, 1);
INSERT INTO `notification` VALUES (54, 99, 3, 2, 0, '评论取消点赞通知', '123于Sun Nov 20 22:45:34 CST 2022取消了你在文章\'java\'下发表的评论：\'傻逼小三\'的赞', '2022-11-20 14:45:35', 1, 3);
INSERT INTO `notification` VALUES (55, 99, 2, 2, 0, '评论取消点赞通知', '123于Sun Nov 20 22:45:45 CST 2022取消了你在文章\'java\'下发表的评论：\'叼你\'的赞', '2022-11-20 14:45:45', 1, 2);
INSERT INTO `notification` VALUES (56, 99, 6, 2, 1, '评论取消点赞通知', '123于Sun Nov 20 22:46:09 CST 2022取消了你在文章\'java\'下发表的评论：\'位置是的是的\'的赞', '2022-11-20 14:46:10', 1, 6);
INSERT INTO `notification` VALUES (57, 99, 6, 2, 1, '评论点赞通知', '123于Sun Nov 20 22:46:11 CST 2022点赞了你在文章\'java\'下发表的评论：\'位置是的是的\'', '2022-11-20 14:46:11', 1, 6);
INSERT INTO `notification` VALUES (58, 99, 6, 2, 1, '评论点赞通知', '123于Sun Nov 20 23:08:05 CST 2022点赞了你在文章\'python\'下发表的评论：\'qqqq\'', '2022-11-20 15:08:05', 2, 62);
INSERT INTO `notification` VALUES (59, 99, 6, 2, 1, '评论点赞通知', '123于Sun Nov 20 23:08:07 CST 2022点赞了你在文章\'python\'下发表的评论：\'qqqqqqqqqqqqqq\'', '2022-11-20 15:08:07', 2, 65);
INSERT INTO `notification` VALUES (60, 99, 6, 2, 1, '评论取消点赞通知', '123于Sun Nov 20 23:08:08 CST 2022取消了你在文章\'python\'下发表的评论：\'qqqqqqqqqqqqqq\'的赞', '2022-11-20 15:08:09', 2, 65);
INSERT INTO `notification` VALUES (61, 99, 6, 2, 1, '评论取消点赞通知', '123于Sun Nov 20 23:08:10 CST 2022取消了你在文章\'python\'下发表的评论：\'qqqq\'的赞', '2022-11-20 15:08:10', 2, 62);
INSERT INTO `notification` VALUES (62, 99, 1, 2, 1, '评论点赞通知', '123于Sun Nov 20 23:08:12 CST 2022点赞了你在文章\'python\'下发表的评论：\'强强强强\'', '2022-11-20 15:08:13', 2, 55);
INSERT INTO `notification` VALUES (63, 99, 1, 2, 1, '评论取消点赞通知', '123于Sun Nov 20 23:08:14 CST 2022取消了你在文章\'python\'下发表的评论：\'强强强强\'的赞', '2022-11-20 15:08:14', 2, 55);
INSERT INTO `notification` VALUES (64, 99, 6, 2, 1, '评论点赞通知', '123于Sun Nov 20 23:08:18 CST 2022点赞了你在文章\'python\'下发表的评论：\'qqq\'', '2022-11-20 15:08:18', 2, 24);
INSERT INTO `notification` VALUES (65, 99, 6, 2, 1, '评论取消点赞通知', '123于Sun Nov 20 23:08:19 CST 2022取消了你在文章\'python\'下发表的评论：\'qqq\'的赞', '2022-11-20 15:08:20', 2, 24);
INSERT INTO `notification` VALUES (66, 99, 6, 2, 1, '评论点赞通知', '123于Sun Nov 20 23:08:22 CST 2022点赞了你在文章\'python\'下发表的评论：\'www\'', '2022-11-20 15:08:22', 2, 26);
INSERT INTO `notification` VALUES (67, 99, 6, 2, 1, '评论取消点赞通知', '123于Sun Nov 20 23:08:23 CST 2022取消了你在文章\'python\'下发表的评论：\'www\'的赞', '2022-11-20 15:08:23', 2, 26);
INSERT INTO `notification` VALUES (68, 99, 99, 2, 1, '评论取消点赞通知', '123于Sun Nov 20 23:08:30 CST 2022取消了你在文章\'c++\'下发表的评论：\'请求\'的赞', '2022-11-20 15:08:31', 3, 73);
INSERT INTO `notification` VALUES (69, 99, 6, 2, 1, '评论点赞通知', '123于Sun Nov 20 23:08:44 CST 2022点赞了你在文章\'java\'下发表的评论：\'oih;ioho\'', '2022-11-20 15:08:45', 1, 68);
INSERT INTO `notification` VALUES (70, 99, 6, 2, 1, '评论点赞通知', '123于Sun Nov 20 23:12:02 CST 2022点赞了你在文章\'java\'下发表的评论：\'<span style=\"color: #0e8c8c\" \'</span>', '2022-11-20 15:12:03', 1, 39);
INSERT INTO `notification` VALUES (71, 99, 6, 2, 1, '评论点赞通知', '123于Sun Nov 20 23:12:04 CST 2022点赞了你在文章\'java\'下发表的评论：\'<span style=\"color: #0e8c8c\" \'</span>', '2022-11-20 15:12:04', 1, 40);
INSERT INTO `notification` VALUES (72, 6, 6, 2, 1, '评论点赞通知', '666于Sun Nov 20 23:12:41 CST 2022点赞了你在文章\'java\'下发表的评论：\'<span style=\"color: #0e8c8c\" eee\'</span>', '2022-11-20 15:12:41', 1, 22);
INSERT INTO `notification` VALUES (73, 6, 6, 2, 1, '评论点赞通知', '666于Sun Nov 20 23:13:02 CST 2022点赞了你在文章\'java\'下发表的评论： qqqqqqqq\'', '2022-11-20 15:13:03', 1, 25);
INSERT INTO `notification` VALUES (74, 99, 6, 2, 1, '评论点赞通知', '123于Sun Nov 20 23:14:41 CST 2022点赞了你在文章\'java\'下发表的评论：<span style=\"color: #0e8c8c\">啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</span>', '2022-11-20 15:14:41', 1, 46);
INSERT INTO `notification` VALUES (75, 99, 6, 2, 1, '评论点赞通知', '123于Sun Nov 20 23:18:26 CST 2022点赞了你在文章\'python\'下发表的评论：<span style=\"color: #0e8c8c\">qqqq</span>', '2022-11-20 15:18:27', 2, 62);
INSERT INTO `notification` VALUES (76, 99, 6, 2, 1, '评论点赞通知', '123于Sun Nov 20 23:18:28 CST 2022点赞了你在文章\'python\'下发表的评论：<span style=\"color: #0e8c8c\">qqqqqqqqqqqqqq</span>', '2022-11-20 15:18:28', 2, 65);
INSERT INTO `notification` VALUES (77, 99, 6, 2, 1, '评论取消点赞通知', '123于Sun Nov 20 23:18:29 CST 2022取消了你在文章\'python\'下发表的评论：<span style=\"color: #0e8c8c\">qqqqqqqqqqqqqq</span>', '2022-11-20 15:18:30', 2, 65);
INSERT INTO `notification` VALUES (78, 99, 1, 2, 1, '帖子取消点赞通知', '123于Sun Nov 20 23:21:11 CST 2022取消了你的文章<span style=\"color: #0e8c8c\">java</span>的点赞', '2022-11-20 15:21:12', 1, 0);
INSERT INTO `notification` VALUES (79, 99, 1, 2, 1, '帖子点赞通知', '123于Sun Nov 20 23:21:12 CST 2022点赞了你的文章<span style=\"color: #0e8c8c\">java</span>', '2022-11-20 15:21:13', 1, 0);
INSERT INTO `notification` VALUES (80, 6, 6, 2, 0, '帖子点赞通知', '666于Sun Nov 20 23:21:53 CST 2022点赞了你的文章<span style=\"color: #0e8c8c\">6</span>', '2022-11-20 15:21:54', 6, 0);
INSERT INTO `notification` VALUES (81, 6, 6, 2, 0, '帖子取消点赞通知', '666于Sun Nov 20 23:21:55 CST 2022取消了你的文章<span style=\"color: #0e8c8c\">6</span>的点赞', '2022-11-20 15:21:55', 6, 0);
INSERT INTO `notification` VALUES (82, 99, 6, 2, 0, '帖子取消点赞通知', '123于Sun Nov 20 23:24:20 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">请求‘</span>的点赞', '2022-11-20 15:24:21', 33, 0);
INSERT INTO `notification` VALUES (83, 99, 6, 2, 0, '帖子取消点赞通知', '123于Sun Nov 20 23:24:22 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">eeeee‘</span>的点赞', '2022-11-20 15:24:22', 34, 0);
INSERT INTO `notification` VALUES (84, 99, 99, 2, 1, '评论点赞通知', '123于Sun Nov 20 23:24:31 CST 2022点赞了你在文章\'c++\'下发表的评论：‘<span style=\"color: #0e8c8c\">请求’</span>的点赞', '2022-11-20 15:24:31', 3, 73);
INSERT INTO `notification` VALUES (85, 99, 99, 2, 1, '评论取消点赞通知', '123于Sun Nov 20 23:24:32 CST 2022取消了你在文章\'c++\'下发表的评论：‘<span style=\"color: #0e8c8c\">请求’</span>的点赞', '2022-11-20 15:24:32', 3, 73);
INSERT INTO `notification` VALUES (86, 99, 6, 2, 0, '评论点赞通知', '123于Sun Nov 20 23:25:17 CST 2022点赞了你在文章\'java\'下发表的评论：‘<span style=\"color: #0e8c8c\">’</span>的点赞', '2022-11-20 15:25:17', 1, 41);
INSERT INTO `notification` VALUES (87, 99, 6, 2, 0, '评论取消点赞通知', '123于Sun Nov 20 23:25:18 CST 2022取消了你在文章\'java\'下发表的评论：‘<span style=\"color: #0e8c8c\">’</span>的点赞', '2022-11-20 15:25:19', 1, 41);
INSERT INTO `notification` VALUES (88, 99, 1, 2, 1, '帖子取消点赞通知', '123于Sun Nov 20 23:27:25 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">java</span>’的点赞', '2022-11-20 15:27:25', 1, 0);
INSERT INTO `notification` VALUES (89, 99, 6, 2, 0, '帖子取消点赞通知', '123于Sun Nov 20 23:27:27 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">6</span>’的点赞', '2022-11-20 15:27:28', 6, 0);
INSERT INTO `notification` VALUES (90, 99, 6, 2, 0, '帖子点赞通知', '123于Sun Nov 20 23:27:29 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">6</span>‘', '2022-11-20 15:27:29', 6, 0);
INSERT INTO `notification` VALUES (91, 99, 6, 2, 0, '评论点赞通知', '123于Sun Nov 20 23:27:33 CST 2022点赞了你在文章\'java\'下发表的评论：‘<span style=\"color: #0e8c8c\">12346589</span>’的点赞', '2022-11-20 15:27:33', 1, 42);
INSERT INTO `notification` VALUES (92, 99, 6, 2, 0, '评论取消点赞通知', '123于Sun Nov 20 23:27:34 CST 2022取消了你在文章\'java\'下发表的评论：‘<span style=\"color: #0e8c8c\">12346589</span>‘的点赞', '2022-11-20 15:27:35', 1, 42);
INSERT INTO `notification` VALUES (93, 99, 99, 2, 1, '帖子点赞通知', '123于Mon Nov 21 00:20:06 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">sssssssssssssssssssssssss</span>‘', '2022-11-20 16:20:07', 60, 0);
INSERT INTO `notification` VALUES (94, 6, 6, 2, 0, '帖子点赞通知', '666于Mon Nov 21 01:24:29 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">8888</span>‘', '2022-11-20 17:24:29', 25, 0);
INSERT INTO `notification` VALUES (95, 6, 6, 2, 0, '帖子点赞通知', '666于Mon Nov 21 01:25:58 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">6</span>‘', '2022-11-20 17:25:59', 6, 0);
INSERT INTO `notification` VALUES (96, 6, 6, 2, 0, '帖子取消点赞通知', '666于Mon Nov 21 01:27:51 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">6</span>’的点赞', '2022-11-20 17:27:51', 6, 0);
INSERT INTO `notification` VALUES (97, 6, 6, 2, 0, '帖子取消点赞通知', '666于Mon Nov 21 01:29:02 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">8888</span>’的点赞', '2022-11-20 17:29:02', 25, 0);
INSERT INTO `notification` VALUES (98, 6, 6, 2, 0, '帖子取消点赞通知', '666于Mon Nov 21 01:29:04 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">请求</span>’的点赞', '2022-11-20 17:29:05', 33, 0);
INSERT INTO `notification` VALUES (99, 6, 6, 2, 0, '帖子点赞通知', '666于Mon Nov 21 01:29:08 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">请求</span>‘', '2022-11-20 17:29:08', 33, 0);
INSERT INTO `notification` VALUES (100, 6, 6, 2, 0, '帖子点赞通知', '666于Mon Nov 21 01:29:10 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">8888</span>‘', '2022-11-20 17:29:11', 25, 0);
INSERT INTO `notification` VALUES (101, 6, 6, 2, 0, '评论点赞通知', '666于Mon Nov 21 01:29:20 CST 2022点赞了你在文章\'java\'下发表的评论：‘<span style=\"color: #0e8c8c\">12346589</span>’的点赞', '2022-11-20 17:29:20', 1, 42);
INSERT INTO `notification` VALUES (102, 6, 6, 2, 0, '评论点赞通知', '666于Mon Nov 21 01:29:21 CST 2022点赞了你在文章\'java\'下发表的评论：‘<span style=\"color: #0e8c8c\">qwertyuio</span>’的点赞', '2022-11-20 17:29:22', 1, 43);
INSERT INTO `notification` VALUES (103, 6, 6, 2, 0, '评论点赞通知', '666于Mon Nov 21 01:32:34 CST 2022点赞了你在文章\'java\'下发表的评论：‘<span style=\"color: #0e8c8c\">啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊啊</span>’的点赞', '2022-11-20 17:32:35', 1, 46);
INSERT INTO `notification` VALUES (104, 6, 6, 2, 0, '评论取消点赞通知', '666于Mon Nov 21 01:32:38 CST 2022取消了你在文章\'java\'下发表的评论：‘<span style=\"color: #0e8c8c\">qqqqqqqq</span>‘的点赞', '2022-11-20 17:32:38', 1, 25);
INSERT INTO `notification` VALUES (105, 6, 6, 2, 0, '评论点赞通知', '666于Mon Nov 21 01:32:56 CST 2022点赞了你在文章\'java\'下发表的评论：‘<span style=\"color: #0e8c8c\">qqqqqqqq</span>’的点赞', '2022-11-20 17:32:56', 1, 25);
INSERT INTO `notification` VALUES (106, 6, 6, 2, 0, '评论点赞通知', '666于Mon Nov 21 01:32:58 CST 2022点赞了你在文章\'java\'下发表的评论：‘<span style=\"color: #0e8c8c\">妈的妈的妈的\r\n妈的妈的妈的</span>’的点赞', '2022-11-20 17:32:59', 1, 45);
INSERT INTO `notification` VALUES (107, 99, 1, 2, 1, '帖子点赞通知', '123于Mon Nov 21 17:28:28 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">java</span>‘', '2022-11-21 09:28:28', 1, 0);
INSERT INTO `notification` VALUES (108, 99, 1, 2, 1, '帖子取消点赞通知', '123于Mon Nov 21 17:51:29 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">java</span>’的点赞', '2022-11-21 09:51:29', 1, 0);
INSERT INTO `notification` VALUES (109, 99, 2, 2, 0, '帖子取消点赞通知', '123于Mon Nov 21 17:51:34 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">python</span>’的点赞', '2022-11-21 09:51:35', 2, 0);
INSERT INTO `notification` VALUES (110, 99, 3, 2, 0, '帖子取消点赞通知', '123于Mon Nov 21 17:51:37 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">c++</span>’的点赞', '2022-11-21 09:51:37', 3, 0);
INSERT INTO `notification` VALUES (111, 99, 1, 2, 1, '帖子点赞通知', '123于Mon Nov 21 18:08:19 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">java</span>‘', '2022-11-21 10:08:19', 1, 0);
INSERT INTO `notification` VALUES (112, 99, 99, 2, 1, '帖子点赞通知', '123于Mon Nov 21 18:40:07 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">qqqqqqqqqqqqqqqq</span>‘', '2022-11-21 10:40:08', 59, 0);
INSERT INTO `notification` VALUES (113, 6, 2, 2, 0, '帖子点赞通知', '666于Wed Nov 23 18:20:51 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">python</span>‘', '2022-11-23 10:20:51', 2, 0);
INSERT INTO `notification` VALUES (114, 6, 6, 2, 0, '帖子点赞通知', '666于Wed Nov 23 18:32:08 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">html span字数限制,css span字体大小 span标签设置font-size字体大小</span>‘', '2022-11-23 10:32:08', 58, 0);
INSERT INTO `notification` VALUES (115, 6, 6, 2, 0, '帖子点赞通知', '666于Wed Nov 23 18:32:09 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">weqw</span>‘', '2022-11-23 10:32:10', 71, 0);
INSERT INTO `notification` VALUES (116, 6, 6, 2, 0, '帖子取消点赞通知', '666于Wed Nov 23 20:06:13 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">html span字数限制,css span字体大小 span标签设置font-size字体大小</span>’的点赞', '2022-11-23 12:06:13', 58, 0);
INSERT INTO `notification` VALUES (117, 99, 6, 2, 0, '帖子点赞通知', '123于Wed Nov 23 20:06:30 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">html span字数限制,css span字体大小 span标签设置font-size字体大小</span>‘', '2022-11-23 12:06:31', 58, 0);
INSERT INTO `notification` VALUES (118, 99, 6, 2, 0, '帖子点赞通知', '123于Thu Nov 24 02:04:26 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">qwe</span>‘', '2022-11-23 18:04:27', 70, 0);
INSERT INTO `notification` VALUES (119, 99, 6, 4, 0, NULL, '哈哈', '2022-11-24 06:00:16', 0, 0);
INSERT INTO `notification` VALUES (120, 99, 6, 4, 0, NULL, '请求', '2022-11-24 06:10:02', 0, 0);
INSERT INTO `notification` VALUES (121, 99, 6, 4, 0, NULL, '请求呃呃', '2022-11-24 06:10:05', 0, 0);
INSERT INTO `notification` VALUES (124, 4, 6, 4, 0, NULL, '55', '2022-11-24 06:10:02', 0, 0);
INSERT INTO `notification` VALUES (125, 1, 1, 2, 1, '帖子点赞通知', 'whiteCat于Thu Nov 24 16:11:05 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">button无边框</span>‘', '2022-11-24 08:11:05', 76, 0);
INSERT INTO `notification` VALUES (126, 1, 1, 2, 1, '帖子取消点赞通知', 'whiteCat于Thu Nov 24 16:11:09 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">button无边框</span>’的点赞', '2022-11-24 08:11:09', 76, 0);
INSERT INTO `notification` VALUES (127, 1, 1, 2, 1, '帖子点赞通知', 'whiteCat于Thu Nov 24 16:11:10 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">button无边框</span>‘', '2022-11-24 08:11:10', 76, 0);
INSERT INTO `notification` VALUES (128, 1, 1, 2, 1, '帖子取消点赞通知', 'whiteCat于Thu Nov 24 16:11:10 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">button无边框</span>’的点赞', '2022-11-24 08:11:11', 76, 0);
INSERT INTO `notification` VALUES (129, 1, 1, 2, 1, '帖子点赞通知', 'whiteCat于Thu Nov 24 16:11:15 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">list.remove(index)失败的原因</span>‘', '2022-11-24 08:11:15', 78, 0);
INSERT INTO `notification` VALUES (130, 1, 1, 2, 1, '帖子取消点赞通知', 'whiteCat于Thu Nov 24 16:11:16 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">list.remove(index)失败的原因</span>’的点赞', '2022-11-24 08:11:17', 78, 0);
INSERT INTO `notification` VALUES (131, 1, 1, 2, 1, '帖子点赞通知', 'whiteCat于Thu Nov 24 16:11:18 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">list.remove(index)失败的原因</span>‘', '2022-11-24 08:11:19', 78, 0);
INSERT INTO `notification` VALUES (132, 1, 1, 2, 1, '帖子取消点赞通知', 'whiteCat于Thu Nov 24 16:11:19 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">list.remove(index)失败的原因</span>’的点赞', '2022-11-24 08:11:19', 78, 0);
INSERT INTO `notification` VALUES (133, 1, 1, 2, 1, '帖子点赞通知', 'whiteCat于Thu Nov 24 16:11:21 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">button无边框</span>‘', '2022-11-24 08:11:22', 76, 0);
INSERT INTO `notification` VALUES (134, 1, 1, 2, 1, '帖子点赞通知', 'whiteCat于Thu Nov 24 16:11:23 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">list.remove(index)失败的原因</span>‘', '2022-11-24 08:11:24', 78, 0);
INSERT INTO `notification` VALUES (135, 1, 1, 2, 1, '帖子取消点赞通知', 'whiteCat于Thu Nov 24 16:11:28 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">button无边框</span>’的点赞', '2022-11-24 08:11:29', 76, 0);
INSERT INTO `notification` VALUES (136, 1, 1, 2, 1, '帖子取消点赞通知', 'whiteCat于Thu Nov 24 16:11:30 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">list.remove(index)失败的原因</span>’的点赞', '2022-11-24 08:11:31', 78, 0);
INSERT INTO `notification` VALUES (137, 1, 1, 2, 1, '帖子点赞通知', 'whiteCat于Thu Nov 24 16:12:38 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">button无边框</span>‘', '2022-11-24 08:12:38', 76, 0);
INSERT INTO `notification` VALUES (138, 1, 1, 2, 1, '帖子点赞通知', 'whiteCat于Thu Nov 24 16:12:40 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">list.remove(index)失败的原因</span>‘', '2022-11-24 08:12:40', 78, 0);
INSERT INTO `notification` VALUES (139, 1, 1, 2, 1, '帖子取消点赞通知', 'whiteCat于Thu Nov 24 16:12:43 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">button无边框</span>’的点赞', '2022-11-24 08:12:43', 76, 0);
INSERT INTO `notification` VALUES (140, 1, 1, 2, 1, '帖子取消点赞通知', 'whiteCat于Thu Nov 24 16:12:44 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">list.remove(index)失败的原因</span>’的点赞', '2022-11-24 08:12:45', 78, 0);
INSERT INTO `notification` VALUES (141, 1, 1, 2, 1, '评论点赞通知', 'whiteCat于Thu Nov 24 16:14:12 CST 2022点赞了你在文章\'button无边框\'下发表的评论：‘<span style=\"color: #0e8c8c\">66</span>’', '2022-11-24 08:14:12', 76, 80);
INSERT INTO `notification` VALUES (142, 1, 1, 2, 1, '评论取消点赞通知', 'whiteCat于Thu Nov 24 16:14:13 CST 2022取消了你在文章\'button无边框\'下发表的评论：‘<span style=\"color: #0e8c8c\">66</span>‘的点赞', '2022-11-24 08:14:14', 76, 80);
INSERT INTO `notification` VALUES (143, 1, 1, 2, 1, '帖子点赞通知', 'whiteCat于Thu Nov 24 16:14:40 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">button无边框</span>‘', '2022-11-24 08:14:40', 76, 0);
INSERT INTO `notification` VALUES (144, 1, 1, 2, 1, '帖子取消点赞通知', 'whiteCat于Thu Nov 24 16:14:42 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">button无边框</span>’的点赞', '2022-11-24 08:14:42', 76, 0);
INSERT INTO `notification` VALUES (145, 1, 1, 2, 1, '帖子点赞通知', 'whiteCat于Thu Nov 24 16:14:43 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">list.remove(index)失败的原因</span>‘', '2022-11-24 08:14:44', 78, 0);
INSERT INTO `notification` VALUES (146, 1, 1, 2, 1, '帖子取消点赞通知', 'whiteCat于Thu Nov 24 16:14:45 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">list.remove(index)失败的原因</span>’的点赞', '2022-11-24 08:14:45', 78, 0);
INSERT INTO `notification` VALUES (147, 1, 1, 2, 1, '帖子点赞通知', 'whiteCat于Thu Nov 24 16:14:47 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">button无边框</span>‘', '2022-11-24 08:14:47', 76, 0);
INSERT INTO `notification` VALUES (148, 1, 1, 2, 1, '帖子取消点赞通知', 'whiteCat于Thu Nov 24 16:14:49 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">button无边框</span>’的点赞', '2022-11-24 08:14:50', 76, 0);
INSERT INTO `notification` VALUES (149, 1, 1, 2, 1, '帖子点赞通知', 'whiteCat于Thu Nov 24 16:14:53 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">button无边框</span>‘', '2022-11-24 08:14:54', 76, 0);
INSERT INTO `notification` VALUES (150, 1, 1, 2, 1, '帖子点赞通知', 'whiteCat于Thu Nov 24 16:14:55 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">list.remove(index)失败的原因</span>‘', '2022-11-24 08:14:55', 78, 0);
INSERT INTO `notification` VALUES (151, 99, 1, 4, 1, NULL, '私信test', '2022-11-24 08:24:21', 0, 0);
INSERT INTO `notification` VALUES (152, 99, 1, 4, 1, NULL, '666', '2022-11-24 08:24:25', 0, 0);
INSERT INTO `notification` VALUES (153, 99, 1, 2, 1, '帖子点赞通知', '123于Thu Nov 24 18:53:01 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">button无边框</span>‘', '2022-11-24 10:53:01', 76, 0);
INSERT INTO `notification` VALUES (154, 1, 1, 2, 1, '帖子点赞通知', 'whiteCat于Thu Nov 24 18:53:18 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">ajax回调函数得到一整个html的可能原因</span>‘', '2022-11-24 10:53:19', 79, 0);
INSERT INTO `notification` VALUES (155, 99, 1, 2, 1, '帖子点赞通知', '123于Thu Nov 24 18:53:34 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">list.remove(index)失败的原因</span>‘', '2022-11-24 10:53:34', 78, 0);
INSERT INTO `notification` VALUES (156, 99, 1, 2, 1, '帖子取消点赞通知', '123于Thu Nov 24 18:55:07 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">button无边框</span>’的点赞', '2022-11-24 10:55:07', 76, 0);
INSERT INTO `notification` VALUES (157, 99, 1, 2, 1, '帖子点赞通知', '123于Thu Nov 24 18:58:43 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">button无边框</span>‘', '2022-11-24 10:58:43', 76, 0);
INSERT INTO `notification` VALUES (158, 99, 1, 2, 1, '帖子取消点赞通知', '123于Thu Nov 24 18:59:07 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">button无边框</span>’的点赞', '2022-11-24 10:59:07', 76, 0);
INSERT INTO `notification` VALUES (159, 99, 1, 2, 1, '帖子点赞通知', '123于Thu Nov 24 18:59:11 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">button无边框</span>‘', '2022-11-24 10:59:12', 76, 0);
INSERT INTO `notification` VALUES (160, 99, 1, 2, 1, '帖子点赞通知', '123于Thu Nov 24 19:00:05 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">ajax回调函数得到一整个html的可能原因</span>‘', '2022-11-24 11:00:05', 79, 0);
INSERT INTO `notification` VALUES (161, 1, 1, 2, 1, '帖子点赞通知', 'whiteCat于Thu Nov 24 19:01:46 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">dom操作</span>‘', '2022-11-24 11:01:46', 80, 0);
INSERT INTO `notification` VALUES (162, 99, 1, 2, 1, '帖子点赞通知', '123于Thu Nov 24 19:01:54 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">dom操作</span>‘', '2022-11-24 11:01:54', 80, 0);
INSERT INTO `notification` VALUES (163, 99, 1, 2, 1, '帖子点赞通知', '123于Thu Nov 24 19:02:18 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">springboot 配置文件注入静态变量避坑</span>‘', '2022-11-24 11:02:18', 87, 0);
INSERT INTO `notification` VALUES (164, 99, 1, 2, 1, '帖子点赞通知', '123于Thu Nov 24 19:02:32 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">ajax</span>‘', '2022-11-24 11:02:33', 88, 0);
INSERT INTO `notification` VALUES (165, 99, 1, 2, 1, '帖子取消点赞通知', '123于Thu Nov 24 19:02:53 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">ajax</span>’的点赞', '2022-11-24 11:02:54', 88, 0);
INSERT INTO `notification` VALUES (166, 99, 1, 2, 1, '帖子点赞通知', '123于Thu Nov 24 19:02:57 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">ajax</span>‘', '2022-11-24 11:02:57', 88, 0);
INSERT INTO `notification` VALUES (167, 1, 1, 2, 1, '帖子取消点赞通知', 'whiteCat于Thu Nov 24 19:04:26 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">button无边框</span>’的点赞', '2022-11-24 11:04:26', 76, 0);
INSERT INTO `notification` VALUES (168, 1, 1, 2, 1, '帖子取消点赞通知', 'whiteCat于Thu Nov 24 19:04:28 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">list.remove(index)失败的原因</span>’的点赞', '2022-11-24 11:04:29', 78, 0);
INSERT INTO `notification` VALUES (169, 99, 1, 2, 1, '帖子取消点赞通知', '123于Thu Nov 24 19:06:50 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">button无边框</span>’的点赞', '2022-11-24 11:06:51', 76, 0);
INSERT INTO `notification` VALUES (170, 1, 1, 2, 1, '帖子点赞通知', 'whiteCat于Thu Nov 24 19:37:59 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">button无边框</span>‘', '2022-11-24 11:38:00', 76, 0);
INSERT INTO `notification` VALUES (171, 1, 1, 2, 1, '帖子点赞通知', 'whiteCat于Thu Nov 24 20:31:41 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">list.remove(index)失败的原因</span>‘', '2022-11-24 12:31:42', 78, 0);
INSERT INTO `notification` VALUES (172, 1, 1, 2, 1, '帖子取消点赞通知', 'whiteCat于Thu Nov 24 20:31:44 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">button无边框</span>’的点赞', '2022-11-24 12:31:44', 76, 0);
INSERT INTO `notification` VALUES (173, 1, 1, 2, 1, '帖子取消点赞通知', 'whiteCat于Thu Nov 24 20:31:48 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">dom操作</span>’的点赞', '2022-11-24 12:31:49', 80, 0);
INSERT INTO `notification` VALUES (174, 1, 1, 2, 1, '帖子取消点赞通知', 'whiteCat于Thu Nov 24 20:31:54 CST 2022取消了对你文章’<span style=\"color: #0e8c8c\">ajax回调函数得到一整个html的可能原因</span>’的点赞', '2022-11-24 12:31:55', 79, 0);
INSERT INTO `notification` VALUES (175, 1, 1, 2, 1, '帖子点赞通知', 'whiteCat于Thu Nov 24 20:31:55 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">ajax回调函数得到一整个html的可能原因</span>‘', '2022-11-24 12:31:56', 79, 0);
INSERT INTO `notification` VALUES (176, 1, 99, 4, 1, NULL, 'wwwwwww', '2022-11-24 12:34:03', 0, 0);
INSERT INTO `notification` VALUES (177, 6, 1, 4, 1, NULL, 'wwwwwwwwwwwwwwwwwww', '2022-11-26 11:36:06', 0, 0);
INSERT INTO `notification` VALUES (178, 99, 1, 4, 1, NULL, '开hadoop\ncd /usr/local/hadoop\n./sbin/start-dfs.sh\n\n开hbase\ncd /usr/local/hbase\nbin/start-hbase.sh\n\n外网面板地址: http://47.115.223.210:8888/c4d4e44e\n内网面板地址: http://172.24.12.101:8888/c4d4e44e\nusername: 5xftsbgl\npassword: 3e1faf1a\n\n\n47.115.223.210\n\n', '2022-11-26 12:07:34', 0, 0);
INSERT INTO `notification` VALUES (179, 99, 1, 4, 1, NULL, '开hadoop\ncd /usr/local/hadoop\n./sbin/start-dfs.sh\n\n开hbase\ncd /usr/local/hbase\nbin/start-hbase.sh\n\n外网面板地址: http://47.115.223.210:8888/c4d4e44e\n内网面板地址: http://172.24.12.101:8888/c4d4e44e\nusername: 5xftsbgl\npassword: 3e1faf1a\n\n\n47.115.223.210\n\n', '2022-11-26 12:15:44', 0, 0);
INSERT INTO `notification` VALUES (180, 99, 1, 4, 1, NULL, '0.0', '2022-11-26 15:35:35', 0, 0);
INSERT INTO `notification` VALUES (181, 1, 1, 2, 0, '帖子点赞通知', 'whiteCat于Sat Nov 26 23:54:46 CST 2022点赞了你的文章‘<span style=\"color: #0e8c8c\">button无边框</span>‘', '2022-11-26 15:54:46', 76, 0);
INSERT INTO `notification` VALUES (182, 0, 1, 4, 1, NULL, NULL, '2022-11-26 16:41:37', 0, 0);
INSERT INTO `notification` VALUES (183, 0, 1, 4, 1, NULL, '4400000000qq', '2022-11-26 16:42:48', 0, 0);
INSERT INTO `notification` VALUES (184, 99, 1, 4, 1, NULL, '123456789', '2022-11-26 16:45:04', 0, 0);
INSERT INTO `notification` VALUES (185, 99, 1, 4, 1, NULL, 'qwe', '2022-11-26 16:53:15', 0, 0);
INSERT INTO `notification` VALUES (186, 99, 1, 2, 0, '帖子点赞通知', '123于Thu Jan 05 18:43:25 CST 2023点赞了你的文章‘<span style=\"color: #0e8c8c\">Linux上传文件</span>‘', '2023-01-05 10:43:26', 81, 0);
INSERT INTO `notification` VALUES (187, 1, 1, 2, 0, '帖子取消点赞通知', 'liurui于Tue Apr 11 12:49:14 CST 2023取消了对你文章’<span style=\"color: #0e8c8c\">Have everyone started buying Yang Yuhuan\'s new ski</span>’的点赞', '2023-04-11 04:49:14', 76, 0);
INSERT INTO `notification` VALUES (188, 1, 1, 2, 0, '帖子点赞通知', 'liurui于Tue Apr 11 13:11:16 CST 2023点赞了你的文章‘<span style=\"color: #0e8c8c\">Glory of Kings</span>‘', '2023-04-11 05:11:17', 87, 0);
INSERT INTO `notification` VALUES (189, 1, 1, 2, 0, '帖子取消点赞通知', 'liurui于Tue Apr 11 13:11:17 CST 2023取消了对你文章’<span style=\"color: #0e8c8c\">Glory of Kings</span>’的点赞', '2023-04-11 05:11:17', 87, 0);
INSERT INTO `notification` VALUES (190, 7, 1, 2, 0, '帖子点赞通知', 'admin于Tue Apr 18 21:30:21 CST 2023点赞了你的文章‘<span style=\"color: #0e8c8c\">Glory of Kings</span>‘', '2023-04-18 13:30:21', 87, 0);
INSERT INTO `notification` VALUES (191, 7, 1, 2, 0, '帖子取消点赞通知', 'admin于Tue Apr 18 21:30:22 CST 2023取消了对你文章’<span style=\"color: #0e8c8c\">Glory of Kings</span>’的点赞', '2023-04-18 13:30:23', 87, 0);

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标签名',
  `topic_count` int(11) NULL DEFAULT 0 COMMENT '文章数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES (1, 'none', 11);
INSERT INTO `tag` VALUES (2, 'LOL', 33);
INSERT INTO `tag` VALUES (3, 'CF', 22);
INSERT INTO `tag` VALUES (4, 'wzry', 44);
INSERT INTO `tag` VALUES (5, 'Genshin', 55);
INSERT INTO `tag` VALUES (6, 'CSGO', 66);
INSERT INTO `tag` VALUES (7, 'PUBG', 77);
INSERT INTO `tag` VALUES (8, 'hpjy', 88);
INSERT INTO `tag` VALUES (9, 'LOL', 0);
INSERT INTO `tag` VALUES (13, 'CF', 0);

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '帖子id',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `comment_count` int(11) NULL DEFAULT 0 COMMENT '评论数',
  `topic_time` date NULL DEFAULT NULL COMMENT '创建时间',
  `topic_user_id` int(11) NOT NULL COMMENT '创建者id',
  `support_count` int(11) NULL DEFAULT 0 COMMENT '点赞数',
  `browse_count` int(11) NULL DEFAULT 0 COMMENT '浏览量',
  `topic_tag_id` int(11) NULL DEFAULT 0 COMMENT '标签id',
  `topic_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'jzytp.jpg' COMMENT '帖子图片',
  `topic_type` int(11) NULL DEFAULT 1 COMMENT '0:原创，1:转载',
  `Criticism_count` int(10) UNSIGNED NULL DEFAULT 0 COMMENT '踩',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES (76, 'Have everyone started buying Yang Yuhuan\'s new ski', 'The first skin of the first season of the \"Canyon Chronicles\" series represents the spring of recovery for all things, and Yang Yuhuan\'s Silver Feather Spring Language has been launched!\r\nWhether it\'s appearance animations, posters, modeling, or game special effects, they are all very beautiful. The most crucial thing is that they have a strong sense of impact, and the sound effects of the skills add silver collision sounds, which are very clear and crisp.\r\nBuy early and enjoy early, and buy late with discounts. As skin is sold directly, you can also wait for discounts to be available later, such as mystery stores and birthday discounts.', 2, '2022-11-24', 1, 0, 92, 1, 'yangyuhuan.png', 0, 0);
INSERT INTO `topic` VALUES (78, 'Kuangtie has received a hero quality upgrade', 'As the story of Haidu gradually unfolds, Kuaishi Iron has experienced an upgrade in hero quality\r\nHis robotic arm has been refurbished, becoming more sturdy and powerful, and its coordination with the weapon giant hammer has also become more refined.\r\nThe crazy iron in the new outfit makes the pants legs lighter and more capable, making the whole person look much more energetic.\r\nNowadays, he possesses even more powerful power\r\nQuickly poke open the video and watch the gameplay adjustments of Kuangtie with Benhu\r\nAs the story of Haidu gradually unfolds, Kuaishi Iron has experienced an upgrade in hero quality\r\nHis robotic arm has been refurbished, becoming more sturdy and powerful, and its coordination with the weapon giant hammer has also become more refined.\r\nThe crazy iron in the new outfit makes the pants legs lighter and more capable, making the whole person look much more energetic.\r\nNowadays, he possesses even more powerful power\r\nQuickly poke open the video and watch the gameplay adjustments of Kuangtie with Benhu\r\nAs the story of Haidu gradually unfolds, Kuaishi Iron has experienced an upgrade in hero quality\r\nHis robotic arm has been refurbished, becoming more sturdy and powerful, and its coordination with the weapon giant hammer has also become more refined.\r\nThe crazy iron in the new outfit makes the pants legs lighter and more capable, making the whole person look much more energetic.\r\nNowadays, he possesses even more powerful power\r\nQuickly poke open the video and watch the gameplay adjustments of Kuangtie with Benhu', 1, '2022-11-24', 1, 2, 17, 1, 'ac8586e4c567cdc290d24b909822790.png', 0, 0);
INSERT INTO `topic` VALUES (79, '\"Seven in and seven out\" is no longer the label of', 'Hello everyone, I am at the fingertips. \"Seven in and seven out Zhao Zilong\" is the evaluation of Zhao Yun in previous versions. However, with the continuous changes of the version, there was a time when Zhao Yun went from being a hero who entered multiple times to becoming a regular hero. Although he has returned to a semi fleshy gameplay, it seems that he doesn\'t deserve the evaluation of seven in and seven out. In the current version, compared to other heroes, Zhao Yun seems a bit awkward, so this article takes a look at how he can truly achieve \"seven in and seven out\"', 2, '2022-11-24', 1, 2, 18, 1, '1669277181490.jpg', 0, 0);
INSERT INTO `topic` VALUES (80, 'Introduction Team | Pig Bajie\'s General Techniques', '【 Attention points for alignment 】\r\nTIPS: It is difficult for Zhu Bajie to kill opponents alone, and time should not be wasted on the line.\r\nEarly stage: Do not press the line too deeply to avoid getting stuck. During the blood exchange period, try to hit as many units as possible with skill 1. During this period, try to lead the enemy to the wall or near the side of your own tower, and better coordinate with teammates once.\r\nMid term: Avoid wasting time on Tan Bian. After encountering the 2 skills of multiple displacement heroes, do not immediately take on general attacks. When encountering Guan Yu and Ma Chao, use the 2 skills yourself without deliberately pursuing linkage with the wall.', 0, '2022-11-24', 1, 1, 2, 1, '1669277234642.jpg', 0, 0);
INSERT INTO `topic` VALUES (81, 'Strategy Group | Sun Wukong\'s Counterpart Dianwei ', '【 Attention points for alignment 】\r\nTIPS: It is difficult for Zhu Bajie to kill opponents alone, and time should not be wasted on the line.\r\nEarly stage: Do not press the line too deeply to avoid getting stuck. During the blood exchange period, try to hit as many units as possible with skill 1. During this period, try to lead the enemy to the wall or near the side of your own tower, and better coordinate with teammates once.\r\nMid term: Avoid wasting time on Tan Bian. After encountering the 2 skills of multiple displacement heroes, do not immediately take on general attacks. When encountering Guan Yu and Ma Chao, use the 2 skills yourself without deliberately pursuing linkage with the wall.', 0, '2022-11-24', 1, 1, 4, 1, '1669277297811.jpg', 0, 0);
INSERT INTO `topic` VALUES (82, 'Introduction Team | Eastern Emperor Tai Yi Pai Liu', '【 Attention points for alignment 】\r\nTIPS: It is difficult for Zhu Bajie to kill opponents alone, and time should not be wasted on the line.\r\nEarly stage: Do not press the line too deeply to avoid getting stuck. During the blood exchange period, try to hit as many units as possible with skill 1. During this period, try to lead the enemy to the wall or near the side of your own tower, and better coordinate with teammates once.\r\nMid term: Avoid wasting time on Tan Bian. After encountering the 2 skills of multiple displacement heroes, do not immediately take on general attacks. When encountering Guan Yu and Ma Chao, use the 2 skills yourself without deliberately pursuing linkage with the wall.', 0, '2022-11-24', 1, 0, 0, 1, '1669277343490.jpg', 0, 0);
INSERT INTO `topic` VALUES (83, 'Introduction Team | General Techniques of Da Mo in', '【 Attention points for alignment 】\r\nTIPS: It is difficult for Zhu Bajie to kill opponents alone, and time should not be wasted on the line.\r\nEarly stage: Do not press the line too deeply to avoid getting stuck. During the blood exchange period, try to hit as many units as possible with skill 1. During this period, try to lead the enemy to the wall or near the side of your own tower, and better coordinate with teammates once.\r\nMid term: Avoid wasting time on Tan Bian. After encountering the 2 skills of multiple displacement heroes, do not immediately take on general attacks. When encountering Guan Yu and Ma Chao, use the 2 skills yourself without deliberately pursuing linkage with the wall.', 0, '2022-11-24', 1, 0, 0, 1, '1669277391908.jpg', 0, 0);
INSERT INTO `topic` VALUES (84, 'Strategy Team | Dharma Pair Assistant General Tech', '【 Attention points for alignment 】\r\nTIPS: It is difficult for Zhu Bajie to kill opponents alone, and time should not be wasted on the line.\r\nEarly stage: Do not press the line too deeply to avoid getting stuck. During the blood exchange period, try to hit as many units as possible with skill 1. During this period, try to lead the enemy to the wall or near the side of your own tower, and better coordinate with teammates once.\r\nMid term: Avoid wasting time on Tan Bian. After encountering the 2 skills of multiple displacement heroes, do not immediately take on general attacks. When encountering Guan Yu and Ma Chao, use the 2 skills yourself without deliberately pursuing linkage with the wall.', 0, '2022-11-24', 1, 0, 10, 1, '1669277447039.jpg', 1, 0);
INSERT INTO `topic` VALUES (85, 'Strategy Team | Sun Ce\'s Counter Armor Technique', '【 Attention points for alignment 】\r\nTIPS: It is difficult for Zhu Bajie to kill opponents alone, and time should not be wasted on the line.\r\nEarly stage: Do not press the line too deeply to avoid getting stuck. During the blood exchange period, try to hit as many units as possible with skill 1. During this period, try to lead the enemy to the wall or near the side of your own tower, and better coordinate with teammates once.\r\nMid term: Avoid wasting time on Tan Bian. After encountering the 2 skills of multiple displacement heroes, do not immediately take on general attacks. When encountering Guan Yu and Ma Chao, use the 2 skills yourself without deliberately pursuing linkage with the wall.', 0, '2022-11-24', 1, 0, 0, 1, '1669277798480.jpg', 0, 0);
INSERT INTO `topic` VALUES (86, 'Facing Mingshiyin\'s alignment skills', '【 Attention points for alignment 】\r\nTIPS: It is difficult for Zhu Bajie to kill opponents alone, and time should not be wasted on the line.\r\nEarly stage: Do not press the line too deeply to avoid getting stuck. During the blood exchange period, try to hit as many units as possible with skill 1. During this period, try to lead the enemy to the wall or near the side of your own tower, and better coordinate with teammates once.\r\nMid term: Avoid wasting time on Tan Bian. After encountering the 2 skills of multiple displacement heroes, do not immediately take on general attacks. When encountering Guan Yu and Ma Chao, use the 2 skills yourself without deliberately pursuing linkage with the wall.', 0, '2022-11-24', 1, 0, 5, 1, '1669277853998.jpg', 1, 0);
INSERT INTO `topic` VALUES (87, 'Glory of Kings', 'King of Glory is a 5V5 combat game', 1, '2023-04-11', 1, 0, 5, 0, 'wangzherongyao.jpg', 0, 0);
INSERT INTO `topic` VALUES (88, 'League of Legends(LOL)', 'League of Legends(LOL) is a 5V5 combat game', 0, '2023-04-11', 1, 0, 0, 0, 'LOL.jpg', 0, 0);
INSERT INTO `topic` VALUES (89, 'Game for Peace', 'Peace Elite is a survival gunfight game', 0, '2023-04-11', 1, 0, 1, 0, 'hepingjingying.jpg', 0, 0);
INSERT INTO `topic` VALUES (90, 'Cross Fire(CF)', 'Crossing the Fire Line is an FPS shooting game', 0, '2023-04-11', 1, 0, 1, 0, 'CF.JPG', 0, 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `avatar` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'defaultAvatar.jpg' COMMENT '头像',
  `introduction` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '_utf8mb4\\\'æ­¤ç¨æ·å¾æï¼æ²¡æçä¸èªæä»ç»\\\'' COMMENT '签名',
  `topic_count` int(11) NULL DEFAULT 0 COMMENT '帖子数量',
  `comment_count` int(11) NULL DEFAULT 0 COMMENT '评论数量',
  `rank_id` int(11) NULL DEFAULT 1 COMMENT '权限等级',
  `support_count` int(11) NULL DEFAULT 0 COMMENT '点赞数',
  `rank_level` int(11) NULL DEFAULT 1,
  `sex` int(10) UNSIGNED ZEROFILL NULL DEFAULT 0000000000 COMMENT '性别',
  `browse_count` int(11) NULL DEFAULT 0 COMMENT '被浏览数量',
  `secret` int(11) NOT NULL DEFAULT 0 COMMENT '是否私密',
  PRIMARY KEY (`id`, `username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 113 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'liurui', '123456', '1345305701@qq.com', '1669293156078.jpg', '此用户很懒，没有留下自我介绍', 13, 9, 1, 7, 1, 0000000001, 153, 0);
INSERT INTO `user` VALUES (2, 'paul', '123456', '789@qq.com', 'dapao.png', '此用户很懒，没有留下自我介绍', 0, 0, 1, 0, 1, 0000000000, 0, 0);
INSERT INTO `user` VALUES (3, 'OP', '123456', '1qqqq@qq.com', 'zhuge.png', '此用户很懒，没有留下自我介绍', 0, 0, 1, 0, 1, 0000000000, 0, 0);
INSERT INTO `user` VALUES (4, 'zhangsan', '123456', '123@qq.com', 'xiaosan.png', '此用户很懒，没有留下自我介绍', 0, 0, 1, 0, 1, 0000000000, 0, 0);
INSERT INTO `user` VALUES (6, '666', '123456', 'whitecat1178@163.com', '1668164368257.jpg', 'hh', 0, 0, 1, 7, 1, 0000000000, 29, 0);
INSERT INTO `user` VALUES (7, 'admin', '123456', '65389@qq.com', '3.png', '此用户很懒，没有留下自我介绍', 0, 0, 1, 0, 1, 0000000000, 0, 0);
INSERT INTO `user` VALUES (97, 'moon', '123456', '23456@qq.com', 'defaultAvatar.jpg', '此用户很懒，没有留下自我介绍', 0, 0, 1, 0, 1, 0000000000, 0, 0);
INSERT INTO `user` VALUES (98, 'wenwen', '123456', '1499253481@qq.com', 'defaultAvatar.jpg', '此用户很懒，没有留下自我介绍', 0, 0, 1, 0, 1, 0000000000, 0, 0);
INSERT INTO `user` VALUES (99, '123', '123456', '13453057011@qq.com', '1674803453332.jpg', '此用户很懒，没有留下自我介绍', 0, 5, 1, 1, 1, 0000000000, 18, 0);
INSERT INTO `user` VALUES (112, 'alaions', '123456', '1345305701222@qq.com', '1669276685855.jpg', '此用户很懒，没有留下自我介绍', 0, 0, 1, 0, 1, 0000000000, 0, 0);

SET FOREIGN_KEY_CHECKS = 1;
