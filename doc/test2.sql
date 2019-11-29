/*
 Navicat Premium Data Transfer

 Source Server         : Mysql
 Source Server Type    : MySQL
 Source Server Version : 50713
 Source Host           : localhost:3306
 Source Schema         : test2

 Target Server Type    : MySQL
 Target Server Version : 50713
 File Encoding         : 65001

 Date: 28/11/2019 16:33:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for db_user
-- ----------------------------
DROP TABLE IF EXISTS `db_user`;
CREATE TABLE `db_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age` int(3) NULL DEFAULT NULL,
  `gender` int(2) NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `del_flag` int(1) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 87 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of db_user
-- ----------------------------
INSERT INTO `db_user` VALUES (1, 'xiaobai', '123', '小白', 12, 0, 'a.com', '2019-11-26', '2019-11-26 18:29:30', 0);
INSERT INTO `db_user` VALUES (3, 'xiaoqing', '123', '小青', 14, 0, 'b.com', '2019-11-20', '2019-11-26 18:29:30', 0);
INSERT INTO `db_user` VALUES (4, 'xiaoming', '123', '小明', 21, 1, 'c.com', '2019-11-09', '2019-11-26 18:29:30', 0);
INSERT INTO `db_user` VALUES (6, 'xx', '123', 'xx', 11, 1, 'a.com', '2019-10-30', '2019-11-26 18:29:30', 0);
INSERT INTO `db_user` VALUES (10, 'xiaohei', '123', '小黑', 23, 1, 'a.com', '2019-11-20', '2019-11-26 18:29:30', 0);
INSERT INTO `db_user` VALUES (11, 'dd', '123', '绿绿绿', 33, 1, 'a.com', '2019-11-21', '2019-11-26 18:29:30', 0);
INSERT INTO `db_user` VALUES (14, 'xiaohong', '123', '小红', 27, 0, 'a.com', '2019-11-21', '2019-11-26 18:29:30', 0);
INSERT INTO `db_user` VALUES (19, 'xiaolv', '123', '小绿', 12, 1, 'a.com', '2019-11-21', '2019-11-26 18:29:30', 0);
INSERT INTO `db_user` VALUES (26, 'xiaolvlv', '123', '小绿绿', 99, 1, 'a.com', '2019-11-21', '2019-11-26 18:29:30', 0);
INSERT INTO `db_user` VALUES (31, 'admin', '123', '超级管理员', 25, 1, 'admin.com', '2019-10-31', '2019-11-27 11:31:34', 0);
INSERT INTO `db_user` VALUES (40, 'asde', '123', '绿', 11, 1, '11.com', '2000-01-01', NULL, 0);
INSERT INTO `db_user` VALUES (41, 'tingshuo', '123', '听说', 20, 1, 'tingshuo.com', '2019-11-27', '2019-11-27 19:12:58', 0);
INSERT INTO `db_user` VALUES (42, 'aaa', '123', '小绿a', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (43, 'aaa', '123', '小绿b', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (44, 'aaa', '123', '小绿c', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (45, 'aaa', '123', '小绿d', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (46, 'aaa', '123', '小绿e', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (47, 'aaa', '123', '小绿f', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (48, 'aaa', '123', '小绿g', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (49, 'aaa', '123', '小绿h', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (50, 'aaa', '123', '小绿i', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (51, 'aaa', '123', '小绿j', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (52, 'aaa', '123', '小绿k', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (53, 'aaa', '123', '小绿l', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (54, 'aaa', '123', '小绿m', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (55, 'aaa', '123', '小绿n', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (56, 'aaa', '123', '小绿o', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (57, 'aaa', '123', '小绿p', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (58, 'aaa', '123', '小绿q', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (59, 'aaa', '123', '小绿r', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (60, 'aaa', '123', '小绿s', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (61, 'aaa', '123', '小绿t', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (62, 'aaa', '123', '小绿u', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (63, 'aaa', '123', '小绿v', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (64, 'aaa', '123', '小绿w', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (65, 'aaa', '123', '小绿x', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (66, 'aaa', '123', '小绿y', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (67, 'aaa', '123', '小绿z', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (73, 'aaa', '123', '逗比', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (74, 'aaa', '123', '逗c', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (75, 'aaa', '123', '逗a', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (76, 'aaa', '123', '逗d', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (77, 'aaa', '123', '逗e', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (78, 'aaa', '123', '逗f', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (79, 'aaa', '123', '逗g', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (80, 'aaa', '123', '逗h', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (81, 'aaa', '123', '逗i', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (82, 'aaa', '123', '逗j', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (83, 'aaa', '123', '逗k', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (84, 'aaa', '123', '逗l', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (85, 'aaa', '123', '逗m', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);
INSERT INTO `db_user` VALUES (86, 'aaa', '123', '逗n', 25, 1, 'lv.com', '2019-11-27', '2019-11-27 19:27:11', 0);

SET FOREIGN_KEY_CHECKS = 1;
