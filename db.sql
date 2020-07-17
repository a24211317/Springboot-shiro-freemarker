/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : knowledge_base

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 17/07/2020 15:15:06
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for advisory
-- ----------------------------
DROP TABLE IF EXISTS `advisory`;
CREATE TABLE `advisory`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) NOT NULL COMMENT '咨询者id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '咨询者姓名',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '咨询者手机号',
  `terms` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '相关条款号',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '问题描述',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '咨询者邮箱',
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '咨询者工作单位',
  `wechat` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '咨询者微信号',
  `status` int(1) NOT NULL COMMENT '状态 0：已删除；1：未读；2：已读；3：已回复',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '咨询服务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of advisory
-- ----------------------------
INSERT INTO `advisory` VALUES (1, 1, '张先生', '13810770045', '131231', '民用航333空产品和零部件合格审定规定......', '12312@qq.com', 'asda', 'xxx', 1, '2020-01-04 19:53:44', '2020-02-14 08:15:03');
INSERT INTO `advisory` VALUES (2, 2, '李小姐', '15920180832', 'ss', '正常类、实用类、特技类和通勤类飞机适航标准......', 'ss', 'ssss', 'ss', 2, '2020-01-06 15:02:33', '2020-02-13 20:19:13');
INSERT INTO `advisory` VALUES (3, 3, '王经理', '13955179094', 'a', '运输类飞机适航标准运输类飞机适航标准......', 'asd', 'sad', 'asd', 1, '2020-01-06 15:39:55', '2020-02-13 20:22:12');
INSERT INTO `advisory` VALUES (4, 4, '刘女士', '18643267901', '', '运输类飞机的持续适航和安全改进规定运输类飞机适航标准......', 'asd', 'sadasd', 'asddsa', 2, '2020-01-06 15:40:40', '2020-02-13 20:22:13');
INSERT INTO `advisory` VALUES (5, 5, '陆军', '15810689752', 'asd', '正常类旋翼航空器适航规定运输类飞机适航标准运输类飞机适航标准......', 'asd', 'asd', 'asd', 1, '2020-01-06 16:09:51', '2020-02-13 20:22:14');
INSERT INTO `advisory` VALUES (6, 6, '彭总', '13810223375', NULL, '运输类旋翼航空器适航规定运输类飞机适航标准运输类飞机适航标准......', 'asd', 'asd', 'asd', 1, '2020-02-13 20:20:51', '2020-02-14 08:48:29');
INSERT INTO `advisory` VALUES (7, 7, '姜先生', '18923119353', NULL, '载人自由气球适航规定运输类飞机适航标准运输类飞机适航标准', 'asd', 'asd', 'asd', 1, '2020-02-13 20:21:18', '2020-02-14 08:49:01');

-- ----------------------------
-- Table structure for authority
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority`  (
  `authority_id` int(11) NOT NULL,
  `authority_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`authority_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES (1, '普通管理员');
INSERT INTO `authority` VALUES (2, '超级管理员');

-- ----------------------------
-- Table structure for collection
-- ----------------------------
DROP TABLE IF EXISTS `collection`;
CREATE TABLE `collection`  (
  `cid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `uid` int(11) NOT NULL COMMENT '用户ID',
  `tid` int(11) NOT NULL COMMENT '条款ID',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '状态 0：已删除；1：正常',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NOT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`cid`) USING BTREE,
  INDEX `fk_collection_users_1`(`uid`) USING BTREE,
  INDEX `fk_collection_terms_1`(`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for directory
-- ----------------------------
DROP TABLE IF EXISTS `directory`;
CREATE TABLE `directory`  (
  `did` int(11) NOT NULL AUTO_INCREMENT COMMENT '目录ID',
  `dname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '目录名称',
  `parent_id` int(11) NOT NULL COMMENT '父级ID',
  `level` int(2) NOT NULL COMMENT '层级级别',
  `sort` int(11) NOT NULL COMMENT '同级排序',
  `rid` int(11) NOT NULL COMMENT '所在法规ID',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '状态 0：已删除；1：正常',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`did`) USING BTREE,
  INDEX `fk_directory_regulations_1`(`rid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '目录表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of directory
-- ----------------------------
INSERT INTO `directory` VALUES (1, 'A分部 总则', 0, 1, 1, 1, 1, '2020-01-13 23:22:32', '2020-02-13 17:03:37');
INSERT INTO `directory` VALUES (2, 'B分部 飞行', 0, 1, 2, 1, 1, '2020-02-13 16:10:11', '2020-02-13 16:10:28');
INSERT INTO `directory` VALUES (3, '总则', 2, 2, 1, 1, 1, '2020-02-13 16:11:32', '2020-02-13 16:11:57');
INSERT INTO `directory` VALUES (4, '性能', 2, 2, 2, 1, 1, '2020-02-13 16:12:17', '2020-02-13 16:13:38');
INSERT INTO `directory` VALUES (5, '操纵性和机动性', 2, 2, 3, 1, 1, '2020-02-13 16:12:25', '2020-02-13 16:13:39');
INSERT INTO `directory` VALUES (6, '配平', 2, 2, 4, 1, 1, '2020-02-13 16:12:45', '2020-02-13 16:13:40');
INSERT INTO `directory` VALUES (7, '稳定性', 2, 2, 5, 1, 1, '2020-02-13 16:12:53', '2020-02-13 16:13:41');
INSERT INTO `directory` VALUES (8, '失速', 2, 2, 6, 1, 1, '2020-02-13 16:13:00', '2020-02-13 16:13:41');
INSERT INTO `directory` VALUES (9, '地面和水面操纵特性', 2, 2, 7, 1, 1, '2020-02-13 16:13:09', '2020-02-13 16:13:42');
INSERT INTO `directory` VALUES (10, 'C分部 结构', 0, 1, 3, 1, 1, '2020-02-13 16:13:24', '2020-02-13 16:13:44');
INSERT INTO `directory` VALUES (11, '总则', 10, 2, 1, 1, 1, '2020-02-13 16:13:34', '2020-02-13 16:14:03');
INSERT INTO `directory` VALUES (23, '飞行载荷', 10, 2, 2, 1, 1, '2020-02-13 16:14:17', NULL);
INSERT INTO `directory` VALUES (24, '飞行机动和突风情况', 10, 2, 3, 1, 1, '2020-02-13 16:14:25', NULL);
INSERT INTO `directory` VALUES (25, '补充情况', 10, 2, 4, 1, 1, '2020-02-13 16:14:39', NULL);
INSERT INTO `directory` VALUES (26, '地面载荷', 10, 2, 5, 1, 1, '2020-02-13 16:14:48', NULL);
INSERT INTO `directory` VALUES (34, 'C', 0, 1, 2, 2, 1, '2020-02-17 17:55:59', '2020-02-17 17:56:49');

-- ----------------------------
-- Table structure for email_setting
-- ----------------------------
DROP TABLE IF EXISTS `email_setting`;
CREATE TABLE `email_setting`  (
  `eid` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `server` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `send` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `loginytype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`eid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of email_setting
-- ----------------------------
INSERT INTO `email_setting` VALUES (1, ' 123', ' 123', ' 123', ' 123', ' 1', 'LOGIN认证');

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback`  (
  `fid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '反馈内容',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`fid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '意见反馈表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES (4, 'sss', '2020-01-05 11:40:02');
INSERT INTO `feedback` VALUES (5, '123', '2020-01-06 15:23:52');
INSERT INTO `feedback` VALUES (7, '1', '2020-01-06 15:25:06');
INSERT INTO `feedback` VALUES (8, '222', '2020-01-06 15:28:15');
INSERT INTO `feedback` VALUES (9, '水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水水', '2020-02-18 18:47:59');

-- ----------------------------
-- Table structure for level
-- ----------------------------
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level`  (
  `lid` int(255) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '自己的层级',
  `parent_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '0' COMMENT '所属父级id',
  PRIMARY KEY (`lid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of level
-- ----------------------------
INSERT INTO `level` VALUES (1, '民航规章', '1', '0');
INSERT INTO `level` VALUES (2, '法律法规', '1', '0');
INSERT INTO `level` VALUES (3, '规范性文件', '1', '0');
INSERT INTO `level` VALUES (4, '标准规范', '1', '0');
INSERT INTO `level` VALUES (5, '行政程序规则', '2', '1');
INSERT INTO `level` VALUES (6, '航空器', '2', '1');
INSERT INTO `level` VALUES (7, '航空人员', '2', '1');
INSERT INTO `level` VALUES (8, '测试1', '2', '3');
INSERT INTO `level` VALUES (10, '测试', '2', '3');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `mid` int(11) NOT NULL AUTO_INCREMENT COMMENT '管理员ID',
  `mname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员姓名',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员手机号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员密码',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '管理员创建时间',
  `status` int(255) NOT NULL DEFAULT 1 COMMENT '管理员状态（1：在职，2：离职）',
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES (1, 'aa', '13800138000', '123', '2020-01-05 12:48:01', 1);
INSERT INTO `manager` VALUES (2, '李四', '13800013800', '123456', '2020-01-05 12:48:51', 1);
INSERT INTO `manager` VALUES (3, '王五', '13800138001', '111111', '2019-12-30 12:49:30', 2);
INSERT INTO `manager` VALUES (4, '123', '1111111111', '111111', '2020-01-05 16:01:44', 2);
INSERT INTO `manager` VALUES (5, '112', '2321312321', '111111', '2020-01-05 16:02:49', 1);
INSERT INTO `manager` VALUES (6, '585', '3333333333', '33333333', '2020-01-05 16:06:32', 2);
INSERT INTO `manager` VALUES (7, '111123', '123124343', '11111', '2020-01-08 15:46:32', 1);
INSERT INTO `manager` VALUES (8, 'xxx', '18888888888', '111111', '2020-02-03 14:01:49', 1);
INSERT INTO `manager` VALUES (9, 'admin', 'admin', '123456', '2020-02-15 16:51:36', 1);

-- ----------------------------
-- Table structure for manager_authority
-- ----------------------------
DROP TABLE IF EXISTS `manager_authority`;
CREATE TABLE `manager_authority`  (
  `managerid` int(255) NULL DEFAULT NULL,
  `authorityId` int(11) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager_authority
-- ----------------------------
INSERT INTO `manager_authority` VALUES (9, 1);
INSERT INTO `manager_authority` VALUES (9, 2);
INSERT INTO `manager_authority` VALUES (8, 1);

-- ----------------------------
-- Table structure for page_content
-- ----------------------------
DROP TABLE IF EXISTS `page_content`;
CREATE TABLE `page_content`  (
  `pid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '页面名称 1服务协议 2公司介绍 3短信设置',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '页面内容',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部分页面内容' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of page_content
-- ----------------------------
INSERT INTO `page_content` VALUES (11, '1', '<p>士大夫敢死队风格尔特我让他户籍科两腿老家伙<img src=\"http://q3ojzyadf.bkt.clouddn.com/FoVRMZGvgwCCt7s7hj0FXkPKI22U\" style=\"max-width: 100%;\"></p>', '2020-01-07 19:18:27', '2020-02-17 20:18:36');
INSERT INTO `page_content` VALUES (12, '2', '123', '2020-01-15 19:33:40', '2020-02-17 20:22:03');
INSERT INTO `page_content` VALUES (13, '3', '123xx', '2020-02-17 20:31:06', '2020-02-23 11:49:23');

-- ----------------------------
-- Table structure for regulations
-- ----------------------------
DROP TABLE IF EXISTS `regulations`;
CREATE TABLE `regulations`  (
  `rid` int(11) NOT NULL AUTO_INCREMENT COMMENT '法规ID',
  `rno` int(11) NOT NULL COMMENT '法规部号',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部号别名',
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法规版本号',
  `rname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '法规名称',
  `level_id` int(11) NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '状态 0：已删除；1：显示；2：不显示',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'http://q5m72omc0.bkt.clouddn.com/Flo9y_seooGR0PfrnESTxmrP2tpc' COMMENT '首页法规图标链接',
  `pdf_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法规PDF文件名称',
  `pdf_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法规PDF文件链接',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '法规版本描述',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`rid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '法规表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of regulations
-- ----------------------------
INSERT INTO `regulations` VALUES (1, 21, 'CCAR-21-R4', 'R4', '民用航空产品和零部件合格审定规定', 6, '1', 'http://q5m72omc0.bkt.clouddn.com/Flo9y_seooGR0PfrnESTxmrP2tpc', '', '', '此版本从2010年开始执行', '2020-01-13 22:40:44', '2020-02-17 15:33:37');
INSERT INTO `regulations` VALUES (2, 23, 'CCAR-23-R3', 'R3', '运输类飞机适航标准', 6, '1', 'http://q5m72omc0.bkt.clouddn.com/Flo9y_seooGR0PfrnESTxmrP2tpc', NULL, NULL, '此版本从2010年开始执行', '2020-01-13 22:40:44', '2020-02-16 20:38:47');
INSERT INTO `regulations` VALUES (3, 23, 'CCAR-23-R4', 'R4', 'xxxx正常类、实用类、特技类和通勤类飞机适航标准', 6, '2', 'http://q5m72omc0.bkt.clouddn.com/Flo9y_seooGR0PfrnESTxmrP2tpc', NULL, NULL, '此版本从2010年开始执行', '2020-01-14 13:07:51', '2020-02-16 20:38:47');
INSERT INTO `regulations` VALUES (4, 26, 'CCAR-26', NULL, '运输类飞机的持续适航和安全改进规定', 6, '1', 'http://q5m72omc0.bkt.clouddn.com/Flo9y_seooGR0PfrnESTxmrP2tpc', NULL, NULL, '此版本从2010年开始执行', '2020-02-12 15:31:00', '2020-02-16 20:38:47');
INSERT INTO `regulations` VALUES (5, 27, 'CCAR-27-R1', 'R1', '正常类旋翼航空器适航规定', 6, '1', 'http://q5m72omc0.bkt.clouddn.com/Flo9y_seooGR0PfrnESTxmrP2tpc', NULL, NULL, '此版本从2010年开始执行', '2020-02-12 15:31:25', '2020-02-16 20:38:47');
INSERT INTO `regulations` VALUES (6, 29, 'CCAR-29-R1', 'R1', '运输类旋翼航空器适航规定', 6, '2', 'http://q5m72omc0.bkt.clouddn.com/Flo9y_seooGR0PfrnESTxmrP2tpc', NULL, NULL, '此版本从2010年开始执行', '2020-02-12 15:32:04', '2020-02-16 20:38:47');
INSERT INTO `regulations` VALUES (7, 31, 'CCAR-31', NULL, '载人自由气球适航规定', 6, '1', 'http://q5m72omc0.bkt.clouddn.com/Flo9y_seooGR0PfrnESTxmrP2tpc', NULL, NULL, '此版本从2010年开始执行', '2020-02-12 15:32:19', '2020-02-16 20:38:47');
INSERT INTO `regulations` VALUES (8, 33, 'CCAR-33-R2', 'R2', '航空发动机适航规定', 6, '1', 'http://q5m72omc0.bkt.clouddn.com/Flo9y_seooGR0PfrnESTxmrP2tpc', NULL, NULL, '此版本从2010年开始执行', '2020-02-12 15:32:31', '2020-02-16 20:38:47');
INSERT INTO `regulations` VALUES (9, 34, 'CCAR-34', NULL, '涡轮发动机飞机燃油排泄和排气排出物规定', 7, '2', 'http://q5m72omc0.bkt.clouddn.com/Flo9y_seooGR0PfrnESTxmrP2tpc', NULL, NULL, '此版本从2010年开始执行', '2020-02-12 15:32:44', '2020-02-16 20:38:47');
INSERT INTO `regulations` VALUES (10, 35, 'CCAR-35', NULL, '螺旋桨适航标准', 7, '1', 'http://q5m72omc0.bkt.clouddn.com/Flo9y_seooGR0PfrnESTxmrP2tpc', NULL, NULL, '此版本从2010年开始执行', '2020-02-12 15:32:56', '2020-02-16 20:38:47');
INSERT INTO `regulations` VALUES (11, 36, 'CCAR-36-R1', 'R1', '航空器型号和适航合格审定噪声规定', 7, '1', 'http://q5m72omc0.bkt.clouddn.com/Flo9y_seooGR0PfrnESTxmrP2tpc', NULL, NULL, '此版本从2010年开始执行', '2020-02-12 15:33:09', '2020-02-16 20:38:47');
INSERT INTO `regulations` VALUES (12, 37, 'CCAR-37', NULL, '民用航空材料、零部件和机载设备技术标准规定', 7, '2', 'http://q5m72omc0.bkt.clouddn.com/Flo9y_seooGR0PfrnESTxmrP2tpc', NULL, NULL, '此版本从2010年开始执行', '2020-02-12 15:33:26', '2020-02-16 20:38:47');
INSERT INTO `regulations` VALUES (13, 39, 'CCAR-39', NULL, '民用航空器适航指令规定', 7, '1', 'http://q5m72omc0.bkt.clouddn.com/Flo9y_seooGR0PfrnESTxmrP2tpc', NULL, NULL, '此版本从2010年开始执行', '2020-02-12 15:33:45', '2020-02-16 20:38:47');
INSERT INTO `regulations` VALUES (14, 1, 'cs', '1', 'cs', 8, '1', 'http://q5m72omc0.bkt.clouddn.com/Flo9y_seooGR0PfrnESTxmrP2tpc', 'ssss', 'http://chengh.s3-cn-north-1.qiniucs.com/FgqV3BGj3f74wyWFDNBOsp9mygkd', '', '2020-02-13 08:28:04', '2020-02-16 20:37:03');
INSERT INTO `regulations` VALUES (15, 2, 'cs', '2', 'cs', 8, '1', 'http://q5m72omc0.bkt.clouddn.com/Flo9y_seooGR0PfrnESTxmrP2tpc', '11', 'http://q5m72omc0.bkt.clouddn.com/FgqV3BGj3f74wyWFDNBOsp9mygkd', '', '2020-02-13 08:43:03', '2020-02-16 20:37:04');
INSERT INTO `regulations` VALUES (16, 3, 'cs', '3', 'cs', 8, '1', 'http://q5m72omc0.bkt.clouddn.com/Flo9y_seooGR0PfrnESTxmrP2tpc', 'xxx', 'http://q5m72omc0.bkt.clouddn.com/FgqV3BGj3f74wyWFDNBOsp9mygkd', '123', '2020-02-13 08:57:29', '2020-02-17 15:41:22');
INSERT INTO `regulations` VALUES (17, 1, 'xxx', 'xxx', 'asd', 5, '0', 'http://q5m72omc0.bkt.clouddn.com/Flo9y_seooGR0PfrnESTxmrP2tpc', 'xxx', 'http://q5m72omc0.bkt.clouddn.com/FgqV3BGj3f74wyWFDNBOsp9mygkd', '', '2020-02-17 15:17:48', '2020-02-17 15:18:04');

-- ----------------------------
-- Table structure for terms
-- ----------------------------
DROP TABLE IF EXISTS `terms`;
CREATE TABLE `terms`  (
  `tid` int(11) NOT NULL AUTO_INCREMENT COMMENT '条款ID',
  `tno` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '条款号',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '条款别名',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '条款标题',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '条款内容',
  `version` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '条款版本',
  `did` int(11) NULL DEFAULT NULL COMMENT '目录ID',
  `key_word` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '条款关键字',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '状态 0：已删除；1：正常',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`tid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '条款表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of terms
-- ----------------------------
INSERT INTO `terms` VALUES (2, '1.2', '法案目录1.2', '1.2.1', '法案目录1.2', '1', 3, 'key word', 1, '2020-01-14 17:27:17', '2020-01-14 20:18:32');
INSERT INTO `terms` VALUES (3, '2.1', '法案目录2.1', '2.1.1', '法案目录2.1', '1', 5, 'key word', 1, '2020-01-14 17:29:12', '2020-01-14 20:18:56');
INSERT INTO `terms` VALUES (4, '2.2', '法案目录2.2', '2.2.1', '法案目录2.2', '1', 6, 'key word', 1, '2020-01-14 17:29:12', '2020-01-14 20:18:59');
INSERT INTO `terms` VALUES (5, '2.3', '法案目录2.3.1', '2.3.1', '法案目录2.3.1', '1', 7, 'key word', 1, '2020-01-14 17:29:12', '2020-01-14 20:19:02');
INSERT INTO `terms` VALUES (6, '2.4', '法案目录2.3.2', '2.3.2', '法案目录2.3.2', '1', 8, 'key word', 1, '2020-01-23 19:05:48', '2020-01-14 20:19:15');
INSERT INTO `terms` VALUES (7, '3.1', '法案目录3.1.1', '3.1.1', '法案目录3.1.1', '1', 9, 'key word ', 1, '2020-01-14 19:08:39', '2020-01-14 20:19:17');
INSERT INTO `terms` VALUES (8, '3.2', '法案目录3.1.1.1', '3.1.1.1', '法案目录3.1.1.1', '1', 10, 'key word', 1, '2020-01-14 19:07:03', '2020-01-14 20:19:19');
INSERT INTO `terms` VALUES (9, '3.3', '法案目录3.1.1.2', '3.1.1.2', '法案目录3.1.1.2', '1', 11, 'key word', 1, '2020-01-14 19:07:03', '2020-01-14 20:19:21');
INSERT INTO `terms` VALUES (10, '3.4', '法案目录3.2.1', '3.2.1', '法案目录3.2.1', '1', 12, 'key word', 1, '2020-01-14 19:07:03', '2020-01-14 20:19:23');
INSERT INTO `terms` VALUES (11, '1', '法案1', '1.1', '法案1', '1', 1, 'key word', 1, '2020-01-14 20:18:19', '2020-01-14 20:19:27');
INSERT INTO `terms` VALUES (14, '290', 'CCAR-290-R2', '飞', '<p>(a) 第 25.107 条规定的起飞速度，25.109 条规定的加速停止距离，25.111 条规定的起飞</p>\n\n<p>航迹，25.113 条规定的起飞距离和起飞滑跑距离以及 25.115 条规定的净起飞飞行航迹，必 须在由申请人选定的运行限制范围内的每一起飞重量、高度和周围温度条件下选定的起飞构 型按以下列条件确定:</p>\n\n<p>(1) 在非结冰条件下，和</p>\n\n<p>(2) 在结冰条件下，如果 25.121(b)条规定的起飞形态下，带有附录 C 中定义的起飞冰 积聚:</p>\n\n<p>&nbsp;&nbsp;&nbsp; (i) 最大起飞重量下的失速速度超过非结冰条件下 3 节校正空速或 3%VSR 的较大 者;或</p>\n\n<p>&nbsp;&nbsp;&nbsp; (ii) 25.121(b)规定的爬升梯度的降低超过 25.115(b)所规定的适用实际与净起飞飞行 航迹梯度减量的一半;</p>\n\n<p>(b) 为确定本条所需数据而用的起飞，不得要求特殊的驾驶技巧或机敏。</p>\n\n<p>(c) 起飞数据必须基于下列条件:</p>\n\n<p>&nbsp;&nbsp; (1) 对于陆上飞机和水陆两用飞机;</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (i) 平整、干和湿的并有硬质道面的跑道;和</p>\n\n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; (ii) 申请人如有选择时，带沟槽，或多孔摩擦的湿硬质道面的跑道;</p>\n\n<p>&nbsp;&nbsp; (2) 对于水上飞机和水陆两用飞机，平静的水面;</p>\n\n<p>&nbsp;&nbsp; (3) 对于滑橇式飞机，平整、干燥的雪地。</p>\n\n<p>(d) 在所制定的该飞机使用限制范围内，起飞数据必须计及下列项目的使用修正因素:</p>\n', 'R2', 1, '123', 1, '2020-02-20 17:32:13', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `uname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户姓名',
  `mobile` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `gender` int(1) NULL DEFAULT NULL COMMENT '性别 0：女；1：男',
  `member` int(1) NULL DEFAULT 0 COMMENT '会员类型 0：免费；1：付费',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '状态 0：禁用；1：正常 2=管理员',
  `create_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, '张先生', '13810770045', '13810770045', 1, 1, 1, '2020-01-04 19:58:32', '2020-02-13 20:21:34');
INSERT INTO `users` VALUES (2, '李小姐', '15920180832', '15920180832', 1, 1, 1, '2020-01-06 17:30:13', '2020-02-13 20:21:43');
INSERT INTO `users` VALUES (3, '王经理', '13955179094', '13955179094', 0, 0, 1, '2020-02-03 13:50:39', '2020-02-13 20:21:47');
INSERT INTO `users` VALUES (4, '刘女士', '18643267901', '18643267901', 0, 1, 1, '2020-02-13 20:16:08', '2020-02-13 20:21:52');
INSERT INTO `users` VALUES (5, '陆军', '15810689752', '15810689752', 1, 0, 1, '2020-02-13 20:17:17', '2020-02-13 20:21:56');
INSERT INTO `users` VALUES (6, '彭总', '13810223375', '13810223375', 0, 1, 1, '2020-02-13 20:17:26', '2020-02-13 20:21:59');
INSERT INTO `users` VALUES (7, '姜先生', '18923119353', '18923119353', 1, 1, 1, '2020-02-13 20:17:33', '2020-02-13 20:22:02');
INSERT INTO `users` VALUES (8, 'admin', '123456', '123456', NULL, 0, 2, '2020-02-15 16:19:32', '2020-02-15 16:24:49');
INSERT INTO `users` VALUES (9, '123', NULL, '123', NULL, 0, 1, '2020-02-23 15:19:04', NULL);

-- ----------------------------
-- Table structure for web_setting
-- ----------------------------
DROP TABLE IF EXISTS `web_setting`;
CREATE TABLE `web_setting`  (
  `webid` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '网站标题',
  `domain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网点域名',
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '网站Logo',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司邮箱',
  `language` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '站点语言',
  `status` int(11) NOT NULL DEFAULT 1 COMMENT '网站状态 0：关闭；1：开启',
  PRIMARY KEY (`webid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '网站设置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of web_setting
-- ----------------------------
INSERT INTO `web_setting` VALUES (1, '航舵知识管理系统', 'www.hd.com', 'http://q5m72omc0.bkt.clouddn.com/FhPdb_I-_4kB0-BAZD1AJY7pT4cR', '1234576@hd.com', '简体中文', 1);

SET FOREIGN_KEY_CHECKS = 1;
