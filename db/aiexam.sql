/*
 Navicat MySQL Data Transfer

 Source Server         : demo
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : aiexam

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 12/10/2026 19:27:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for answer_record
-- ----------------------------
DROP TABLE IF EXISTS `answer_record`;
CREATE TABLE `answer_record`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `exam_record_id` int NOT NULL,
  `question_id` int NOT NULL,
  `user_answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `score` int NULL DEFAULT 0,
  `is_correct` int NULL DEFAULT 0,
  `ai_correction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '0-未删除，1-已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 392 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of answer_record
-- ----------------------------
INSERT INTO `answer_record` VALUES (231, 41, 66, 'T', 5, 1, NULL, '2025-07-30 18:55:11', '2025-07-30 18:55:11', 0);
INSERT INTO `answer_record` VALUES (232, 41, 68, 'F', 0, 0, NULL, '2025-07-30 18:55:11', '2025-07-30 18:55:11', 0);
INSERT INTO `answer_record` VALUES (233, 41, 69, '阿达大', 0, 0, '答案与题目要求不符，完全错误', '2025-07-30 18:55:11', '2025-07-30 18:55:13', 0);
INSERT INTO `answer_record` VALUES (234, 41, 71, 'A', 0, 0, NULL, '2025-07-30 18:55:11', '2025-07-30 18:55:13', 0);
INSERT INTO `answer_record` VALUES (235, 41, 72, 'A', 0, 0, NULL, '2025-07-30 18:55:11', '2025-07-30 18:55:13', 0);
INSERT INTO `answer_record` VALUES (236, 41, 73, '阿达大', 0, 0, '答案与题目要求不符', '2025-07-30 18:55:11', '2025-07-30 18:55:15', 0);
INSERT INTO `answer_record` VALUES (237, 41, 74, 'T', 5, 1, NULL, '2025-07-30 18:55:11', '2025-07-30 18:55:15', 0);
INSERT INTO `answer_record` VALUES (238, 41, 75, 'B', 0, 0, NULL, '2025-07-30 18:55:11', '2025-07-30 18:55:15', 0);
INSERT INTO `answer_record` VALUES (239, 41, 76, 'A,B', 0, 0, NULL, '2025-07-30 18:55:11', '2025-07-30 18:55:15', 0);
INSERT INTO `answer_record` VALUES (240, 41, 77, 'A', 0, 0, NULL, '2025-07-30 18:55:11', '2025-07-30 18:55:15', 0);
INSERT INTO `answer_record` VALUES (241, 41, 78, 'B', 0, 0, NULL, '2025-07-30 18:55:11', '2025-07-30 18:55:15', 0);
INSERT INTO `answer_record` VALUES (242, 41, 79, 'B', 0, 0, NULL, '2025-07-30 18:55:11', '2025-07-30 18:55:15', 0);
INSERT INTO `answer_record` VALUES (243, 42, 79, 'A,B,C,D', 5, 1, NULL, '2026-10-05 05:14:41', '2026-10-05 05:14:41', 0);
INSERT INTO `answer_record` VALUES (244, 42, 140, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 05:14:41', '2026-10-05 05:14:41', 0);
INSERT INTO `answer_record` VALUES (245, 42, 143, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 05:14:41', '2026-10-05 05:14:41', 0);
INSERT INTO `answer_record` VALUES (246, 42, 145, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 05:14:41', '2026-10-05 05:14:41', 0);
INSERT INTO `answer_record` VALUES (247, 42, 148, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 05:14:41', '2026-10-05 05:14:41', 0);
INSERT INTO `answer_record` VALUES (248, 42, 201, 'D', 0, 0, NULL, '2026-10-05 05:14:41', '2026-10-05 05:14:41', 0);
INSERT INTO `answer_record` VALUES (249, 42, 213, 'A,B', 0, 0, NULL, '2026-10-05 05:14:41', '2026-10-05 05:14:41', 0);
INSERT INTO `answer_record` VALUES (250, 42, 233, 'A,B', 0, 0, NULL, '2026-10-05 05:14:41', '2026-10-05 05:14:41', 0);
INSERT INTO `answer_record` VALUES (251, 42, 234, 'A,B', 0, 0, NULL, '2026-10-05 05:14:41', '2026-10-05 05:14:41', 0);
INSERT INTO `answer_record` VALUES (252, 42, 251, 'A', 5, 1, NULL, '2026-10-05 05:14:41', '2026-10-05 05:14:41', 0);
INSERT INTO `answer_record` VALUES (253, 42, 257, 'A,B', 0, 0, NULL, '2026-10-05 05:14:41', '2026-10-05 05:14:41', 0);
INSERT INTO `answer_record` VALUES (254, 42, 377, 'A', 5, 1, NULL, '2026-10-05 05:14:41', '2026-10-05 05:14:41', 0);
INSERT INTO `answer_record` VALUES (255, 42, 390, 'A,B', 0, 0, NULL, '2026-10-05 05:14:41', '2026-10-05 05:14:41', 0);
INSERT INTO `answer_record` VALUES (256, 42, 422, 'A,B', 0, 0, NULL, '2026-10-05 05:14:41', '2026-10-05 05:14:41', 0);
INSERT INTO `answer_record` VALUES (257, 42, 437, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 05:14:41', '2026-10-05 05:14:41', 0);
INSERT INTO `answer_record` VALUES (258, 42, 463, '线程包含进程，', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 05:14:41', '2026-10-05 05:14:41', 0);
INSERT INTO `answer_record` VALUES (259, 42, 475, '快速开发，服务器压力小', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 05:14:41', '2026-10-05 05:14:41', 0);
INSERT INTO `answer_record` VALUES (260, 42, 79, 'A,B,C,D', 5, 1, NULL, '2026-10-05 05:15:19', '2026-10-05 05:15:19', 0);
INSERT INTO `answer_record` VALUES (261, 42, 140, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 05:15:19', '2026-10-05 05:15:19', 0);
INSERT INTO `answer_record` VALUES (262, 42, 143, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 05:15:19', '2026-10-05 05:15:19', 0);
INSERT INTO `answer_record` VALUES (263, 42, 145, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 05:15:19', '2026-10-05 05:15:19', 0);
INSERT INTO `answer_record` VALUES (264, 42, 148, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 05:15:19', '2026-10-05 05:15:19', 0);
INSERT INTO `answer_record` VALUES (265, 42, 201, 'D', 0, 0, NULL, '2026-10-05 05:15:19', '2026-10-05 05:15:19', 0);
INSERT INTO `answer_record` VALUES (266, 42, 213, 'A,B', 0, 0, NULL, '2026-10-05 05:15:19', '2026-10-05 05:15:19', 0);
INSERT INTO `answer_record` VALUES (267, 42, 233, 'A,B', 0, 0, NULL, '2026-10-05 05:15:19', '2026-10-05 05:15:19', 0);
INSERT INTO `answer_record` VALUES (268, 42, 234, 'A,B', 0, 0, NULL, '2026-10-05 05:15:19', '2026-10-05 05:15:19', 0);
INSERT INTO `answer_record` VALUES (269, 42, 251, 'A', 5, 1, NULL, '2026-10-05 05:15:19', '2026-10-05 05:15:19', 0);
INSERT INTO `answer_record` VALUES (270, 42, 257, 'A,B', 0, 0, NULL, '2026-10-05 05:15:19', '2026-10-05 05:15:19', 0);
INSERT INTO `answer_record` VALUES (271, 42, 377, 'A', 5, 1, NULL, '2026-10-05 05:15:19', '2026-10-05 05:15:19', 0);
INSERT INTO `answer_record` VALUES (272, 42, 390, 'A,B', 0, 0, NULL, '2026-10-05 05:15:19', '2026-10-05 05:15:19', 0);
INSERT INTO `answer_record` VALUES (273, 42, 422, 'A,B', 0, 0, NULL, '2026-10-05 05:15:19', '2026-10-05 05:15:19', 0);
INSERT INTO `answer_record` VALUES (274, 42, 437, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 05:15:19', '2026-10-05 05:15:19', 0);
INSERT INTO `answer_record` VALUES (275, 42, 463, '线程包含进程，', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 05:15:19', '2026-10-05 05:15:19', 0);
INSERT INTO `answer_record` VALUES (276, 42, 475, '快速开发，服务器压力小', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 05:15:19', '2026-10-05 05:15:19', 0);
INSERT INTO `answer_record` VALUES (277, 42, 79, 'A,B,C,D', 5, 1, NULL, '2026-10-05 05:17:20', '2026-10-05 05:17:20', 0);
INSERT INTO `answer_record` VALUES (278, 42, 140, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 05:17:20', '2026-10-05 05:17:20', 0);
INSERT INTO `answer_record` VALUES (279, 42, 143, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 05:17:20', '2026-10-05 05:17:20', 0);
INSERT INTO `answer_record` VALUES (280, 42, 145, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 05:17:20', '2026-10-05 05:17:20', 0);
INSERT INTO `answer_record` VALUES (281, 42, 148, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 05:17:20', '2026-10-05 05:17:20', 0);
INSERT INTO `answer_record` VALUES (282, 42, 201, 'D', 0, 0, NULL, '2026-10-05 05:17:20', '2026-10-05 05:17:20', 0);
INSERT INTO `answer_record` VALUES (283, 42, 213, 'A,B', 0, 0, NULL, '2026-10-05 05:17:20', '2026-10-05 05:17:20', 0);
INSERT INTO `answer_record` VALUES (284, 42, 233, 'A,B', 0, 0, NULL, '2026-10-05 05:17:20', '2026-10-05 05:17:20', 0);
INSERT INTO `answer_record` VALUES (285, 42, 234, 'A,B', 0, 0, NULL, '2026-10-05 05:17:20', '2026-10-05 05:17:20', 0);
INSERT INTO `answer_record` VALUES (286, 42, 251, 'A', 5, 1, NULL, '2026-10-05 05:17:20', '2026-10-05 05:17:20', 0);
INSERT INTO `answer_record` VALUES (287, 42, 257, 'A,B', 0, 0, NULL, '2026-10-05 05:17:20', '2026-10-05 05:17:20', 0);
INSERT INTO `answer_record` VALUES (288, 42, 377, 'A', 5, 1, NULL, '2026-10-05 05:17:20', '2026-10-05 05:17:20', 0);
INSERT INTO `answer_record` VALUES (289, 42, 390, 'A,B', 0, 0, NULL, '2026-10-05 05:17:20', '2026-10-05 05:17:20', 0);
INSERT INTO `answer_record` VALUES (290, 42, 422, 'A,B', 0, 0, NULL, '2026-10-05 05:17:20', '2026-10-05 05:17:20', 0);
INSERT INTO `answer_record` VALUES (291, 42, 437, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 05:17:20', '2026-10-05 05:17:20', 0);
INSERT INTO `answer_record` VALUES (292, 42, 463, '线程包含进程，', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 05:17:20', '2026-10-05 05:17:20', 0);
INSERT INTO `answer_record` VALUES (293, 42, 475, '快速开发，服务器压力小', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 05:17:20', '2026-10-05 05:17:20', 0);
INSERT INTO `answer_record` VALUES (294, 43, 66, 'T', 5, 1, NULL, '2026-10-05 05:31:35', '2026-10-05 05:31:35', 0);
INSERT INTO `answer_record` VALUES (295, 43, 68, 'T', 5, 1, NULL, '2026-10-05 05:31:35', '2026-10-05 05:31:35', 0);
INSERT INTO `answer_record` VALUES (296, 43, 69, '看不到', 0, 0, '未作答', '2026-10-05 05:31:35', '2026-10-05 05:31:35', 0);
INSERT INTO `answer_record` VALUES (297, 43, 71, 'A,C', 0, 0, NULL, '2026-10-05 05:31:35', '2026-10-05 05:31:35', 0);
INSERT INTO `answer_record` VALUES (298, 43, 72, '', 0, 0, NULL, '2026-10-05 05:31:35', '2026-10-05 05:31:35', 0);
INSERT INTO `answer_record` VALUES (299, 43, 73, 'ioc和aop', 0, 0, '答案与标准答案不符且未提到啦啦啦。', '2026-10-05 05:31:35', '2026-10-05 05:31:35', 0);
INSERT INTO `answer_record` VALUES (300, 43, 74, 'T', 0, 0, NULL, '2026-10-05 05:31:35', '2026-10-05 05:31:35', 0);
INSERT INTO `answer_record` VALUES (301, 43, 75, 'A,B,C,D', 0, 0, NULL, '2026-10-05 05:31:35', '2026-10-05 05:31:35', 0);
INSERT INTO `answer_record` VALUES (302, 43, 76, 'A,B', 0, 0, NULL, '2026-10-05 05:31:35', '2026-10-05 05:31:35', 0);
INSERT INTO `answer_record` VALUES (303, 43, 77, 'A', 0, 0, NULL, '2026-10-05 05:31:35', '2026-10-05 05:31:35', 0);
INSERT INTO `answer_record` VALUES (304, 43, 78, 'A,B,C,D', 0, 0, NULL, '2026-10-05 05:31:35', '2026-10-05 05:31:35', 0);
INSERT INTO `answer_record` VALUES (305, 43, 79, 'A,B,C,D', 5, 1, NULL, '2026-10-05 05:31:35', '2026-10-05 05:31:35', 0);
INSERT INTO `answer_record` VALUES (306, 44, 66, 'T', 0, 0, NULL, '2026-10-05 05:33:16', '2026-10-05 05:33:16', 0);
INSERT INTO `answer_record` VALUES (307, 44, 68, 'T', 0, 0, NULL, '2026-10-05 05:33:16', '2026-10-05 05:33:16', 0);
INSERT INTO `answer_record` VALUES (308, 44, 69, '未知', 0, 0, NULL, '2026-10-05 05:33:16', '2026-10-05 05:33:16', 0);
INSERT INTO `answer_record` VALUES (309, 44, 71, 'A', 0, 0, NULL, '2026-10-05 05:33:16', '2026-10-05 05:33:16', 0);
INSERT INTO `answer_record` VALUES (310, 44, 72, 'A,B', 0, 0, NULL, '2026-10-05 05:33:16', '2026-10-05 05:33:16', 0);
INSERT INTO `answer_record` VALUES (311, 44, 73, 'ioc和aop', 0, 0, NULL, '2026-10-05 05:33:16', '2026-10-05 05:33:16', 0);
INSERT INTO `answer_record` VALUES (312, 44, 74, 'F', 0, 0, NULL, '2026-10-05 05:33:16', '2026-10-05 05:33:16', 0);
INSERT INTO `answer_record` VALUES (313, 44, 75, 'A,B,C,D', 0, 0, NULL, '2026-10-05 05:33:16', '2026-10-05 05:33:16', 0);
INSERT INTO `answer_record` VALUES (314, 44, 76, 'D', 0, 0, NULL, '2026-10-05 05:33:16', '2026-10-05 05:33:16', 0);
INSERT INTO `answer_record` VALUES (315, 44, 77, 'A', 0, 0, NULL, '2026-10-05 05:33:16', '2026-10-05 05:33:16', 0);
INSERT INTO `answer_record` VALUES (316, 44, 78, 'A,B,C,D', 0, 0, NULL, '2026-10-05 05:33:16', '2026-10-05 05:33:16', 0);
INSERT INTO `answer_record` VALUES (317, 44, 79, 'A,B,C,D', 0, 0, NULL, '2026-10-05 05:33:16', '2026-10-05 05:33:16', 0);
INSERT INTO `answer_record` VALUES (318, 45, 66, 'T', 5, 1, NULL, '2026-10-05 05:35:09', '2026-10-05 05:35:09', 0);
INSERT INTO `answer_record` VALUES (319, 45, 68, 'F', 0, 0, NULL, '2026-10-05 05:35:09', '2026-10-05 05:35:09', 0);
INSERT INTO `answer_record` VALUES (320, 45, 69, '不种地', 0, 0, '答案完全错误，与标准答案无关。', '2026-10-05 05:35:09', '2026-10-05 05:35:09', 0);
INSERT INTO `answer_record` VALUES (321, 45, 71, 'A,B,C', 0, 0, NULL, '2026-10-05 05:35:09', '2026-10-05 05:35:09', 0);
INSERT INTO `answer_record` VALUES (322, 45, 72, 'A,B', 0, 0, NULL, '2026-10-05 05:35:09', '2026-10-05 05:35:09', 0);
INSERT INTO `answer_record` VALUES (323, 45, 73, 'ioc', 4, 2, 'IoC正确，但仅写缩写未展开；标准答案无效。', '2026-10-05 05:35:09', '2026-10-05 05:35:09', 0);
INSERT INTO `answer_record` VALUES (324, 45, 74, 'T', 0, 0, NULL, '2026-10-05 05:35:09', '2026-10-05 05:35:09', 0);
INSERT INTO `answer_record` VALUES (325, 45, 75, 'A,B,C,D', 0, 0, NULL, '2026-10-05 05:35:09', '2026-10-05 05:35:09', 0);
INSERT INTO `answer_record` VALUES (326, 45, 76, 'C,D', 0, 0, NULL, '2026-10-05 05:35:09', '2026-10-05 05:35:09', 0);
INSERT INTO `answer_record` VALUES (327, 45, 77, 'A', 0, 0, NULL, '2026-10-05 05:35:09', '2026-10-05 05:35:09', 0);
INSERT INTO `answer_record` VALUES (328, 45, 78, 'A,B,C,D', 0, 0, NULL, '2026-10-05 05:35:09', '2026-10-05 05:35:09', 0);
INSERT INTO `answer_record` VALUES (329, 45, 79, 'A,C,D', 0, 0, NULL, '2026-10-05 05:35:09', '2026-10-05 05:35:09', 0);
INSERT INTO `answer_record` VALUES (330, 46, 79, 'A,B,C,D', 5, 1, NULL, '2026-10-05 18:51:01', '2026-10-05 18:51:01', 0);
INSERT INTO `answer_record` VALUES (331, 46, 140, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 18:51:01', '2026-10-05 18:51:01', 0);
INSERT INTO `answer_record` VALUES (332, 46, 143, 'F', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 18:51:01', '2026-10-05 18:51:01', 0);
INSERT INTO `answer_record` VALUES (333, 46, 145, 'F', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 18:51:01', '2026-10-05 18:51:01', 0);
INSERT INTO `answer_record` VALUES (334, 46, 148, 'F', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 18:51:01', '2026-10-05 18:51:01', 0);
INSERT INTO `answer_record` VALUES (335, 46, 201, 'B', 5, 1, NULL, '2026-10-05 18:51:01', '2026-10-05 18:51:01', 0);
INSERT INTO `answer_record` VALUES (336, 46, 213, 'A', 5, 1, NULL, '2026-10-05 18:51:01', '2026-10-05 18:51:01', 0);
INSERT INTO `answer_record` VALUES (337, 46, 233, 'B', 5, 1, NULL, '2026-10-05 18:51:01', '2026-10-05 18:51:01', 0);
INSERT INTO `answer_record` VALUES (338, 46, 234, 'A', 0, 0, NULL, '2026-10-05 18:51:01', '2026-10-05 18:51:01', 0);
INSERT INTO `answer_record` VALUES (339, 46, 251, 'B', 0, 0, NULL, '2026-10-05 18:51:01', '2026-10-05 18:51:01', 0);
INSERT INTO `answer_record` VALUES (340, 46, 257, 'C', 0, 0, NULL, '2026-10-05 18:51:01', '2026-10-05 18:51:01', 0);
INSERT INTO `answer_record` VALUES (341, 46, 377, 'B', 0, 0, NULL, '2026-10-05 18:51:01', '2026-10-05 18:51:01', 0);
INSERT INTO `answer_record` VALUES (342, 46, 390, 'D', 5, 1, NULL, '2026-10-05 18:51:01', '2026-10-05 18:51:01', 0);
INSERT INTO `answer_record` VALUES (343, 46, 422, 'A', 5, 1, NULL, '2026-10-05 18:51:01', '2026-10-05 18:51:01', 0);
INSERT INTO `answer_record` VALUES (344, 46, 437, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 18:51:01', '2026-10-05 18:51:01', 0);
INSERT INTO `answer_record` VALUES (345, 46, 463, '线线程包含进程', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 18:51:01', '2026-10-05 18:51:01', 0);
INSERT INTO `answer_record` VALUES (346, 46, 475, '方便开发', 0, 0, '判断过程中报错了，直接0分', '2026-10-05 18:51:01', '2026-10-05 18:51:01', 0);
INSERT INTO `answer_record` VALUES (347, 49, 69, '位置', 0, 0, '答案内容与标准答案无关。', '2026-10-07 05:58:21', '2026-10-07 05:58:21', 0);
INSERT INTO `answer_record` VALUES (348, 49, 72, 'B', 0, 0, NULL, '2026-10-07 05:58:21', '2026-10-07 05:58:21', 0);
INSERT INTO `answer_record` VALUES (349, 49, 74, 'T', 0, 0, NULL, '2026-10-07 05:58:21', '2026-10-07 05:58:21', 0);
INSERT INTO `answer_record` VALUES (350, 49, 79, 'A,B,C,D', 5, 1, NULL, '2026-10-07 05:58:21', '2026-10-07 05:58:21', 0);
INSERT INTO `answer_record` VALUES (351, 50, 66, 'T', 5, 1, NULL, '2026-10-07 06:01:58', '2026-10-07 06:01:58', 0);
INSERT INTO `answer_record` VALUES (352, 50, 68, 'T', 5, 1, NULL, '2026-10-07 06:01:58', '2026-10-07 06:01:58', 0);
INSERT INTO `answer_record` VALUES (353, 50, 69, '无', 0, 0, '未作答，按评分规则计0分。', '2026-10-07 06:01:58', '2026-10-07 06:01:58', 0);
INSERT INTO `answer_record` VALUES (354, 50, 71, 'A', 0, 0, NULL, '2026-10-07 06:01:58', '2026-10-07 06:01:58', 0);
INSERT INTO `answer_record` VALUES (355, 50, 72, 'A', 0, 0, NULL, '2026-10-07 06:01:58', '2026-10-07 06:01:58', 0);
INSERT INTO `answer_record` VALUES (356, 50, 73, 'ioc，aop', 5, 1, 'IoC和AOP是Spring核心特性，回答正确；标准答案“啦啦啦”无效，建议修正。', '2026-10-07 06:01:58', '2026-10-07 06:01:58', 0);
INSERT INTO `answer_record` VALUES (357, 50, 74, 'T', 0, 0, NULL, '2026-10-07 06:01:58', '2026-10-07 06:01:58', 0);
INSERT INTO `answer_record` VALUES (358, 50, 75, 'A,C,D', 0, 0, NULL, '2026-10-07 06:01:58', '2026-10-07 06:01:58', 0);
INSERT INTO `answer_record` VALUES (359, 50, 76, 'A,B,C', 0, 0, NULL, '2026-10-07 06:01:58', '2026-10-07 06:01:58', 0);
INSERT INTO `answer_record` VALUES (360, 50, 77, 'A', 0, 0, NULL, '2026-10-07 06:01:58', '2026-10-07 06:01:58', 0);
INSERT INTO `answer_record` VALUES (361, 50, 78, 'A,B,C,D', 0, 0, NULL, '2026-10-07 06:01:58', '2026-10-07 06:01:58', 0);
INSERT INTO `answer_record` VALUES (362, 50, 79, 'A,B,C,D', 5, 1, NULL, '2026-10-07 06:01:58', '2026-10-07 06:01:58', 0);
INSERT INTO `answer_record` VALUES (363, 51, 79, 'A,B', 0, 0, NULL, '2026-10-10 05:15:04', '2026-10-10 05:15:04', 0);
INSERT INTO `answer_record` VALUES (364, 51, 140, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-10 05:15:04', '2026-10-10 05:15:04', 0);
INSERT INTO `answer_record` VALUES (365, 51, 143, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-10 05:15:04', '2026-10-10 05:15:04', 0);
INSERT INTO `answer_record` VALUES (366, 51, 145, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-10 05:15:04', '2026-10-10 05:15:04', 0);
INSERT INTO `answer_record` VALUES (367, 51, 148, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-10 05:15:04', '2026-10-10 05:15:04', 0);
INSERT INTO `answer_record` VALUES (368, 51, 201, 'A,B', 0, 0, NULL, '2026-10-10 05:15:04', '2026-10-10 05:15:04', 0);
INSERT INTO `answer_record` VALUES (369, 51, 213, 'A,B', 0, 0, NULL, '2026-10-10 05:15:04', '2026-10-10 05:15:04', 0);
INSERT INTO `answer_record` VALUES (370, 51, 233, 'A,B', 0, 0, NULL, '2026-10-10 05:15:04', '2026-10-10 05:15:04', 0);
INSERT INTO `answer_record` VALUES (371, 51, 234, 'A,B,C,D', 0, 0, NULL, '2026-10-10 05:15:04', '2026-10-10 05:15:04', 0);
INSERT INTO `answer_record` VALUES (372, 51, 251, 'A,B', 0, 0, NULL, '2026-10-10 05:15:04', '2026-10-10 05:15:04', 0);
INSERT INTO `answer_record` VALUES (373, 51, 257, 'A,B', 0, 0, NULL, '2026-10-10 05:15:04', '2026-10-10 05:15:04', 0);
INSERT INTO `answer_record` VALUES (374, 51, 377, 'A,B', 0, 0, NULL, '2026-10-10 05:15:04', '2026-10-10 05:15:04', 0);
INSERT INTO `answer_record` VALUES (375, 51, 390, 'A,B', 0, 0, NULL, '2026-10-10 05:15:04', '2026-10-10 05:15:04', 0);
INSERT INTO `answer_record` VALUES (376, 51, 422, 'A,B', 0, 0, NULL, '2026-10-10 05:15:04', '2026-10-10 05:15:04', 0);
INSERT INTO `answer_record` VALUES (377, 51, 437, 'F', 0, 0, '判断过程中报错了，直接0分', '2026-10-10 05:15:04', '2026-10-10 05:15:04', 0);
INSERT INTO `answer_record` VALUES (378, 51, 463, '', 0, 0, '判断过程中报错了，直接0分', '2026-10-10 05:15:04', '2026-10-10 05:15:04', 0);
INSERT INTO `answer_record` VALUES (379, 51, 475, '', 0, 0, '判断过程中报错了，直接0分', '2026-10-10 05:15:04', '2026-10-10 05:15:04', 0);
INSERT INTO `answer_record` VALUES (380, 52, 66, 'T', 5, 1, NULL, '2026-10-10 05:21:54', '2026-10-10 05:21:54', 0);
INSERT INTO `answer_record` VALUES (381, 52, 68, 'T', 5, 1, NULL, '2026-10-10 05:21:54', '2026-10-10 05:21:54', 0);
INSERT INTO `answer_record` VALUES (382, 52, 69, '大', 0, 0, '答案错误，与标准答案无关。', '2026-10-10 05:21:54', '2026-10-10 05:21:54', 0);
INSERT INTO `answer_record` VALUES (383, 52, 71, 'A', 0, 0, NULL, '2026-10-10 05:21:54', '2026-10-10 05:21:54', 0);
INSERT INTO `answer_record` VALUES (384, 52, 72, '', 0, 0, NULL, '2026-10-10 05:21:54', '2026-10-10 05:21:54', 0);
INSERT INTO `answer_record` VALUES (385, 52, 73, 'ioc', 5, 1, 'IoC（控制反转）是Spring框架的核心特性之一，答案准确。', '2026-10-10 05:21:54', '2026-10-10 05:21:54', 0);
INSERT INTO `answer_record` VALUES (386, 52, 74, 'T', 0, 0, NULL, '2026-10-10 05:21:54', '2026-10-10 05:21:54', 0);
INSERT INTO `answer_record` VALUES (387, 52, 75, 'A,B,D', 0, 0, NULL, '2026-10-10 05:21:54', '2026-10-10 05:21:54', 0);
INSERT INTO `answer_record` VALUES (388, 52, 76, 'A,B,D', 5, 1, NULL, '2026-10-10 05:21:54', '2026-10-10 05:21:54', 0);
INSERT INTO `answer_record` VALUES (389, 52, 77, 'A,C,D', 0, 0, NULL, '2026-10-10 05:21:54', '2026-10-10 05:21:54', 0);
INSERT INTO `answer_record` VALUES (390, 52, 78, 'A', 0, 0, NULL, '2026-10-10 05:21:54', '2026-10-10 05:21:54', 0);
INSERT INTO `answer_record` VALUES (391, 52, 79, 'A,B,C,D', 5, 1, NULL, '2026-10-10 05:21:54', '2026-10-10 05:21:54', 0);
INSERT INTO `answer_record` VALUES (392, 53, 66, 'T', 5, 1, NULL, '2026-10-12 03:56:57', '2026-10-12 03:56:57', 0);
INSERT INTO `answer_record` VALUES (393, 53, 68, 'T', 5, 1, NULL, '2026-10-12 03:56:57', '2026-10-12 03:56:57', 0);
INSERT INTO `answer_record` VALUES (394, 53, 69, '我腐恶阿荣', 0, 0, '学生答案与题目要求无关', '2026-10-12 03:56:57', '2026-10-12 03:56:57', 0);
INSERT INTO `answer_record` VALUES (395, 53, 71, 'A', 0, 0, NULL, '2026-10-12 03:56:57', '2026-10-12 03:56:57', 0);
INSERT INTO `answer_record` VALUES (396, 53, 72, 'A', 0, 0, NULL, '2026-10-12 03:56:57', '2026-10-12 03:56:57', 0);
INSERT INTO `answer_record` VALUES (397, 53, 73, '法国把我', 0, 0, '答案与题目无关，未接触正确选项。', '2026-10-12 03:56:57', '2026-10-12 03:56:57', 0);
INSERT INTO `answer_record` VALUES (398, 53, 74, 'T', 0, 0, NULL, '2026-10-12 03:56:57', '2026-10-12 03:56:57', 0);
INSERT INTO `answer_record` VALUES (399, 53, 75, 'A,B,C', 5, 1, NULL, '2026-10-12 03:56:57', '2026-10-12 03:56:57', 0);
INSERT INTO `answer_record` VALUES (400, 53, 76, 'A,B,C,D', 0, 0, NULL, '2026-10-12 03:56:57', '2026-10-12 03:56:57', 0);
INSERT INTO `answer_record` VALUES (401, 53, 77, 'A', 0, 0, NULL, '2026-10-12 03:56:57', '2026-10-12 03:56:57', 0);
INSERT INTO `answer_record` VALUES (402, 53, 78, 'A,B,C,D', 0, 0, NULL, '2026-10-12 03:56:57', '2026-10-12 03:56:57', 0);
INSERT INTO `answer_record` VALUES (403, 53, 79, 'A,B,C,D', 5, 1, NULL, '2026-10-12 03:56:57', '2026-10-12 03:56:57', 0);
INSERT INTO `answer_record` VALUES (404, 54, 79, 'A,B,C,D', 5, 1, NULL, '2026-10-12 04:27:34', '2026-10-12 04:27:34', 0);
INSERT INTO `answer_record` VALUES (405, 54, 140, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-12 04:27:34', '2026-10-12 04:27:34', 0);
INSERT INTO `answer_record` VALUES (406, 54, 143, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-12 04:27:34', '2026-10-12 04:27:34', 0);
INSERT INTO `answer_record` VALUES (407, 54, 145, 'F', 0, 0, '判断过程中报错了，直接0分', '2026-10-12 04:27:34', '2026-10-12 04:27:34', 0);
INSERT INTO `answer_record` VALUES (408, 54, 148, 'T', 0, 0, '判断过程中报错了，直接0分', '2026-10-12 04:27:34', '2026-10-12 04:27:34', 0);
INSERT INTO `answer_record` VALUES (409, 54, 201, 'D', 0, 0, NULL, '2026-10-12 04:27:34', '2026-10-12 04:27:34', 0);
INSERT INTO `answer_record` VALUES (410, 54, 213, 'A', 5, 1, NULL, '2026-10-12 04:27:34', '2026-10-12 04:27:34', 0);
INSERT INTO `answer_record` VALUES (411, 54, 233, 'B', 5, 1, NULL, '2026-10-12 04:27:34', '2026-10-12 04:27:34', 0);
INSERT INTO `answer_record` VALUES (412, 54, 234, 'A', 0, 0, NULL, '2026-10-12 04:27:34', '2026-10-12 04:27:34', 0);
INSERT INTO `answer_record` VALUES (413, 54, 251, 'C', 0, 0, NULL, '2026-10-12 04:27:34', '2026-10-12 04:27:34', 0);
INSERT INTO `answer_record` VALUES (414, 54, 257, 'A', 0, 0, NULL, '2026-10-12 04:27:34', '2026-10-12 04:27:34', 0);
INSERT INTO `answer_record` VALUES (415, 54, 377, 'A', 5, 1, NULL, '2026-10-12 04:27:34', '2026-10-12 04:27:34', 0);
INSERT INTO `answer_record` VALUES (416, 54, 390, 'D', 5, 1, NULL, '2026-10-12 04:27:34', '2026-10-12 04:27:34', 0);
INSERT INTO `answer_record` VALUES (417, 54, 422, 'A', 5, 1, NULL, '2026-10-12 04:27:34', '2026-10-12 04:27:34', 0);
INSERT INTO `answer_record` VALUES (418, 54, 437, 'T', 2, 1, NULL, '2026-10-12 04:27:34', '2026-10-12 04:27:34', 0);
INSERT INTO `answer_record` VALUES (419, 54, 463, '线程包含进程', 0, 0, '答非所问，混淆了线程和进程的概念。', '2026-10-12 04:27:34', '2026-10-12 04:27:34', 0);
INSERT INTO `answer_record` VALUES (420, 54, 475, '加快开发，代码逻辑清晰', 0, 0, '未回答题干要求的内容', '2026-10-12 04:27:34', '2026-10-12 04:27:34', 0);

-- ----------------------------
-- Table structure for banners
-- ----------------------------
DROP TABLE IF EXISTS `banners`;
CREATE TABLE `banners`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '轮播图ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '轮播图标题',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '轮播图描述',
  `image_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '图片URL',
  `link_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '跳转链接',
  `sort_order` int NULL DEFAULT 0 COMMENT '排序顺序',
  `is_active` tinyint(1) NULL DEFAULT 1 COMMENT '是否启用',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '0-未删除，1-已删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_sort_order`(`sort_order`) USING BTREE,
  INDEX `idx_is_active`(`is_active`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '轮播图表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of banners
-- ----------------------------
INSERT INTO `banners` VALUES (4, 'Java+AI应用开发', '以Java+大模型应用为核，广度延伸至大数据&人工智能！', 'http://47.94.86.115:9000/java1229/banners/2025/07/18/c65f24222a724d0db9a481a46cd3b64a.png', 'https://www.exam.com/java/', 1, 1, '2025-06-25 18:27:00', '2025-07-24 16:56:02', 1);
INSERT INTO `banners` VALUES (5, '嵌入式&万物互联', '大牛手把手教你实操企业真实项目，无缝对接企业真实工作流程', 'http://192.168.180.101:9000/exams/banners/20261008/0701aa79-efac-4843-a143-70e6563c3ca2-Response to Understanding (3).png', 'https://www.exam.com/iot/', 2, 1, '2025-06-25 18:27:00', '2026-10-08 04:46:12', 0);
INSERT INTO `banners` VALUES (6, '人工智能大模型', '全球人工智能浪潮正劲，时代红利，先到先得！', 'http://192.168.180.101:9000/exams/banners/20261008/ea7d8a3b-5829-4ff0-9162-1b1391398df6-白发少女4K动漫 - 副本.jpg', 'https://www.exam.com/ai/', 3, 1, '2025-06-25 18:27:00', '2026-10-08 04:46:41', 0);
INSERT INTO `banners` VALUES (7, 'AI智能运维', 'BAT级实战课研团队,直面百亿级业务运维现场！', 'http://192.168.180.101:9000/exams/banners/20261008/bdf99487-b324-4b25-a8ae-8498b2ccba05-芙宁娜 报纸墙曲面屏壁纸.jpg', 'https://www.exam.com/sre/', 4, 1, '2025-06-26 15:36:37', '2026-10-08 04:46:52', 0);
INSERT INTO `banners` VALUES (8, '智能考试系统介绍', '基于AI技术的智能考试平台，支持在线考试、智能组卷等功能', 'http://192.168.180.101:9000/exams/banners/20261008/b85cd747-29cc-4177-895b-df0ca39c61ac-Response to Understanding (2).png', 'https://example.com/about', 1, 1, '2025-07-24 16:42:53', '2026-10-08 04:45:59', 0);
INSERT INTO `banners` VALUES (9, '测试轮播图', '测试轮播图描述', 'http://192.168.180.101:9000/exams/banners/20261008/4b10888b-f24f-4308-8d0a-7d7fa7ef4420-Response to Understanding (1).png', 'http://www.baidu.com', 2, 1, '2025-07-24 16:55:46', '2026-10-08 04:46:20', 0);

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `parent_id` bigint NULL DEFAULT 0,
  `sort` int NULL DEFAULT 0,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '0-未删除，1-已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (13, '选择题', 0, 1, '2025-07-23 14:17:32', '2025-07-23 14:17:32', 0);
INSERT INTO `categories` VALUES (14, '判断题', 0, 2, '2025-07-23 14:17:32', '2025-07-23 14:17:32', 0);
INSERT INTO `categories` VALUES (15, '简答题', 0, 3, '2025-07-23 14:17:32', '2025-07-23 14:17:32', 0);
INSERT INTO `categories` VALUES (16, 'Java基础', 13, 1, '2025-07-23 14:17:32', '2025-07-23 14:17:32', 0);
INSERT INTO `categories` VALUES (17, 'Java进阶', 13, 2, '2025-07-23 14:17:32', '2025-07-23 14:17:32', 0);
INSERT INTO `categories` VALUES (18, 'Spring框架', 13, 3, '2025-07-23 14:17:32', '2025-07-23 14:17:32', 0);
INSERT INTO `categories` VALUES (19, '数据库', 13, 4, '2025-07-23 14:17:32', '2025-07-23 14:17:32', 0);
INSERT INTO `categories` VALUES (20, '前端技术', 13, 5, '2025-07-23 14:17:32', '2025-07-23 14:17:32', 1);
INSERT INTO `categories` VALUES (21, 'Java语法', 14, 1, '2025-07-23 14:17:32', '2025-07-23 14:17:32', 0);
INSERT INTO `categories` VALUES (22, '编程规范', 14, 2, '2025-07-23 14:17:32', '2025-07-23 14:17:32', 0);
INSERT INTO `categories` VALUES (23, '最佳实践', 14, 3, '2025-07-23 14:17:32', '2025-07-23 14:17:32', 0);
INSERT INTO `categories` VALUES (24, '系统设计', 15, 1, '2025-07-23 14:17:32', '2025-07-23 14:17:32', 0);
INSERT INTO `categories` VALUES (25, '性能优化', 15, 2, '2025-07-23 14:17:32', '2025-07-23 14:17:32', 0);
INSERT INTO `categories` VALUES (26, '架构设计', 15, 3, '2025-07-23 14:17:32', '2025-07-23 14:17:32', 1);
INSERT INTO `categories` VALUES (29, 'maven工具', 13, 0, '2025-07-25 11:12:21', '2025-07-25 11:12:21', 0);
INSERT INTO `categories` VALUES (30, 'git', 13, 0, '2025-07-25 11:39:43', '2025-07-25 11:39:43', 0);
INSERT INTO `categories` VALUES (31, '测试4', 14, 6, '2025-07-25 11:50:31', '2025-07-25 11:52:59', 0);
INSERT INTO `categories` VALUES (32, 'svsda', 13, 0, '2026-10-12 17:47:11', '2026-10-12 17:47:18', 1);

-- ----------------------------
-- Table structure for exam_records
-- ----------------------------
DROP TABLE IF EXISTS `exam_records`;
CREATE TABLE `exam_records`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `exam_id` int NOT NULL,
  `user_id` bigint NULL DEFAULT NULL COMMENT '登录用户ID',
  `student_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `score` int NULL DEFAULT 0,
  `answers` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'ONGOING',
  `window_switches` int NULL DEFAULT 0,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '0-未删除，1-已删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of exam_records
-- ----------------------------
INSERT INTO `exam_records` VALUES (38, 15, 1, '赵伟风', 0, NULL, '2025-07-30 15:18:44', NULL, '进行中', 0, '2025-07-30 15:18:43', '2026-10-12 04:06:50', 0);
INSERT INTO `exam_records` VALUES (39, 17, 1, 'xxx', 0, NULL, '2025-07-30 16:32:25', NULL, '进行中', 0, '2025-07-30 16:32:25', '2026-10-12 04:06:50', 0);
INSERT INTO `exam_records` VALUES (40, 20, 1, '法国德国', 0, NULL, '2025-07-30 16:47:43', NULL, '进行中', 0, '2025-07-30 16:47:43', '2026-10-12 04:06:50', 0);
INSERT INTO `exam_records` VALUES (41, 20, 1, '测试', 10, '本次考试成绩显示，学生在理解和掌握课程内容方面存在较大差距。得分率仅为16.7%，反映出学生对知识点的掌握不全面，解题技巧和应用能力亟待提高。优势在于能够答对两道题目，显示出一定的基础理解能力。不足之处在于多数题目未能正确解答，需要加强知识点的深入理解和运用。建议学生从基础知识入手，加强概念理解，多做练习题，提高解题速度和准确度。同时，注重培养逻辑思维和分析问题的能力。保持积极态度，相信自己能够通过努力提高成绩。加油，你有能力做得更好！', '2025-07-30 18:54:51', '2025-07-30 18:55:11', '已批阅', 0, '2025-07-30 18:54:51', '2026-10-12 04:06:50', 0);
INSERT INTO `exam_records` VALUES (42, 22, 1, 'HTGREW', 45, '本次考试得分率39.1%，整体低于及格线，说明基础掌握不够扎实，综合运用与高分题失分明显。优势是17题答对9题，半数题目能拿分，具备一定知识底子。不足在于高权重题、综合题和易错点把握不足，解题规范性与准确性待提升。建议立即整理错题，按模块补牢概念和公式，重点攻克高频高分题型；坚持限时训练，规范步骤，每周复盘并主动请教。考试是诊断而非终点，只要查漏补缺、稳步执行，下次定能明显进步。', '2026-10-05 05:13:14', '2026-10-05 05:17:21', '已批阅', 0, '2026-10-05 05:13:13', '2026-10-12 04:06:50', 0);
INSERT INTO `exam_records` VALUES (43, 9, 1, '废热', 15, '本次考试你的总体成绩为25%，仅答对了3道题，反映出你在对知识点的掌握上还有一些不足。从考试的表现来看，你需要在这方面做出更多的努力。主要的优势是在一些基础知识点上较为扎实，但在综合思维和应用能力的提升上还有待提高。建议加强基础知识的学习，注重理解和记忆，同时关注历年真题，熟悉考题类型和解题技巧。虽然目前的成绩不尽如人意，但只要你坚持努力，成绩一定会有显著提高。相信自己，继续加油！', '2026-10-05 05:30:57', '2026-10-05 05:31:36', '已批阅', 0, '2026-10-05 05:30:56', '2026-10-12 04:06:50', 0);
INSERT INTO `exam_records` VALUES (44, 9, 1, ' 考虑', 0, NULL, '2026-10-05 05:32:38', '2026-10-05 05:33:17', '已完成', 0, '2026-10-05 05:32:38', '2026-10-12 04:06:50', 0);
INSERT INTO `exam_records` VALUES (45, 9, 1, '次哦波', 5, '本次考试总分5/60，得分率8.3%，仅答对1道，说明基础知识掌握薄弱，审题、解题和应试能力均有明显不足。优势是仍答对1题，表明并非完全不会，只要找准漏洞就有提升空间。建议回归课本，梳理基本概念和公式，逐题订正并建立错题本；按知识点分模块练习，先易后难，每天坚持30分钟复习和基础题训练，主动请教老师同学。一次失利不代表能力定论，只要踏实补漏、坚持练习，成绩一定能逐步提高。', '2026-10-05 05:34:40', '2026-10-05 05:35:09', '已批阅', 0, '2026-10-05 05:34:39', '2026-10-12 04:06:50', 0);
INSERT INTO `exam_records` VALUES (46, 22, 1, '111', 30, '本次考试30/115分，得分率26.1%，17题对6题，整体基础薄弱，知识漏洞较多。优势是仍有部分题能答对，说明具备一定理解力和提升空间。不足在于基础概念、审题和综合应用失分严重。建议回归课本，整理错题，按知识点专项突破，先保基础题正确率，再做限时训练并总结方法。每天坚持复盘、主动请教。不要气馁，查漏补缺、稳步坚持，下次必有进步。', '2026-10-05 18:49:26', '2026-10-05 18:51:02', '已批阅', 0, '2026-10-05 18:49:25', '2026-10-12 04:06:50', 0);
INSERT INTO `exam_records` VALUES (47, 9, 1, '富国天惠你回复多少度', 0, NULL, '2026-10-07 05:54:32', NULL, '进行中', 0, '2026-10-07 05:54:32', '2026-10-12 04:06:50', 0);
INSERT INTO `exam_records` VALUES (48, 9, 1, '染发膏我', 0, NULL, '2026-10-07 05:55:13', NULL, '进行中', 0, '2026-10-07 05:55:12', '2026-10-12 04:06:50', 0);
INSERT INTO `exam_records` VALUES (49, 15, 1, '对方根本', 5, '本次考试得分5/25，得分率20%，4题仅答对1题，整体表现不理想，说明基础知识与解题能力存在较大漏洞。优势在于已能正确完成部分题目，具备一定理解基础。不足是知识掌握不系统、审题和答题策略欠佳。建议逐题订正，建立错题本，回归课本梳理核心概念，按题型专项训练，并限时模拟。希望你不要气馁，把这次考试当作查漏补缺的起点，坚持每日复习与复盘，逐步提升，相信下次会有明显进步。', '2026-10-07 05:58:01', '2026-10-07 05:58:21', '已批阅', 0, '2026-10-07 05:58:01', '2026-10-12 04:06:50', 0);
INSERT INTO `exam_records` VALUES (50, 20, 1, '小升初大V发', 15, '本次考试得分15/60，正确率25%，整体表现不理想，说明多数知识点掌握不牢。能答对3题，说明你并非完全不会，部分基础内容已有初步理解，这是提升的起点。主要不足是基础薄弱、漏洞较多、解题准确率低。建议回归课本，梳理概念公式，建立错题本，按模块专项练习，先确保基础题正确率，再逐步提高难度，并及时请教老师同学。只要坚持查漏补缺，成绩一定会逐步提升。', '2026-10-07 06:01:20', '2026-10-07 06:01:58', '已批阅', 0, '2026-10-07 06:01:19', '2026-10-12 04:06:50', 0);
INSERT INTO `exam_records` VALUES (51, 22, 2, '方式二', 0, '本次考试0/115，17题全部失分，结果很不理想，反映基础知识、解题方法和答题规范存在系统性薄弱，审题与检查习惯也待加强。目前虽无明显知识优势，但完整暴露问题，为精准补缺提供了方向。建议立即逐题订正，回归教材梳理概念公式，建立错题本，按模块从基础题练起，每天限时训练并主动请教老师同学。先保证会做的不丢分，再逐步提升。请相信，0分只是现状而非定局，坚持落实，下次必有进步。', '2026-10-10 05:14:25', '2026-10-10 05:15:04', '已批阅', 0, '2026-10-10 05:14:25', '2026-10-12 04:06:50', 0);
INSERT INTO `exam_records` VALUES (52, 9, 2, '福娃', 20, '本次考试得分率33.3%，整体表现暂不理想，说明基础知识掌握不够扎实，解题熟练度和准确率有待提升。答对4题，反映你仍具备一定基础和潜力。建议认真整理错题，按知识点归类，回归课本弄懂概念，并针对薄弱环节进行专项练习；养成审题标记、限时训练和定期复习的习惯。学习中多向老师和同学请教，及时解决疑惑。一次成绩不能定义你，只要找准问题、坚持改进，下次一定能取得明显进步。', '2026-10-10 05:21:19', '2026-10-10 05:21:54', '已批阅', 0, '2026-10-10 05:21:19', '2026-10-12 04:06:50', 0);
INSERT INTO `exam_records` VALUES (53, 20, 2, '农出v维萨', 20, '本次考试总体表现一般，得分率33.3%表明还有较大的提升空间。从答对的4道题目来看，你的基础知识掌握相对稳固。但同时，还有8道题目未能回答正确，反映出在理解题意、分析问题和应用知识等方面存在不足。建议你多做综合题训练，加强逻辑思维和问题解决能力的培养；同时，要注重基础知识的复习和巩固，避免因基础不牢而失分。相信你通过努力一定能取得更好的成绩，期待你的进步！', '2026-10-12 03:56:29', '2026-10-12 03:56:57', '已批阅', 0, '2026-10-12 03:56:29', '2026-10-12 04:06:50', 0);
INSERT INTO `exam_records` VALUES (54, 22, NULL, '冯宝宝', 32, '本次考试总体表现欠佳，得分率为27.8%，仅答对7道题，约为总题数的41.2%。虽然答对的题目数量相对较多，但由于每个题目的满分较低，整体得分不理想。\n\n优势在于你在多数题目中展现了一定的理解力和解决问题的能力，这表明你对基础知识有较好掌握。而存在的问题是，在能够解答的题目中，你的得分不够理想，可能在细节处理或时间管理上有所欠缺。\n\n建议加强答题技巧的培养，注重细节，确保每一分都得到充分利用。同时，合理分配考试时间，确保每个题目都能得到适当解答。此外，定期进行总结和错题分析，深度思考错误原因，提高解题的准确性与效率。希望你能从中汲取经验，不断提升自我，未来取得更好的成绩。', '2026-10-12 04:25:26', '2026-10-12 04:27:34', '已批阅', 0, '2026-10-12 04:25:26', '2026-10-12 04:27:34', 0);

-- ----------------------------
-- Table structure for notices
-- ----------------------------
DROP TABLE IF EXISTS `notices`;
CREATE TABLE `notices`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告内容',
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'NOTICE' COMMENT '公告类型：SYSTEM(系统)、FEATURE(新功能)、NOTICE(通知)',
  `priority` int NULL DEFAULT 0 COMMENT '优先级：0-普通，1-重要，2-紧急',
  `is_active` tinyint(1) NULL DEFAULT 1 COMMENT '是否启用',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '0-未删除，1-已删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_type`(`type`) USING BTREE,
  INDEX `idx_priority`(`priority`) USING BTREE,
  INDEX `idx_is_active`(`is_active`) USING BTREE,
  INDEX `idx_create_time`(`create_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '公告表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notices
-- ----------------------------
INSERT INTO `notices` VALUES (4, 'Updated Title', 'Updated Content', 'SYSTEM', 2, 1, '2025-06-25 18:27:00', '2025-06-25 23:42:01', 0);
INSERT INTO `notices` VALUES (5, 'New AI Generation Feature', 'We are excited to announce the new AI question generation feature. It supports multiple question types and difficulty levels.', 'FEATURE', 1, 1, '2025-06-25 18:27:00', '2025-06-25 18:27:00', 1);
INSERT INTO `notices` VALUES (6, 'Exam Guidelines', 'Please ensure stable network connection during online exams. Do not switch windows unnecessarily. Contact support if you encounter technical issues.', 'NOTICE', 0, 1, '2025-06-25 18:27:00', '2025-06-25 18:27:00', 0);
INSERT INTO `notices` VALUES (7, 'Welcome to Online Exam System', 'This system provides complete online examination solutions including question management, paper generation, online testing, and automatic grading.', 'NOTICE', 0, 1, '2025-06-25 18:27:00', '2025-06-25 18:27:00', 0);
INSERT INTO `notices` VALUES (8, 'Test Notice', 'This is a test notice', 'NOTICE', 0, 1, '2025-06-25 23:42:10', '2025-06-25 23:42:10', 0);
INSERT INTO `notices` VALUES (9, 'TestNotice', 'Test', 'NOTICE', 0, 1, '2025-06-25 23:42:18', '2025-06-25 23:42:18', 1);
INSERT INTO `notices` VALUES (10, '古田会议', '服务', 'NOTICE', 0, 1, '2026-10-09 13:31:38', '2026-10-09 14:15:15', 1);
INSERT INTO `notices` VALUES (11, '测试', '发过火他个人风格打不过合法锅巴网', 'FEATURE', 1, 1, '2026-10-09 14:15:43', '2026-10-09 14:15:46', 0);

-- ----------------------------
-- Table structure for paper
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'DRAFT',
  `total_score` decimal(10, 2) NULL DEFAULT 0.00,
  `question_count` int NULL DEFAULT 0,
  `duration` int NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '0-未删除，1-已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of paper
-- ----------------------------
INSERT INTO `paper` VALUES (9, '测试1', '阿达大大大', 'PUBLISHED', 60.00, 12, 60, '2025-07-29 18:31:44', '2025-07-30 11:22:11', 0);
INSERT INTO `paper` VALUES (15, '测试ai组卷', '测试ai组卷 描述！', 'PUBLISHED', 25.00, 4, 60, '2025-07-30 10:52:25', '2025-07-30 11:22:12', 0);
INSERT INTO `paper` VALUES (16, '测试ai组卷', '测试ai组卷 描述！', 'DRAFT', 40.00, 7, 60, '2025-07-30 10:53:22', '2025-07-30 11:22:22', 1);
INSERT INTO `paper` VALUES (17, '手动2', '1111', 'PUBLISHED', 70.00, 12, 60, '2025-07-30 16:32:01', '2025-07-30 16:32:05', 0);
INSERT INTO `paper` VALUES (18, '手动333', '333', 'DRAFT', 51.00, 12, 20, NULL, '2025-07-30 16:43:11', 0);
INSERT INTO `paper` VALUES (19, '手动44', '大概打发', 'PUBLISHED', 60.00, 12, 60, NULL, '2025-07-30 16:44:34', 0);
INSERT INTO `paper` VALUES (20, '手动55', '相对湿度防守打法', 'PUBLISHED', 60.00, 12, 60, '2025-07-30 16:46:37', '2025-07-30 16:46:40', 0);
INSERT INTO `paper` VALUES (21, 'ai组卷222', '阿斯达大厦', 'DRAFT', 79.00, 12, 50, '2025-07-30 16:57:34', '2025-07-30 16:57:34', 0);
INSERT INTO `paper` VALUES (22, 'CES 001', '', 'PUBLISHED', 115.00, 17, 60, '2026-10-05 05:12:58', '2026-10-05 05:13:02', 0);
INSERT INTO `paper` VALUES (23, '测试001', '', 'DRAFT', 100.00, 20, 60, '2026-10-11 22:05:12', '2026-10-11 22:05:12', 0);
INSERT INTO `paper` VALUES (24, '测试002', '测试', 'PUBLISHED', 145.00, 27, 60, '2026-10-12 17:55:58', '2026-10-12 17:56:03', 0);
INSERT INTO `paper` VALUES (25, 'Java基础知识测试卷', '本试卷主要考察Java基础语法、面向对象编程等知识点', 'DRAFT', 30.00, 3, 120, '2026-10-12 19:21:02', '2026-10-12 19:21:02', 0);

-- ----------------------------
-- Table structure for paper_question
-- ----------------------------
DROP TABLE IF EXISTS `paper_question`;
CREATE TABLE `paper_question`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `paper_id` int NOT NULL,
  `question_id` bigint NOT NULL,
  `score` decimal(10, 2) NOT NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '0-未删除，1-已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 246 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of paper_question
-- ----------------------------
INSERT INTO `paper_question` VALUES (97, 9, 66, 5.00, '2025-07-29 18:31:44', '2025-07-29 18:31:44', 0);
INSERT INTO `paper_question` VALUES (98, 9, 68, 5.00, '2025-07-29 18:31:44', '2025-07-29 18:31:44', 0);
INSERT INTO `paper_question` VALUES (99, 9, 69, 5.00, '2025-07-29 18:31:44', '2025-07-29 18:31:44', 0);
INSERT INTO `paper_question` VALUES (100, 9, 71, 5.00, '2025-07-29 18:31:44', '2025-07-29 18:31:44', 0);
INSERT INTO `paper_question` VALUES (101, 9, 72, 5.00, '2025-07-29 18:31:44', '2025-07-29 18:31:44', 0);
INSERT INTO `paper_question` VALUES (102, 9, 73, 5.00, '2025-07-29 18:31:44', '2025-07-29 18:31:44', 0);
INSERT INTO `paper_question` VALUES (103, 9, 74, 5.00, '2025-07-29 18:31:44', '2025-07-29 18:31:44', 0);
INSERT INTO `paper_question` VALUES (104, 9, 75, 5.00, '2025-07-29 18:31:44', '2025-07-29 18:31:44', 0);
INSERT INTO `paper_question` VALUES (105, 9, 76, 5.00, '2025-07-29 18:31:44', '2025-07-29 18:31:44', 0);
INSERT INTO `paper_question` VALUES (106, 9, 77, 5.00, '2025-07-29 18:31:44', '2025-07-29 18:31:44', 0);
INSERT INTO `paper_question` VALUES (107, 9, 78, 5.00, '2025-07-29 18:31:44', '2025-07-29 18:31:44', 0);
INSERT INTO `paper_question` VALUES (108, 9, 79, 5.00, '2025-07-29 18:31:44', '2025-07-29 18:31:44', 0);
INSERT INTO `paper_question` VALUES (109, 15, 75, 5.00, '2025-07-30 10:52:27', '2025-07-30 11:15:17', 1);
INSERT INTO `paper_question` VALUES (110, 15, 76, 5.00, '2025-07-30 10:52:27', '2025-07-30 11:15:17', 1);
INSERT INTO `paper_question` VALUES (111, 15, 77, 5.00, '2025-07-30 10:52:27', '2025-07-30 11:15:17', 1);
INSERT INTO `paper_question` VALUES (112, 15, 78, 5.00, '2025-07-30 10:52:27', '2025-07-30 11:15:17', 1);
INSERT INTO `paper_question` VALUES (113, 15, 79, 5.00, '2025-07-30 10:52:27', '2025-07-30 11:15:17', 1);
INSERT INTO `paper_question` VALUES (114, 15, 68, 5.00, '2025-07-30 10:52:29', '2025-07-30 11:15:17', 1);
INSERT INTO `paper_question` VALUES (115, 15, 69, 10.00, '2025-07-30 10:52:31', '2025-07-30 11:15:17', 1);
INSERT INTO `paper_question` VALUES (116, 16, 75, 5.00, '2025-07-30 10:53:23', '2025-07-30 11:22:22', 1);
INSERT INTO `paper_question` VALUES (117, 16, 76, 5.00, '2025-07-30 10:53:23', '2025-07-30 11:22:22', 1);
INSERT INTO `paper_question` VALUES (118, 16, 77, 5.00, '2025-07-30 10:53:23', '2025-07-30 11:22:22', 1);
INSERT INTO `paper_question` VALUES (119, 16, 78, 5.00, '2025-07-30 10:53:23', '2025-07-30 11:22:22', 1);
INSERT INTO `paper_question` VALUES (120, 16, 79, 5.00, '2025-07-30 10:53:23', '2025-07-30 11:22:22', 1);
INSERT INTO `paper_question` VALUES (121, 16, 68, 5.00, '2025-07-30 10:53:23', '2025-07-30 11:22:22', 1);
INSERT INTO `paper_question` VALUES (122, 16, 69, 10.00, '2025-07-30 10:53:23', '2025-07-30 11:22:22', 1);
INSERT INTO `paper_question` VALUES (123, 15, 69, 10.00, '2025-07-30 11:15:17', '2025-07-30 11:15:17', 0);
INSERT INTO `paper_question` VALUES (124, 15, 72, 5.00, '2025-07-30 11:15:17', '2025-07-30 11:15:17', 0);
INSERT INTO `paper_question` VALUES (125, 15, 74, 5.00, '2025-07-30 11:15:17', '2025-07-30 11:15:17', 0);
INSERT INTO `paper_question` VALUES (126, 15, 79, 5.00, '2025-07-30 11:15:17', '2025-07-30 11:15:17', 0);
INSERT INTO `paper_question` VALUES (127, 17, 66, 5.00, NULL, NULL, NULL);
INSERT INTO `paper_question` VALUES (128, 17, 68, 5.00, NULL, NULL, NULL);
INSERT INTO `paper_question` VALUES (129, 17, 69, 5.00, NULL, NULL, NULL);
INSERT INTO `paper_question` VALUES (130, 17, 71, 5.00, NULL, NULL, NULL);
INSERT INTO `paper_question` VALUES (131, 17, 72, 5.00, NULL, NULL, NULL);
INSERT INTO `paper_question` VALUES (132, 17, 73, 9.00, NULL, NULL, NULL);
INSERT INTO `paper_question` VALUES (133, 17, 74, 9.00, NULL, NULL, NULL);
INSERT INTO `paper_question` VALUES (134, 17, 75, 7.00, NULL, NULL, NULL);
INSERT INTO `paper_question` VALUES (135, 17, 76, 5.00, NULL, NULL, NULL);
INSERT INTO `paper_question` VALUES (136, 17, 77, 5.00, NULL, NULL, NULL);
INSERT INTO `paper_question` VALUES (137, 17, 78, 5.00, NULL, NULL, NULL);
INSERT INTO `paper_question` VALUES (138, 17, 79, 5.00, NULL, NULL, NULL);
INSERT INTO `paper_question` VALUES (139, 18, 66, 5.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (140, 18, 68, 5.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (141, 18, 69, 5.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (142, 18, 71, 5.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (143, 18, 72, 5.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (144, 18, 73, 5.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (145, 18, 74, 5.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (146, 18, 75, 5.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (147, 18, 76, 1.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (148, 18, 77, 2.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (149, 18, 78, 3.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (150, 18, 79, 5.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (151, 19, 66, 5.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (152, 19, 68, 5.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (153, 19, 69, 5.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (154, 19, 71, 5.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (155, 19, 72, 5.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (156, 19, 73, 5.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (157, 19, 74, 5.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (158, 19, 75, 5.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (159, 19, 76, 5.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (160, 19, 77, 5.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (161, 19, 78, 5.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (162, 19, 79, 5.00, NULL, NULL, 0);
INSERT INTO `paper_question` VALUES (163, 20, 66, 5.00, '2025-07-30 16:46:37', NULL, 0);
INSERT INTO `paper_question` VALUES (164, 20, 68, 5.00, '2025-07-30 16:46:37', NULL, 0);
INSERT INTO `paper_question` VALUES (165, 20, 69, 5.00, '2025-07-30 16:46:37', NULL, 0);
INSERT INTO `paper_question` VALUES (166, 20, 71, 5.00, '2025-07-30 16:46:37', NULL, 0);
INSERT INTO `paper_question` VALUES (167, 20, 72, 5.00, '2025-07-30 16:46:37', NULL, 0);
INSERT INTO `paper_question` VALUES (168, 20, 73, 5.00, '2025-07-30 16:46:37', NULL, 0);
INSERT INTO `paper_question` VALUES (169, 20, 74, 5.00, '2025-07-30 16:46:37', NULL, 0);
INSERT INTO `paper_question` VALUES (170, 20, 75, 5.00, '2025-07-30 16:46:37', NULL, 0);
INSERT INTO `paper_question` VALUES (171, 20, 76, 5.00, '2025-07-30 16:46:37', NULL, 0);
INSERT INTO `paper_question` VALUES (172, 20, 77, 5.00, '2025-07-30 16:46:37', NULL, 0);
INSERT INTO `paper_question` VALUES (173, 20, 78, 5.00, '2025-07-30 16:46:37', NULL, 0);
INSERT INTO `paper_question` VALUES (174, 20, 79, 5.00, '2025-07-30 16:46:37', NULL, 0);
INSERT INTO `paper_question` VALUES (175, 21, 71, 5.00, '2025-07-30 16:57:34', NULL, 0);
INSERT INTO `paper_question` VALUES (176, 21, 72, 5.00, '2025-07-30 16:57:34', NULL, 0);
INSERT INTO `paper_question` VALUES (177, 21, 75, 5.00, '2025-07-30 16:57:34', NULL, 0);
INSERT INTO `paper_question` VALUES (178, 21, 76, 5.00, '2025-07-30 16:57:34', NULL, 0);
INSERT INTO `paper_question` VALUES (179, 21, 77, 5.00, '2025-07-30 16:57:34', NULL, 0);
INSERT INTO `paper_question` VALUES (180, 21, 78, 5.00, '2025-07-30 16:57:34', NULL, 0);
INSERT INTO `paper_question` VALUES (181, 21, 79, 5.00, '2025-07-30 16:57:34', NULL, 0);
INSERT INTO `paper_question` VALUES (182, 21, 66, 8.00, '2025-07-30 16:57:34', NULL, 0);
INSERT INTO `paper_question` VALUES (183, 21, 68, 8.00, '2025-07-30 16:57:34', NULL, 0);
INSERT INTO `paper_question` VALUES (184, 21, 74, 8.00, '2025-07-30 16:57:34', NULL, 0);
INSERT INTO `paper_question` VALUES (185, 21, 69, 10.00, '2025-07-30 16:57:34', NULL, 0);
INSERT INTO `paper_question` VALUES (186, 21, 73, 10.00, '2025-07-30 16:57:34', NULL, 0);
INSERT INTO `paper_question` VALUES (187, 22, 201, 5.00, '2026-10-05 05:12:58', '2026-10-05 05:12:58', 0);
INSERT INTO `paper_question` VALUES (188, 22, 251, 5.00, '2026-10-05 05:12:58', '2026-10-05 05:12:58', 0);
INSERT INTO `paper_question` VALUES (189, 22, 79, 5.00, '2026-10-05 05:12:58', '2026-10-05 05:12:58', 0);
INSERT INTO `paper_question` VALUES (190, 22, 257, 5.00, '2026-10-05 05:12:58', '2026-10-05 05:12:58', 0);
INSERT INTO `paper_question` VALUES (191, 22, 234, 5.00, '2026-10-05 05:12:58', '2026-10-05 05:12:58', 0);
INSERT INTO `paper_question` VALUES (192, 22, 213, 5.00, '2026-10-05 05:12:58', '2026-10-05 05:12:58', 0);
INSERT INTO `paper_question` VALUES (193, 22, 377, 5.00, '2026-10-05 05:12:58', '2026-10-05 05:12:58', 0);
INSERT INTO `paper_question` VALUES (194, 22, 422, 5.00, '2026-10-05 05:12:58', '2026-10-05 05:12:58', 0);
INSERT INTO `paper_question` VALUES (195, 22, 233, 5.00, '2026-10-05 05:12:58', '2026-10-05 05:12:58', 0);
INSERT INTO `paper_question` VALUES (196, 22, 390, 5.00, '2026-10-05 05:12:58', '2026-10-05 05:12:58', 0);
INSERT INTO `paper_question` VALUES (197, 22, 148, 2.00, '2026-10-05 05:12:58', '2026-10-05 05:12:58', 0);
INSERT INTO `paper_question` VALUES (198, 22, 143, 2.00, '2026-10-05 05:12:58', '2026-10-05 05:12:58', 0);
INSERT INTO `paper_question` VALUES (199, 22, 437, 2.00, '2026-10-05 05:12:58', '2026-10-05 05:12:58', 0);
INSERT INTO `paper_question` VALUES (200, 22, 145, 2.00, '2026-10-05 05:12:58', '2026-10-05 05:12:58', 0);
INSERT INTO `paper_question` VALUES (201, 22, 140, 2.00, '2026-10-05 05:12:58', '2026-10-05 05:12:58', 0);
INSERT INTO `paper_question` VALUES (202, 22, 463, 10.00, '2026-10-05 05:12:58', '2026-10-05 05:12:58', 0);
INSERT INTO `paper_question` VALUES (203, 22, 475, 10.00, '2026-10-05 05:12:58', '2026-10-05 05:12:58', 0);
INSERT INTO `paper_question` VALUES (204, 23, 386, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (205, 23, 387, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (206, 23, 418, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (207, 23, 419, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (208, 23, 420, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (209, 23, 421, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (210, 23, 422, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (211, 23, 423, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (212, 23, 424, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (213, 23, 425, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (214, 23, 426, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (215, 23, 427, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (216, 23, 430, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (217, 23, 431, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (218, 23, 432, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (219, 23, 433, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (220, 23, 434, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (221, 23, 439, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (222, 23, 440, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (223, 23, 441, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (224, 23, 442, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (225, 23, 519, 5.00, '2026-10-11 22:05:12', '2026-10-11 22:06:22', 1);
INSERT INTO `paper_question` VALUES (226, 23, 100, 5.00, '2026-10-11 22:06:22', '2026-10-11 22:06:22', 0);
INSERT INTO `paper_question` VALUES (227, 23, 101, 5.00, '2026-10-11 22:06:22', '2026-10-11 22:06:22', 0);
INSERT INTO `paper_question` VALUES (228, 23, 102, 5.00, '2026-10-11 22:06:22', '2026-10-11 22:06:22', 0);
INSERT INTO `paper_question` VALUES (229, 23, 103, 5.00, '2026-10-11 22:06:22', '2026-10-11 22:06:22', 0);
INSERT INTO `paper_question` VALUES (230, 23, 104, 5.00, '2026-10-11 22:06:22', '2026-10-11 22:06:22', 0);
INSERT INTO `paper_question` VALUES (231, 23, 117, 5.00, '2026-10-11 22:06:22', '2026-10-11 22:06:22', 0);
INSERT INTO `paper_question` VALUES (232, 23, 118, 5.00, '2026-10-11 22:06:22', '2026-10-11 22:06:22', 0);
INSERT INTO `paper_question` VALUES (233, 23, 222, 5.00, '2026-10-11 22:06:22', '2026-10-11 22:06:22', 0);
INSERT INTO `paper_question` VALUES (234, 23, 223, 5.00, '2026-10-11 22:06:22', '2026-10-11 22:06:22', 0);
INSERT INTO `paper_question` VALUES (235, 23, 225, 5.00, '2026-10-11 22:06:22', '2026-10-11 22:06:22', 0);
INSERT INTO `paper_question` VALUES (236, 23, 226, 5.00, '2026-10-11 22:06:22', '2026-10-11 22:06:22', 0);
INSERT INTO `paper_question` VALUES (237, 23, 227, 5.00, '2026-10-11 22:06:22', '2026-10-11 22:06:22', 0);
INSERT INTO `paper_question` VALUES (238, 23, 228, 5.00, '2026-10-11 22:06:22', '2026-10-11 22:06:22', 0);
INSERT INTO `paper_question` VALUES (239, 23, 229, 5.00, '2026-10-11 22:06:22', '2026-10-11 22:06:22', 0);
INSERT INTO `paper_question` VALUES (240, 23, 287, 5.00, '2026-10-11 22:06:22', '2026-10-11 22:06:22', 0);
INSERT INTO `paper_question` VALUES (241, 23, 288, 5.00, '2026-10-11 22:06:22', '2026-10-11 22:06:22', 0);
INSERT INTO `paper_question` VALUES (242, 23, 289, 5.00, '2026-10-11 22:06:22', '2026-10-11 22:06:22', 0);
INSERT INTO `paper_question` VALUES (243, 23, 296, 5.00, '2026-10-11 22:06:22', '2026-10-11 22:06:22', 0);
INSERT INTO `paper_question` VALUES (244, 23, 297, 5.00, '2026-10-11 22:06:22', '2026-10-11 22:06:22', 0);
INSERT INTO `paper_question` VALUES (245, 23, 331, 5.00, '2026-10-11 22:06:22', '2026-10-11 22:06:22', 0);
INSERT INTO `paper_question` VALUES (246, 24, 217, 5.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (247, 24, 247, 5.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (248, 24, 246, 5.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (249, 24, 235, 5.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (250, 24, 240, 5.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (251, 24, 252, 5.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (252, 24, 559, 5.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (253, 24, 535, 5.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (254, 24, 76, 5.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (255, 24, 524, 5.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (256, 24, 211, 5.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (257, 24, 196, 5.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (258, 24, 244, 5.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (259, 24, 199, 5.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (260, 24, 215, 5.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (261, 24, 249, 5.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (262, 24, 523, 5.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (263, 24, 243, 5.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (264, 24, 380, 5.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (265, 24, 250, 5.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (266, 24, 146, 2.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (267, 24, 142, 2.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (268, 24, 437, 2.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (269, 24, 140, 2.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (270, 24, 447, 2.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (271, 24, 471, 10.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (272, 24, 463, 10.00, '2026-10-12 17:55:58', '2026-10-12 17:55:58', 0);
INSERT INTO `paper_question` VALUES (273, 25, 1, 5.00, '2026-10-12 19:21:02', '2026-10-12 19:21:02', 0);
INSERT INTO `paper_question` VALUES (274, 25, 2, 10.00, '2026-10-12 19:21:02', '2026-10-12 19:21:02', 0);
INSERT INTO `paper_question` VALUES (275, 25, 3, 15.00, '2026-10-12 19:21:02', '2026-10-12 19:21:02', 0);

-- ----------------------------
-- Table structure for question_answers
-- ----------------------------
DROP TABLE IF EXISTS `question_answers`;
CREATE TABLE `question_answers`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_id` bigint NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '0-未删除，1-已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 298 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of question_answers
-- ----------------------------
INSERT INTO `question_answers` VALUES (59, 65, 'A', NULL, '2025-07-25 17:15:17', '2025-07-27 12:38:02', 1);
INSERT INTO `question_answers` VALUES (60, 66, 'TRUE', NULL, '2025-07-25 17:20:05', '2025-07-25 17:27:21', 0);
INSERT INTO `question_answers` VALUES (61, 67, 'B,C', NULL, '2025-07-27 11:16:13', '2025-07-27 11:29:36', 1);
INSERT INTO `question_answers` VALUES (62, 68, 'TRUE', NULL, '2025-07-27 11:17:05', '2025-07-27 11:17:05', 0);
INSERT INTO `question_answers` VALUES (63, 69, '简答题答案！', NULL, '2025-07-27 11:17:31', '2025-07-27 11:17:31', 0);
INSERT INTO `question_answers` VALUES (64, 67, 'A,B,D', NULL, '2025-07-27 11:29:36', '2025-07-27 12:37:23', 1);
INSERT INTO `question_answers` VALUES (65, 70, 'A,D', NULL, '2025-07-27 12:39:06', '2025-07-27 12:40:29', 1);
INSERT INTO `question_answers` VALUES (66, 71, 'B,C', NULL, '2025-07-27 17:23:32', '2025-07-27 17:23:32', 0);
INSERT INTO `question_answers` VALUES (67, 72, 'A,C', NULL, '2025-07-27 18:28:56', '2025-07-27 18:28:56', 0);
INSERT INTO `question_answers` VALUES (68, 73, '啦啦啦', NULL, '2025-07-28 17:28:42', '2025-07-28 17:28:42', 0);
INSERT INTO `question_answers` VALUES (69, 74, 'true', NULL, '2025-07-28 17:28:42', '2025-07-28 17:28:42', 0);
INSERT INTO `question_answers` VALUES (70, 75, 'A,B,C', NULL, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_answers` VALUES (71, 76, 'A,B,D', NULL, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_answers` VALUES (72, 77, 'A,B,C,D', NULL, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_answers` VALUES (73, 78, 'A,B,C', NULL, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_answers` VALUES (74, 79, 'A,B,C,D', NULL, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_answers` VALUES (75, 180, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (76, 181, 'C', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (77, 182, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (78, 183, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (80, 185, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (81, 186, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (82, 187, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (83, 188, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (84, 189, 'C', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (85, 190, 'C', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (86, 191, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (87, 192, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (88, 193, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (89, 194, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (90, 195, 'C', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (91, 196, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (92, 197, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (93, 198, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (94, 199, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (95, 200, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (96, 201, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (97, 202, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (98, 203, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (99, 204, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (100, 205, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (101, 206, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (102, 207, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (103, 208, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (104, 209, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (105, 210, 'D', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (106, 211, 'D', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (107, 212, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (108, 213, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (109, 214, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (110, 215, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (111, 216, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (112, 217, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (113, 218, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (114, 219, 'D', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (115, 220, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (116, 221, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (117, 222, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (118, 223, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (119, 224, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (120, 225, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (121, 226, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (122, 227, 'D', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (123, 228, 'D', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (124, 229, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (125, 230, 'D', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (126, 231, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (127, 232, 'D', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (128, 233, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (129, 234, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (130, 235, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (131, 236, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (132, 237, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (133, 238, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (134, 239, 'D', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (135, 240, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (136, 241, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (137, 242, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (138, 243, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (139, 244, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (140, 245, 'D', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (141, 246, 'C', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (142, 247, 'C', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (143, 248, 'B', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (144, 249, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (145, 250, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (146, 251, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (147, 252, 'D', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (148, 253, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (149, 254, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (150, 255, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (151, 256, 'D', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (152, 257, 'D', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (153, 258, 'A', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (154, 259, 'D', NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_answers` VALUES (155, 377, 'A', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (156, 378, 'B', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (157, 379, 'B', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (158, 380, 'D', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (159, 381, 'A', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (160, 382, 'A', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (161, 383, 'A', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (162, 384, 'D', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (163, 385, 'C', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (164, 386, 'B', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (165, 387, 'A', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (166, 388, 'A', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (167, 389, 'D', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (168, 390, 'D', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (169, 391, 'A', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (170, 392, 'A', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (171, 393, 'B', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (172, 394, 'B', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (173, 395, 'C', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (174, 396, 'A', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (175, 397, 'B', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (176, 398, 'A', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (177, 399, 'A', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (178, 400, 'A', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (179, 401, 'A', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (180, 402, 'A', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (181, 403, 'A', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (182, 404, 'A', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (183, 405, 'D', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (184, 406, 'A', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (185, 407, 'A', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (186, 408, 'A', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (187, 409, 'A', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (188, 410, 'D', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (189, 411, 'D', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (190, 412, 'D', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (191, 413, 'A', NULL, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_answers` VALUES (192, 414, 'D', NULL, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_answers` VALUES (193, 415, 'D', NULL, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_answers` VALUES (194, 416, 'C', NULL, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_answers` VALUES (195, 417, 'C', NULL, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_answers` VALUES (196, 418, 'D', NULL, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_answers` VALUES (197, 419, 'A', NULL, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_answers` VALUES (198, 420, 'A', NULL, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_answers` VALUES (199, 421, 'A', NULL, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_answers` VALUES (200, 422, 'A', NULL, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_answers` VALUES (201, 423, 'D', NULL, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_answers` VALUES (202, 424, 'D', NULL, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_answers` VALUES (203, 425, 'A', NULL, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_answers` VALUES (204, 426, 'B', NULL, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_answers` VALUES (205, 427, 'C', NULL, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_answers` VALUES (206, 428, 'A', NULL, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_answers` VALUES (207, 429, 'A', NULL, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_answers` VALUES (208, 430, 'TRUE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (209, 431, 'TRUE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (210, 432, 'FALSE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (211, 433, 'FALSE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (212, 434, 'FALSE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (213, 435, 'TRUE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (214, 436, 'FALSE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (215, 437, 'TRUE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (216, 438, 'TRUE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (217, 439, 'TRUE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (218, 440, 'FALSE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (219, 441, 'FALSE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (220, 442, 'TRUE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (221, 443, 'TRUE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (222, 444, 'FALSE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (223, 445, 'TRUE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (224, 446, 'TRUE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (225, 447, 'FALSE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (226, 448, 'TRUE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (227, 449, 'FALSE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (228, 450, 'TRUE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (229, 451, 'FALSE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (230, 452, 'TRUE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (231, 453, 'FALSE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (232, 454, 'FALSE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (233, 455, 'TRUE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (234, 456, 'TRUE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (235, 457, 'FALSE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (236, 458, 'FALSE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (237, 459, 'FALSE', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (238, 460, '封装、继承、多态。封装隐藏实现细节，继承实现代码复用，多态是父类引用指向子类对象。', NULL, '2026-10-10 17:39:09', '2026-10-10 17:39:09', 0);
INSERT INTO `question_answers` VALUES (239, 461, 'IoC控制反转负责对象的创建和依赖注入，实现解耦；AOP面向切面编程处理日志、事务、权限等横切逻辑，与业务代码解耦。', NULL, '2026-10-10 17:39:10', '2026-10-10 17:39:10', 0);
INSERT INTO `question_answers` VALUES (240, 462, '原子性(Atomicity)、一致性(Consistency)、隔离性(Isolation)、持久性(Durability)。', NULL, '2026-10-10 17:39:10', '2026-10-10 17:39:10', 0);
INSERT INTO `question_answers` VALUES (241, 463, '进程是操作系统资源分配的基本单位，线程是CPU调度的基本单位；一个进程可以包含多个线程，线程间共享进程资源，切换开销比进程小。', NULL, '2026-10-10 17:39:10', '2026-10-10 17:39:10', 0);
INSERT INTO `question_answers` VALUES (242, 464, 'HTTP是明文传输，默认端口80；HTTPS在HTTP基础上增加SSL/TLS加密，默认端口443，通过CA证书验证身份，更安全。', NULL, '2026-10-10 17:39:10', '2026-10-10 17:39:10', 0);
INSERT INTO `question_answers` VALUES (243, 465, 'Maven有三套生命周期：clean（清理）、default（构建）、site（生成站点）。每套生命周期包含多个按顺序执行的阶段，如clean、compile、test、package、install、deploy等。', NULL, '2026-10-10 17:39:10', '2026-10-10 17:39:10', 0);
INSERT INTO `question_answers` VALUES (244, 466, 'git fetch只从远程拉取更新到本地仓库，不修改工作区；git pull = git fetch + git merge，会拉取并合并到当前分支。', NULL, '2026-10-10 17:39:10', '2026-10-10 17:39:10', 0);
INSERT INTO `question_answers` VALUES (245, 467, '基于@EnableAutoConfiguration，通过AutoConfigurationImportSelector读取META-INF/spring.factories或AutoConfiguration.imports中的自动配置类，配合@Conditional系列注解按需装配。', NULL, '2026-10-10 17:39:10', '2026-10-10 17:39:10', 0);
INSERT INTO `question_answers` VALUES (246, 468, '优点：加快查询速度，保证唯一性，加速排序分组；缺点：占用额外存储空间，降低增删改性能，索引维护成本高。', NULL, '2026-10-10 17:39:10', '2026-10-10 17:39:10', 0);
INSERT INTO `question_answers` VALUES (247, 469, 'JDK8 HashMap底层是数组+链表+红黑树。通过hash算法定位桶位置，hash冲突时用链表存储，当链表长度≥8且数组长度≥64时转为红黑树；负载因子0.75，达到阈值时扩容为原来的2倍。', NULL, '2026-10-10 17:39:10', '2026-10-10 17:39:10', 0);
INSERT INTO `question_answers` VALUES (248, 470, 'Vue3使用Proxy实现响应式，可深度监听对象和数组的变化；Vue2使用Object.defineProperty，无法监听新增属性和数组索引变化。', NULL, '2026-10-10 17:39:10', '2026-10-10 17:39:10', 0);
INSERT INTO `question_answers` VALUES (249, 471, '第一次：客户端发送SYN；第二次：服务端回复SYN+ACK；第三次：客户端回复ACK，连接建立。', NULL, '2026-10-10 17:39:10', '2026-10-10 17:39:10', 0);
INSERT INTO `question_answers` VALUES (250, 472, 'synchronized是JVM层面实现，自动加锁释放，非公平，不可中断；Lock是JUC层面基于AQS实现，可手动加锁释放，支持公平/非公平、可中断、可超时、多条件等待。', NULL, '2026-10-10 17:39:10', '2026-10-10 17:39:10', 0);
INSERT INTO `question_answers` VALUES (251, 473, '实例化→属性注入→BeanNameAware等接口回调→BeanPostProcessor前置处理→@PostConstruct初始化方法→BeanPostProcessor后置处理（生成AOP代理）→使用→@PreDestroy销毁。', NULL, '2026-10-10 17:39:10', '2026-10-10 17:39:10', 0);
INSERT INTO `question_answers` VALUES (252, 474, 'MVCC是多版本并发控制，通过隐藏列(trx_id、roll_pointer)+undo log版本链+ReadView实现读写不阻塞。RC隔离级别每次SELECT生成新ReadView，RR隔离级别只在第一次SELECT生成ReadView。', NULL, '2026-10-10 17:39:10', '2026-10-10 17:39:10', 0);
INSERT INTO `question_answers` VALUES (253, 475, '优点：前后端职责清晰，独立开发部署，前端技术栈灵活；缺点：跨域问题，SEO不友好，部署复杂度增加，需要额外维护接口文档。', NULL, '2026-10-10 17:39:10', '2026-10-10 17:39:10', 0);
INSERT INTO `question_answers` VALUES (254, 476, '基于分代收集，通过可达性分析从GC Roots标记存活对象，回收不可达对象。常用算法：标记-清除、复制、标记-整理。新生代用复制算法，老年代用标记-清除或标记-整理。', NULL, '2026-10-10 17:39:10', '2026-10-10 17:39:10', 0);
INSERT INTO `question_answers` VALUES (255, 477, '用HTTP动词表达操作（GET/POST/PUT/DELETE），用URL表示资源，接口无状态，使用统一接口，支持资源的多种表示（JSON/XML）。', NULL, '2026-10-10 17:39:10', '2026-10-10 17:39:10', 0);
INSERT INTO `question_answers` VALUES (256, 478, '优点：服务独立部署、技术栈异构、可独立扩展、故障隔离；缺点：运维复杂、分布式事务难、服务间调用增加网络开销、调试排查难度大。', NULL, '2026-10-10 17:39:10', '2026-10-10 17:39:10', 0);
INSERT INTO `question_answers` VALUES (257, 479, 'Maven依赖调解原则：最短路径优先、先声明优先。可用<exclusions>排除传递依赖，用<dependencyManagement>统一版本管理，用mvn dependency:tree分析依赖树。', NULL, '2026-10-10 17:39:10', '2026-10-10 17:39:10', 0);
INSERT INTO `question_answers` VALUES (278, 500, 'TRUE', NULL, '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `question_answers` VALUES (279, 501, 'TRUE', NULL, '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `question_answers` VALUES (280, 502, 'TRUE', NULL, '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `question_answers` VALUES (281, 503, 'FALSE', NULL, '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `question_answers` VALUES (282, 504, 'TRUE', NULL, '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `question_answers` VALUES (283, 505, 'TRUE', NULL, '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `question_answers` VALUES (284, 506, 'TRUE', NULL, '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `question_answers` VALUES (285, 507, 'FALSE', NULL, '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `question_answers` VALUES (286, 508, 'TRUE', NULL, '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `question_answers` VALUES (287, 509, 'TRUE', NULL, '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `question_answers` VALUES (288, 510, 'TRUE', NULL, '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `question_answers` VALUES (289, 511, 'TRUE', NULL, '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `question_answers` VALUES (290, 512, 'FALSE', NULL, '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `question_answers` VALUES (291, 513, 'TRUE', NULL, '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `question_answers` VALUES (292, 514, 'FALSE', NULL, '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `question_answers` VALUES (293, 515, 'TRUE', NULL, '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `question_answers` VALUES (294, 516, 'FALSE', NULL, '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `question_answers` VALUES (295, 517, 'TRUE', NULL, '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `question_answers` VALUES (296, 518, 'TRUE', NULL, '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `question_answers` VALUES (297, 519, 'FALSE', NULL, '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `question_answers` VALUES (298, 520, 'A,B', NULL, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_answers` VALUES (299, 521, 'FALSE', NULL, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_answers` VALUES (300, 522, '首先对该流进行排序，使得相同的元素保持一致的位置，然后使用一个内部比较器将它们删除。', NULL, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_answers` VALUES (301, 523, 'A', NULL, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_answers` VALUES (302, 524, 'A,C', NULL, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_answers` VALUES (303, 525, 'filter()方法需要接收一个Predicate作为参数，该参数定义了过滤条件。流中的每一个元素都会根据这个条件来决定是否保留。', NULL, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_answers` VALUES (304, 526, 'A', NULL, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_answers` VALUES (305, 527, 'A,B', NULL, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_answers` VALUES (306, 528, 'flatMap()方法接受一个函数作为参数，此参数会作用于流中的每一个元素，返回一个Stream流，然后将这些流聚合为一个新的流。', NULL, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_answers` VALUES (307, 529, 'count()方法返回流中的元素总数，可用于统计流中的元素个数。', NULL, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_answers` VALUES (308, 530, 'B', NULL, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_answers` VALUES (309, 531, 'FALSE', NULL, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_answers` VALUES (310, 532, 'unordered()方法不会改变流的顺序，而是告知前面的操作，该流是不保证顺序的。因此，后续的操作可以执行一些更高效的优化。', NULL, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_answers` VALUES (311, 533, 'FALSE', NULL, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_answers` VALUES (312, 534, 'lambda表达式或方法引用。', NULL, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_answers` VALUES (313, 535, 'B', NULL, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_answers` VALUES (314, 536, 'A,B', NULL, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_answers` VALUES (315, 537, 'parallelStream()方法创建了并行流，它可以更有效地利用多核心处理器执行耗时操作。', NULL, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_answers` VALUES (316, 538, 'TRUE', NULL, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_answers` VALUES (317, 539, 'sorted()方法默认使用流在当前内容上的自然顺序排序，如果需要自定义排序规则，可以传入Comparator。', NULL, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_answers` VALUES (318, 540, 'A', NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_answers` VALUES (319, 541, 'FALSE', NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_answers` VALUES (320, 542, 'A', NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_answers` VALUES (321, 543, 'A,B', NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_answers` VALUES (322, 544, 'reduce() 方法用于对流中的元素应用一个reduce函数（通常是累积操作），最终返回一个结果。', NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_answers` VALUES (323, 545, 'FALSE', NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_answers` VALUES (324, 546, 'A', NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_answers` VALUES (325, 547, 'C', NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_answers` VALUES (326, 548, 'allMatch() 方法检查流中是否有所有元素都满足给定的谓词。如果所有元素都满足谓词，则返回true；否则返回 false。', NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_answers` VALUES (327, 549, 'TRUE', NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_answers` VALUES (328, 550, 'A', NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_answers` VALUES (329, 551, 'A', NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_answers` VALUES (330, 552, 'A', NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_answers` VALUES (331, 553, 'B', NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_answers` VALUES (332, 554, 'peek() 方法用于在流水线中插入一个操作以查看流中的中间结果，这个操作不会改变最终结果，但会输出中间结果。', NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_answers` VALUES (333, 555, 'anyMatch() 方法检查流中是否有任何一个元素满足给定的谓词。如果流中存在至少一个元素满足谓词，则返回 true；否则返回 false。', NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_answers` VALUES (334, 556, 'FALSE', NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_answers` VALUES (335, 557, 'C', NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_answers` VALUES (336, 558, 'C,D', NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_answers` VALUES (337, 559, 'A', NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_answers` VALUES (338, 560, 'A', NULL, '2026-10-12 18:03:16', '2026-10-12 18:03:16', 0);
INSERT INTO `question_answers` VALUES (339, 561, 'A,B', NULL, '2026-10-12 18:03:16', '2026-10-12 18:03:16', 0);
INSERT INTO `question_answers` VALUES (340, 562, 'A', NULL, '2026-10-12 18:03:16', '2026-10-12 18:03:16', 0);
INSERT INTO `question_answers` VALUES (341, 563, 'A', NULL, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_answers` VALUES (342, 564, 'A', NULL, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_answers` VALUES (343, 565, 'A,B', NULL, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_answers` VALUES (344, 566, 'A', NULL, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_answers` VALUES (345, 567, 'A', NULL, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_answers` VALUES (346, 568, 'A', NULL, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_answers` VALUES (347, 569, 'A', NULL, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_answers` VALUES (348, 570, 'A', NULL, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_answers` VALUES (349, 571, 'A', NULL, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_answers` VALUES (350, 572, 'A', NULL, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_answers` VALUES (351, 573, 'A', NULL, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_answers` VALUES (352, 574, 'A', NULL, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_answers` VALUES (353, 575, 'A', NULL, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_answers` VALUES (354, 576, 'A', NULL, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_answers` VALUES (355, 577, 'A', NULL, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_answers` VALUES (356, 578, 'A', NULL, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_answers` VALUES (357, 579, 'A', NULL, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);

-- ----------------------------
-- Table structure for question_choices
-- ----------------------------
DROP TABLE IF EXISTS `question_choices`;
CREATE TABLE `question_choices`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question_id` bigint NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_correct` tinyint(1) NULL DEFAULT 0,
  `sort` int NULL DEFAULT 0,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '0-未删除，1-已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 637 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of question_choices
-- ----------------------------
INSERT INTO `question_choices` VALUES (62, 65, '测试1', 0, 0, '2025-07-25 17:14:42', '2025-07-27 12:38:02', 1);
INSERT INTO `question_choices` VALUES (63, 65, '测试2', 1, 0, '2025-07-25 17:14:52', '2025-07-27 12:38:02', 1);
INSERT INTO `question_choices` VALUES (64, 65, '判断1', 0, 0, '2025-07-25 17:22:08', '2025-07-27 12:38:02', 1);
INSERT INTO `question_choices` VALUES (65, 65, '判断2', 0, 0, '2025-07-25 17:22:17', '2025-07-27 12:38:02', 1);
INSERT INTO `question_choices` VALUES (66, 67, '111', 0, 0, '2025-07-27 11:16:13', '2025-07-27 11:29:36', 1);
INSERT INTO `question_choices` VALUES (67, 67, '222', 1, 0, '2025-07-27 11:16:13', '2025-07-27 11:29:36', 1);
INSERT INTO `question_choices` VALUES (68, 67, '333', 1, 0, '2025-07-27 11:16:13', '2025-07-27 11:29:36', 1);
INSERT INTO `question_choices` VALUES (69, 67, '444', 0, 0, '2025-07-27 11:16:13', '2025-07-27 11:29:36', 1);
INSERT INTO `question_choices` VALUES (70, 67, '111', 1, 0, '2025-07-27 11:16:13', '2025-07-27 12:37:23', 1);
INSERT INTO `question_choices` VALUES (71, 67, '222', 1, 0, '2025-07-27 11:16:13', '2025-07-27 12:37:23', 1);
INSERT INTO `question_choices` VALUES (72, 67, '333', 0, 0, '2025-07-27 11:16:13', '2025-07-27 12:37:23', 1);
INSERT INTO `question_choices` VALUES (73, 67, '444', 1, 0, '2025-07-27 11:16:13', '2025-07-27 12:37:23', 1);
INSERT INTO `question_choices` VALUES (74, 70, '999', 1, 0, '2025-07-27 12:39:06', '2025-07-27 12:40:29', 1);
INSERT INTO `question_choices` VALUES (75, 70, '888', 0, 0, '2025-07-27 12:39:06', '2025-07-27 12:40:29', 1);
INSERT INTO `question_choices` VALUES (76, 70, '777', 0, 0, '2025-07-27 12:39:06', '2025-07-27 12:40:29', 1);
INSERT INTO `question_choices` VALUES (77, 70, '666', 1, 0, '2025-07-27 12:39:06', '2025-07-27 12:40:29', 1);
INSERT INTO `question_choices` VALUES (78, 71, '111', 0, 0, '2025-07-27 17:23:32', '2025-07-27 17:23:32', 0);
INSERT INTO `question_choices` VALUES (79, 71, '222', 1, 0, '2025-07-27 17:23:32', '2025-07-27 17:23:32', 0);
INSERT INTO `question_choices` VALUES (80, 71, '333', 1, 0, '2025-07-27 17:23:32', '2025-07-27 17:23:32', 0);
INSERT INTO `question_choices` VALUES (81, 71, '4444', 0, 0, '2025-07-27 17:23:32', '2025-07-27 17:23:32', 0);
INSERT INTO `question_choices` VALUES (82, 72, '1', 1, 0, '2025-07-27 18:28:56', '2025-07-27 18:28:56', 0);
INSERT INTO `question_choices` VALUES (83, 72, '2', 0, 0, '2025-07-27 18:28:56', '2025-07-27 18:28:56', 0);
INSERT INTO `question_choices` VALUES (84, 72, '3', 1, 0, '2025-07-27 18:28:56', '2025-07-27 18:28:56', 0);
INSERT INTO `question_choices` VALUES (85, 72, '4', 0, 0, '2025-07-27 18:28:56', '2025-07-27 18:28:56', 0);
INSERT INTO `question_choices` VALUES (86, 75, '构造器注入', 1, 1, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_choices` VALUES (87, 75, '字段注入', 1, 2, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_choices` VALUES (88, 75, 'Setter方法注入', 1, 3, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_choices` VALUES (89, 75, '接口注入', 0, 4, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_choices` VALUES (90, 76, '@Required', 1, 1, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_choices` VALUES (91, 76, '@Autowired', 1, 2, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_choices` VALUES (92, 76, '@Qualifier', 0, 3, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_choices` VALUES (93, 76, '@Service', 1, 4, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_choices` VALUES (94, 77, 'execution表达式', 1, 1, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_choices` VALUES (95, 77, 'within表达式', 1, 2, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_choices` VALUES (96, 77, 'this表达式', 1, 3, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_choices` VALUES (97, 77, 'bean表达式', 1, 4, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_choices` VALUES (98, 78, 'REQUIRED', 1, 1, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_choices` VALUES (99, 78, 'SUPPORTS', 1, 2, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_choices` VALUES (100, 78, 'MANDATORY', 1, 3, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_choices` VALUES (101, 78, 'NEVER', 0, 4, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_choices` VALUES (102, 79, '@Component', 1, 1, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_choices` VALUES (103, 79, '@Service', 1, 2, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_choices` VALUES (104, 79, '@Repository', 1, 3, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_choices` VALUES (105, 79, '@Controller', 1, 4, '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `question_choices` VALUES (106, 180, 'const', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (107, 180, 'final', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (108, 180, 'static', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (109, 180, 'public', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (110, 181, '2name', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (111, 181, 'class', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (112, 181, '_name', 1, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (113, 181, 'my-name', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (114, 182, '0', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (115, 182, 'null', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (116, 182, 'false', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (117, 182, '0.0', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (118, 183, 'int', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (119, 183, 'double', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (120, 183, 'long', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (121, 183, 'char', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (122, 184, '=', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (123, 184, 'equals', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (124, 184, '!=', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (125, 185, 'do-while 至少执行一次循环体', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (126, 185, 'while 至少执行一次循环体', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (127, 185, '两者没有区别', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (128, 185, 'do-while 执行次数一定更多', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (129, 186, 'abcd', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (130, 186, 'abc', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (131, 186, 'd', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (132, 186, '编译报错', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (133, 187, '2', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (134, 187, '3', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (135, 187, '4', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (136, 187, '不确定', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (137, 188, 'String', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (138, 188, 'ArrayList', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (139, 188, 'Integer', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (140, 188, 'System', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (141, 189, 'String', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (142, 189, 'Integer', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (143, 189, 'boolean', 1, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (144, 189, 'Object', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (145, 190, 'private', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (146, 190, 'protected', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (147, 190, 'public', 1, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (148, 190, 'package', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (149, 191, 'implements', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (150, 191, 'extends', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (151, 191, 'import', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (152, 191, 'package', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (153, 192, 'public static void main(String[] args)', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (154, 192, 'static void main(String[] args)', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (155, 192, 'public void main(String[] args)', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (156, 192, 'public static int main(String[] args)', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (157, 193, 'continue', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (158, 193, 'break', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (159, 193, 'return', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (160, 193, 'exit', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (161, 194, 'List', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (162, 194, 'Set', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (163, 194, 'Map', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (164, 194, 'Queue', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (165, 195, 'public', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (166, 195, 'private', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (167, 195, 'final', 1, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (168, 195, 'protected', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (169, 196, '5', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (170, 196, '8', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (171, 196, '3', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (172, 196, '15', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (173, 197, '\'abc\'', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (174, 197, '\"abc\"', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (175, 197, 'abc', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (176, 197, '`abc`', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (177, 198, 'import', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (178, 198, 'include', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (179, 198, 'using', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (180, 198, 'require', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (181, 199, 'NullPointerException', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (182, 199, 'IOException', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (183, 199, 'ArrayIndexOutOfBoundsException', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (184, 199, 'ArithmeticException', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (185, 200, '配置项目依赖与构建信息', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (186, 200, '配置数据库连接', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (187, 200, '配置应用服务器', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (188, 200, '配置网络代理', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (189, 201, 'mvn clean', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (190, 201, 'mvn compile', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (191, 201, 'mvn test', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (192, 201, 'mvn package', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (193, 202, 'git status', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (194, 202, 'git push', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (195, 202, 'git commit', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (196, 202, 'git log', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (197, 203, 'git add', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (198, 203, 'git commit', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (199, 203, 'git push', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (200, 203, 'git clone', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (201, 204, 'git commit', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (202, 204, 'git push', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (203, 204, 'git log', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (204, 204, 'git status', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (205, 205, '<img>', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (206, 205, '<a>', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (207, 205, '<p>', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (208, 205, '<div>', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (209, 206, 'font-size', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (210, 206, 'color', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (211, 206, 'background', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (212, 206, 'text-align', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (213, 207, 'LinkedList', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (214, 207, 'ArrayList', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (215, 207, 'HashSet', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (216, 207, 'TreeMap', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (217, 208, 'equals 和 hashCode 方法', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (218, 208, ' 引用比较', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (219, 208, 'compareTo 方法', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (220, 208, '元素长度', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (221, 209, 'Hashtable', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (222, 209, 'HashMap', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (223, 209, 'TreeMap', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (224, 209, 'ConcurrentHashMap', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (225, 210, 'List<int>', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (226, 210, 'List<Integer>', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (227, 210, 'List<String> list = new ArrayList<>();', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (228, 210, 'B 和 C 都正确', 1, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (229, 211, '继承 Thread 类', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (230, 211, '实现 Runnable 接口', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (231, 211, '实现 Callable 接口配合 FutureTask', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (232, 211, '以上都可以', 1, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (233, 212, '加快程序运行速度', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (234, 212, '保证多线程访问的互斥与可见性', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (235, 212, '自动管理内存', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (236, 212, '简化代码编写', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (237, 213, 'InputStream / OutputStream', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (238, 213, 'Collection / Map', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (239, 213, 'Thread / Runnable', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (240, 213, 'String / StringBuilder', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (241, 214, '资源会被自动关闭', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (242, 214, '程序运行更快', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (243, 214, '不会抛出异常', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (244, 214, '减少内存占用', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (245, 215, '@Override', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (246, 215, '@Autowired', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (247, 215, '@Test', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (248, 215, '@Deprecated', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (249, 216, '对象由容器创建并管理', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (250, 216, '对象由自身创建依赖', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (251, 216, '只使用工厂类创建对象', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (252, 216, '只使用单例模式', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (253, 217, '实现数据库连接管理', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (254, 217, '实现日志、事务、权限等横切逻辑', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (255, 217, '实现前端页面渲染', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (256, 217, '实现网络通信', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (257, 218, 'prototype', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (258, 218, 'singleton', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (259, 218, 'request', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (260, 218, 'session', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (261, 219, '@RequestBody', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (262, 219, '@RequestParam', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (263, 219, '@PathVariable', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (264, 219, '以上都是', 1, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (265, 220, '@Insert', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (266, 220, '@Select', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (267, 220, '@Update', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (268, 220, '@Delete', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (269, 221, 'WHERE', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (270, 221, 'ORDER BY', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (271, 221, 'GROUP BY', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (272, 221, 'LIMIT', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (273, 222, 'DISTINCT', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (274, 222, 'UNIQUE', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (275, 222, 'DIFFERENT', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (276, 222, 'REMOVE', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (277, 223, 'Connection', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (278, 223, 'DriverManager', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (279, 223, 'Statement', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (280, 223, 'ResultSet', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (281, 224, '原子性（Atomicity）', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (282, 224, '一致性（Consistency）', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (283, 224, '隔离性（Isolation）', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (284, 224, '持久性（Durability）', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (285, 225, '服务器内部错误', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (286, 225, '请求的资源未找到', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (287, 225, '请求成功', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (288, 225, '请求重定向', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (289, 226, '参数放在 URL 中', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (290, 226, '参数必须放在请求体中', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (291, 226, '只能传输文件', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (292, 226, '不支持任何缓存', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (293, 227, 'var', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (294, 227, 'let', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (295, 227, 'const', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (296, 227, 'let 和 const', 1, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (297, 228, 'Spring Core', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (298, 228, 'Spring MVC', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (299, 228, 'Spring JDBC', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (300, 228, 'Spring Windows', 1, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (301, 229, '<select>', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (302, 229, '<mapper>', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (303, 229, '<insert>', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (304, 229, '<update>', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (305, 230, 'toString()', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (306, 230, 'equals(Object)', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (307, 230, 'hashCode()', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (308, 230, '以上都是', 1, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (309, 231, 'ArrayList', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (310, 231, 'LinkedList', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (311, 231, 'HashMap', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (312, 231, 'HashSet', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (313, 232, 'Lambda 表达式', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (314, 232, 'Stream API', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (315, 232, '方法引用', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (316, 232, '以上都是', 1, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (317, 233, 'Date', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (318, 233, 'SimpleDateFormat', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (319, 233, 'Calendar', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (320, 233, 'System', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (321, 234, '保证操作的原子性', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (322, 234, '保证可见性并禁止指令重排', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (323, 234, '保证有序性但不保证可见性', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (324, 234, '保证数据持久化', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (325, 235, 'CAS + synchronized', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (326, 235, '只使用 ReentrantLock', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (327, 235, '只使用 volatile', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (328, 235, '只使用 synchronized 全表锁', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (329, 236, '堆（Heap）', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (330, 236, '方法区/元空间（Metaspace）', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (331, 236, '虚拟机栈', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (332, 236, '程序计数器', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (333, 237, 'CMS', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (334, 237, 'G1', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (335, 237, 'Serial', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (336, 237, 'Parallel', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (337, 238, '引用计数法', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (338, 238, '可达性分析（GC Roots）', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (339, 238, '标记-清除算法', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (340, 238, '复制算法', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (341, 239, 'corePoolSize', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (342, 239, 'maximumPoolSize', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (343, 239, 'workQueue', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (344, 239, '以上都是', 1, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (345, 240, 'ReentrantLock', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (346, 240, 'synchronized', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (347, 240, 'ReadWriteLock', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (348, 240, 'StampedLock', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (349, 241, 'ArrayList', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (350, 241, 'ArrayBlockingQueue', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (351, 241, 'HashMap', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (352, 241, 'HashSet', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (353, 242, '支持当前事务，若不存在则新建事务', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (354, 242, '挂起当前事务并新建事务', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (355, 242, '强制以新事务运行', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (356, 242, '不支持事务', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (357, 243, '三级缓存', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (358, 243, '二级缓存', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (359, 243, '一级缓存', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (360, 243, '直接抛出异常', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (361, 244, '@SpringBootApplication', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (362, 244, '@Configuration', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (363, 244, '@Component', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (364, 244, '@EnableAutoConfiguration', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (365, 245, '@Before', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (366, 245, '@After', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (367, 245, '@Around', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (368, 245, '以上都是', 1, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (369, 246, 'READ UNCOMMITTED', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (370, 246, 'READ COMMITTED', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (371, 246, 'REPEATABLE READ', 1, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (372, 246, 'SERIALIZABLE', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (373, 247, '普通索引', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (374, 247, '唯一索引', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (375, 247, '覆盖索引', 1, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (376, 247, '全文索引', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (377, 248, '尽量使用 SELECT *', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (378, 248, '避免在索引列上使用函数或计算', 1, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (379, 248, '索引数量越多越好', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (380, 248, '永远关闭查询缓存', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (381, 249, '对索引列使用函数，如 WHERE YEAR(create_time)=2024', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (382, 249, '使用 LIKE \'abc%\'', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (383, 249, '使用等值查询', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (384, 249, '使用主键查询', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (385, 250, '本地消息表 + 消息队列', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (386, 250, '强制两阶段提交', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (387, 250, '全链路强同步', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (388, 250, '串行化所有请求', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (389, 251, '一致性、可用性、分区容错性', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (390, 251, '一致性、原子性、持久性', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (391, 251, '可用性、隔离性、持久性', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (392, 251, '一致性、可靠性、安全性', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (393, 252, '缓存空值', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (394, 252, '布隆过滤器', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (395, 252, '接口限流与参数校验', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (396, 252, '以上都可以', 1, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (397, 253, '-Xmx', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (398, 253, '-Xss', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (399, 253, '-XX:PermSize', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (400, 253, '-D', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (401, 254, '加载、验证、准备、解析、初始化', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (402, 254, '加载、准备、验证、解析、初始化', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (403, 254, '加载、解析、验证、准备、初始化', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (404, 254, '验证、加载、准备、解析、初始化', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (405, 255, '单例模式', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (406, 255, '观察者模式', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (407, 255, '策略模式', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (408, 255, '装饰器模式', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (409, 256, 'Redis SETNX 加锁', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (410, 256, '数据库唯一索引/记录锁', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (411, 256, 'ZooKeeper 临时节点', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (412, 256, '以上都是', 1, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (413, 257, '数据库唯一键约束', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (414, 257, '业务状态机校验', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (415, 257, '幂等表/去重表', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (416, 257, '以上都是', 1, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (417, 258, '大量缓存 Key 同时失效或缓存服务不可用', 1, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (418, 258, '单个 Key 被高并发访问', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (419, 258, '查询不存在的数据', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (420, 258, '缓存数据不一致', 0, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (421, 259, '减少 Full GC 次数', 0, 0, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (422, 259, '提升吞吐量', 0, 1, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (423, 259, '降低停顿时间', 0, 2, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (424, 259, '以上都是', 1, 3, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `question_choices` VALUES (425, 377, '1个字节', 1, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (426, 377, '2个字节', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (427, 377, '4个字节', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (428, 377, '8个字节', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (429, 378, 'char数组', 0, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (430, 378, 'byte数组', 1, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (431, 378, 'List', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (432, 378, 'Map', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (433, 379, '可以被重新赋值', 0, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (434, 379, '必须初始化且不可变', 1, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (435, 379, '只能修饰对象', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (436, 379, '只能修饰基本类型', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (437, 380, '抽象类可以有构造方法', 0, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (438, 380, '接口不能有构造方法', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (439, 380, '类只能单继承抽象类但可多实现接口', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (440, 380, '以上都是', 1, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (441, 381, 'Inversion of Control', 1, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (442, 381, 'International Olympic Committee', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (443, 381, 'Input Output Control', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (444, 381, 'None', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (445, 382, 'singleton', 1, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (446, 382, 'prototype', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (447, 382, 'request', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (448, 382, 'session', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (449, 383, 'DISTINCT', 1, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (450, 383, 'UNIQUE', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (451, 383, 'GROUP', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (452, 383, 'REMOVE', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (453, 384, '读未提交', 0, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (454, 384, '读已提交', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (455, 384, '可重复读', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (456, 384, '串行化', 1, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (457, 385, 'ref', 0, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (458, 385, 'reactive', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (459, 385, '以上都是', 1, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (460, 385, 'computed', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (461, 386, '服务器内部错误', 0, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (462, 386, '未找到资源', 1, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (463, 386, '请求成功', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (464, 386, '重定向', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (465, 387, '<packaging>', 1, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (466, 387, '<build>', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (467, 387, '<dependencies>', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (468, 387, '<groupId>', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (469, 388, 'git log', 1, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (470, 388, 'git status', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (471, 388, 'git diff', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (472, 388, 'git branch', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (473, 389, '重载发生在同一个类中', 0, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (474, 389, '重写发生在子父类中', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (475, 389, '重载参数列表必须不同', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (476, 389, '以上都是', 1, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (477, 390, 'List', 0, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (478, 390, 'Set', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (479, 390, 'Map', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (480, 390, 'Array', 1, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (481, 391, '@EnableAutoConfiguration', 1, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (482, 391, '@SpringBootApplication', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (483, 391, '@Configuration', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (484, 391, '@Component', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (485, 392, '主键', 1, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (486, 392, '外键', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (487, 392, '索引', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (488, 392, '视图', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (489, 393, '快速排序', 0, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (490, 393, '归并排序', 1, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (491, 393, '堆排序', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (492, 393, '选择排序', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (493, 394, '栈', 0, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (494, 394, '堆', 1, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (495, 394, '方法区', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (496, 394, '程序计数器', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (497, 395, '线程池可以复用线程', 0, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (498, 395, '线程池可以控制并发数', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (499, 395, '线程池中的线程永远不会销毁', 1, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (500, 395, '线程池可以降低资源消耗', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (501, 396, '一致性、可用性、分区容错性', 1, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (502, 396, '一致性、原子性、持久性', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (503, 396, '并发性、可用性、性能', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (504, 396, '一致性、可用性、安全性', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (505, 397, 'String', 0, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (506, 397, 'StringBuffer', 1, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (507, 397, 'StringBuilder', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (508, 397, 'StringJoiner', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (509, 398, '@RequestBody', 1, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (510, 398, '@RequestParam', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (511, 398, '@PathVariable', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (512, 398, '@ResponseBody', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (513, 399, '查看SQL执行计划', 1, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (514, 399, '备份数据库', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (515, 399, '恢复数据', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (516, 399, '创建索引', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (517, 400, 'event.stopPropagation()', 1, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (518, 400, 'event.preventDefault()', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (519, 400, 'event.stop()', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (520, 400, 'event.cancel()', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (521, 401, 'java.util', 1, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (522, 401, 'java.io', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (523, 401, 'java.lang', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (524, 401, 'java.net', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (525, 402, '@Transactional', 1, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (526, 402, '@Transaction', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (527, 402, '@EnableTransaction', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (528, 402, '@Commit', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (529, 403, '消除非主属性对码的部分依赖', 1, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (530, 403, '消除传递依赖', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (531, 403, '保证原子性', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (532, 403, '以上都不是', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (533, 404, 'git checkout -b', 1, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (534, 404, 'git branch', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (535, 404, 'git switch', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (536, 404, 'git merge', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (537, 405, 'ArrayList基于数组', 0, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (538, 405, 'LinkedList基于链表', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (539, 405, 'ArrayList查询快', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (540, 405, '以上都是', 1, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (541, 406, 'compile', 1, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (542, 406, 'provided', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (543, 406, 'runtime', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (544, 406, 'test', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (545, 407, 'throw', 1, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (546, 407, 'throws', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (547, 407, 'try', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (548, 407, 'catch', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (549, 408, 'HTTP', 1, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (550, 408, 'HTTPS', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (551, 408, 'FTP', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (552, 408, 'SMTP', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (553, 409, '@Aspect', 1, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (554, 409, '@Pointcut', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (555, 409, '@Before', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (556, 409, '@Around', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (557, 410, '使用LIKE \'%abc%\'', 0, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (558, 410, '使用OR', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (559, 410, '使用IS NULL', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (560, 410, '使用主键查询', 1, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (561, 411, 'FileReader', 0, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (562, 411, 'BufferedReader', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (563, 411, 'InputStream', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (564, 411, '以上都是', 1, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (565, 412, '单例模式', 0, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (566, 412, '工厂模式', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (567, 412, '建造者模式', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (568, 412, '以上都是', 1, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (569, 413, '类加载时', 1, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (570, 413, '创建对象时', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (571, 413, '调用静态方法时', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (572, 413, '程序结束时', 0, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (573, 414, 'VARCHAR可变长', 0, 0, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (574, 414, 'CHAR定长', 0, 1, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (575, 414, 'VARCHAR节省空间', 0, 2, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (576, 414, '以上都是', 1, 3, '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `question_choices` VALUES (577, 415, '防抖是延迟执行', 0, 0, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (578, 415, '节流是固定频率执行', 0, 1, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (579, 415, '防抖用于搜索框', 0, 2, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (580, 415, '以上都是', 1, 3, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (581, 416, '=比较地址', 0, 0, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (582, 416, 'equals比较内容', 0, 1, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (583, 416, '以上都是', 1, 2, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (584, 416, '以上都不是', 0, 3, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (585, 417, 'application.properties', 0, 0, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (586, 417, 'application.yml', 0, 1, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (587, 417, '以上都是', 1, 2, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (588, 417, '以上都不是', 0, 3, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (589, 418, 'AtomicInteger', 0, 0, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (590, 418, 'AtomicLong', 0, 1, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (591, 418, 'AtomicReference', 0, 2, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (592, 418, '以上都是', 1, 3, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (593, 419, '两个事务互相等待对方释放锁', 1, 0, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (594, 419, '一个事务等待另一个事务', 0, 1, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (595, 419, '事务被强制终止', 0, 2, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (596, 419, '以上都不是', 0, 3, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (597, 420, 'git merge', 1, 0, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (598, 420, 'git rebase', 0, 1, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (599, 420, 'git pull', 0, 2, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (600, 420, 'git fetch', 0, 3, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (601, 421, 'public abstract', 1, 0, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (602, 421, 'public', 0, 1, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (603, 421, 'abstract', 0, 2, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (604, 421, 'private', 0, 3, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (605, 422, 'mvn clean', 1, 0, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (606, 422, 'mvn compile', 0, 1, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (607, 422, 'mvn package', 0, 2, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (608, 422, 'mvn install', 0, 3, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (609, 423, 'Spring Core', 0, 0, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (610, 423, 'Spring AOP', 0, 1, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (611, 423, 'Spring MVC', 0, 2, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (612, 423, '以上都是', 1, 3, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (613, 424, '继承Thread类', 0, 0, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (614, 424, '实现Runnable接口', 0, 1, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (615, 424, '实现Callable接口', 0, 2, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (616, 424, '继承Runnable类', 1, 3, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (617, 425, 'SYN, SYN-ACK, ACK', 1, 0, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (618, 425, 'SYN, ACK, SYN-ACK', 0, 1, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (619, 425, 'ACK, SYN, SYN-ACK', 0, 2, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (620, 425, 'SYN-ACK, SYN, ACK', 0, 3, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (621, 426, '1个', 0, 0, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (622, 426, '2个', 1, 1, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (623, 426, '3个', 0, 2, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (624, 426, '0个', 0, 3, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (625, 427, '@Autowired按类型注入', 0, 0, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (626, 427, '@Resource按名称注入', 0, 1, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (627, 427, '以上都是', 1, 2, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (628, 427, '以上都不是', 0, 3, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (629, 428, '虚拟表', 1, 0, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (630, 428, '物理表', 0, 1, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (631, 428, '索引', 0, 2, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (632, 428, '存储过程', 0, 3, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (633, 429, 'try-catch', 1, 0, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (634, 429, 'if-else', 0, 1, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (635, 429, 'for', 0, 2, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (636, 429, 'while', 0, 3, '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `question_choices` VALUES (637, 520, '中间操作返回Stream对象本身，可以用方法链的方式连续调用', 1, 0, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_choices` VALUES (638, 520, '终结操作不需要返回Stream对象，通常会实际执行相关的逻辑操作', 1, 1, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_choices` VALUES (639, 523, 'sorted()方法默认使用自然排序', 1, 0, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_choices` VALUES (640, 523, 'sorted()方法需要一个Comparator来确定排序顺序', 0, 1, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_choices` VALUES (641, 524, 'limit(n)方法返回流中的前n个元素', 1, 0, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_choices` VALUES (642, 524, 'skip(n)方法返回从流的最开始元素开始去除前n个元素后剩余的元素', 0, 1, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_choices` VALUES (643, 524, 'skip(n)方法返回从流中第n个元素开始后续的所有元素', 1, 2, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_choices` VALUES (644, 526, 'forEach()方法用于遍历流中的元素，但是不适用于并行流', 1, 0, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_choices` VALUES (645, 526, 'forEach()方法可以并行遍历流中的元素', 0, 1, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_choices` VALUES (646, 527, 'map()方法返回的是Stream流', 1, 0, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_choices` VALUES (647, 527, 'map()方法将流中的每一个元素依次转换成其他类型或者应用其他操作', 1, 1, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_choices` VALUES (648, 530, 'distinct()方法仅在元素自然排序的情况下生效', 0, 0, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_choices` VALUES (649, 530, 'distinct()方法用于去除流中的重复元素', 1, 1, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_choices` VALUES (650, 535, 'findFirst()方法返回第一个匹配的元素', 0, 0, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_choices` VALUES (651, 535, 'findFirst()方法返回第一个元素，如果流为空则返回一个Optional.empty()', 1, 1, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_choices` VALUES (652, 536, 'peek()方法的主要作用是在遍历的途中打印元素，以用于调试目', 1, 0, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_choices` VALUES (653, 536, 'peek()方法本身不会影响流中的实际元素', 1, 1, '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `question_choices` VALUES (654, 540, 'count()', 1, 0, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (655, 540, 'map()', 0, 1, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (656, 540, 'filter()', 0, 2, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (657, 540, 'distinct()', 0, 3, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (658, 542, 'map()方法', 1, 0, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (659, 542, 'for循环', 0, 1, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (660, 543, 'filter()方法用于筛选满足条件的元素', 1, 0, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (661, 543, 'filter()方法返回的仍然是Stream', 1, 1, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (662, 543, 'filter()方法只能接收boolean类型的谓词', 0, 2, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (663, 546, '保证元素按顺序输出', 1, 0, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (664, 546, '元素的顺序是不确定的', 0, 1, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (665, 547, 'sorted()方法依赖流的内部排序', 0, 0, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (666, 547, 'sorted()可以在使用forEach()之前或之后应用', 0, 1, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (667, 547, 'sorted()方法总是立即排序流中的数据', 1, 2, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (668, 550, 'distinct()方法删除重复的元素', 1, 0, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (669, 550, 'distinct()方法不能与排序操作一起使用', 0, 1, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (670, 550, 'distinct()方法会改变流的顺序', 0, 2, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (671, 551, 'reduce()', 1, 0, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (672, 551, 'toList()', 0, 1, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (673, 551, 'filter()', 0, 2, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (674, 552, '仅当流是由有序的操作产生的，则forEachOrdered()方法可用于有序处理', 1, 0, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (675, 552, 'forEachOrdered()可以随意使用于任何流上', 0, 1, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (676, 552, 'forEachOrdered()不会改变流的顺序', 0, 2, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (677, 553, '流的distinct()方法默认使用对象的equals方法进行去重复', 0, 0, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (678, 553, '流的distinct()方法默认使用对象的hashCode方法进行去重复', 1, 1, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (679, 553, '流的distinct()方法在元素是可哈希时会更高效', 0, 2, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (680, 557, 'sorted()方法返回的是一个有序的流', 0, 0, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (681, 557, 'sorted()方法默认按照自然顺序进行排序', 0, 1, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (682, 557, 'sorted()方法可以在流操作的任意时候调用，并不会立即排序', 1, 2, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (683, 558, 'toArray()方法用来将流转换为数组形式', 0, 0, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (684, 558, 'toArray()方法只能转换为ArrayList', 0, 1, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (685, 558, 'toArray()方法可以指定返回的数组类型', 1, 2, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (686, 558, 'toArray()方法不适用在并行流上', 1, 3, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (687, 559, '任何返回boolean值的表达式', 1, 0, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (688, 559, '只有lambda表达式', 0, 1, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `question_choices` VALUES (689, 560, '不会，第二条语句将创建一个空表', 1, 0, '2026-10-12 18:03:16', '2026-10-12 18:03:16', 0);
INSERT INTO `question_choices` VALUES (690, 560, '会，因为WHERE子句永远为假', 0, 1, '2026-10-12 18:03:16', '2026-10-12 18:03:16', 0);
INSERT INTO `question_choices` VALUES (691, 560, '会，因为无法从虚表中选择数据', 0, 2, '2026-10-12 18:03:16', '2026-10-12 18:03:16', 0);
INSERT INTO `question_choices` VALUES (692, 561, '使用 `INNER JOIN`', 1, 0, '2026-10-12 18:03:16', '2026-10-12 18:03:16', 0);
INSERT INTO `question_choices` VALUES (693, 561, '使用 `LEFT JOIN`', 1, 1, '2026-10-12 18:03:16', '2026-10-12 18:03:16', 0);
INSERT INTO `question_choices` VALUES (694, 561, '使用 `OUTER JOIN`', 0, 2, '2026-10-12 18:03:16', '2026-10-12 18:03:16', 0);
INSERT INTO `question_choices` VALUES (695, 561, '使用 `RIGHT JOIN`', 0, 3, '2026-10-12 18:03:16', '2026-10-12 18:03:16', 0);
INSERT INTO `question_choices` VALUES (696, 562, '使用 `SELECT * FROM Employees WHERE salary > (SELECT salary FROM Employees WHERE employee_id = 123) ;`', 1, 0, '2026-10-12 18:03:16', '2026-10-12 18:03:16', 0);
INSERT INTO `question_choices` VALUES (697, 562, '使用 `SELECT * FROM Employees WHERE salary > 123 ;`', 0, 1, '2026-10-12 18:03:16', '2026-10-12 18:03:16', 0);
INSERT INTO `question_choices` VALUES (698, 562, '使用 `SELECT * FROM Employees WHERE salary IN (SELECT * FROM Employees WHERE employee_id = 123) ;`', 0, 2, '2026-10-12 18:03:16', '2026-10-12 18:03:16', 0);
INSERT INTO `question_choices` VALUES (699, 563, '使用 `SELECT level, AVG(salary) FROM employees GROUP BY level HAVING AVG(salary) > 10000 ;`', 1, 0, '2026-10-12 18:03:16', '2026-10-12 18:03:16', 0);
INSERT INTO `question_choices` VALUES (700, 563, '使用 `SELECT level, AVG(salary) FROM employees GROUP BY level WHERE AVG(salary) > 10000 ;`', 0, 1, '2026-10-12 18:03:16', '2026-10-12 18:03:16', 0);
INSERT INTO `question_choices` VALUES (701, 564, '定义一个触发器，在 `BEFORE INSERT` 事件中使用复杂的逻辑检查数据', 1, 0, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (702, 564, '在 `AFTER INSERT` 事件中执行复杂逻辑', 0, 1, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (703, 564, '使用 `BEFORE UPDATE` 触发器', 0, 2, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (704, 565, '创建包含多个表查询的视图，并在其上执行复杂的查询', 1, 0, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (705, 565, '使用子查询在视图中实现复杂的查询逻辑', 1, 1, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (706, 566, '先 `GROUP BY`，再 `ORDER BY`', 1, 0, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (707, 566, '先 `ORDER BY`，再 `GROUP BY`', 0, 1, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (708, 567, '在插入数据时不需要指定 `auto_increment` 字段', 1, 0, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (709, 567, '必须手动指定数值，以便在下次插入时自动增加', 0, 1, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (710, 568, '使用 `START TRANSACTION ;` 开始事务，然后使用 `COMMIT` 或 `ROLLBACK` 结束事务', 1, 0, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (711, 568, '在每次操作后都单独提交事务', 0, 1, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (712, 569, '使用预处理语句和参数化查询', 1, 0, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (713, 569, '在查询中直接拼接字符串', 0, 1, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (714, 570, '使用 `CASE` 语句动态设置 `date_modified` 的值', 1, 0, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (715, 570, '直接更新 `date_modified` 字段', 0, 1, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (716, 571, '使用 `FULLTEXT` 索引和 `MATCH AGAINST` 语句', 1, 0, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (717, 571, '使用 `LIKE` 语句', 0, 1, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (718, 572, '使用 `LEFT JOIN` 部门表和员工表', 1, 0, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (719, 572, '使用 `RIGHT JOIN` 部门表和员工表', 0, 1, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (720, 573, '使用 `CREATE TABLE` 的 `AS` 子句创建表达式列', 1, 0, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (721, 573, '使用 `CREATE TABLE` 的 `COMMENT` 子句创建虚拟列', 0, 1, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (722, 574, '使用 `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`', 1, 0, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (723, 574, '只能使用 `RANK()`', 0, 1, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (724, 575, '使用 `INNER JOIN` 来连接员工表和经理表', 1, 0, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (725, 575, '使用 `LEFT JOIN` 来连接员工表和经理表', 0, 1, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (726, 576, '使用 `NOW()` 函数获取当前时间', 1, 0, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (727, 576, '使用 `CURDATE()` 获取当前日期', 0, 1, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (728, 577, '使用 `AFTER INSERT` 触发器，并执行更新语句', 1, 0, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (729, 577, '使用 `BEFORE INSERT` 触发器，更新另一个表的统计计数', 0, 1, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (730, 578, '只允许更新非聚合视图或包含 `DISTINCT`, `GROUP BY`, `HAVING`, `UNION` 的视图', 1, 0, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (731, 578, '不允许更新视图', 0, 1, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (732, 579, '使用 `IF`, `CASE`, `WHILE` 语句等控制结构', 1, 0, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `question_choices` VALUES (733, 579, '仅使用 `SELECT` 语句', 0, 1, '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `multi` tinyint(1) NULL DEFAULT 0,
  `category_id` bigint NOT NULL,
  `difficulty` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `score` int NULL DEFAULT 5,
  `analysis` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '0-未删除，1-已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 520 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES (65, '测试选择题', 'CHOICE', 0, 13, 'MEDIUM', 5, '数据库的数据类型', '2025-07-24 18:39:22', '2025-07-27 12:38:02', 1);
INSERT INTO `questions` VALUES (66, '测试判断题', 'JUDGE', 0, 14, 'HARD', 5, 'java是世界上最好的语言', '2025-07-25 17:14:14', '2025-07-25 17:14:14', 0);
INSERT INTO `questions` VALUES (67, '选择题1222', 'CHOICE', 1, 17, 'HARD', 5, '选择题解析', '2025-07-27 11:16:13', '2025-07-27 12:37:23', 1);
INSERT INTO `questions` VALUES (68, '判断题', 'JUDGE', 0, 22, 'MEDIUM', 5, '判断题解析！', '2025-07-27 11:16:13', '2025-07-27 11:17:05', 0);
INSERT INTO `questions` VALUES (69, '简答题1', 'TEXT', 0, 24, 'MEDIUM', 5, '简答题解析！', '2025-07-27 11:16:13', '2025-07-27 11:17:31', 0);
INSERT INTO `questions` VALUES (70, '选择题999', 'CHOICE', 1, 30, 'MEDIUM', 5, '89999', '2025-07-27 11:16:13', '2025-07-27 12:40:29', 1);
INSERT INTO `questions` VALUES (71, '选择题00000', 'CHOICE', 1, 18, 'EASY', 5, '测试', '2025-07-27 17:23:32', '2025-07-27 17:23:32', 0);
INSERT INTO `questions` VALUES (72, '选择题2222', 'CHOICE', 1, 19, 'MEDIUM', 5, '选择题解释解释解释', '2025-07-27 18:28:56', '2025-07-27 18:28:56', 0);
INSERT INTO `questions` VALUES (73, '以下哪个是Spring框架的核心特性？', 'TEXT', 0, 1, 'MEDIUM', 5, 'Spring框架的核心特性包括依赖注入、面向切面编程和事务管理等。', '2025-07-28 17:28:42', '2025-07-28 17:28:42', 0);
INSERT INTO `questions` VALUES (74, '判断题哈哈', 'JUDGE', 0, 16, 'MEDIUM', 10, '答案正确的！', '2025-07-28 17:28:42', '2025-07-28 17:28:42', 0);
INSERT INTO `questions` VALUES (75, 'Spring框架中的依赖注入(DI)可以通过哪些方式实现？', 'CHOICE', 1, 17, 'EASY', 5, 'Spring框架支持多种依赖注入方式，包括构造器注入、字段注入和Setter方法注入，这些都是常见的依赖注入方式。接口注入不是Spring框架中支持的依赖注入方式。', '2025-07-29 16:51:12', '2025-07-29 16:51:12', 0);
INSERT INTO `questions` VALUES (76, '以下哪些注解用于Spring框架中声明Bean？', 'CHOICE', 1, 17, 'EASY', 5, '在Spring框架中，@Required、@Autowired和@Service注解都可以用来声明Bean。@Required注解用于指示必须注入一个bean，否则会抛出异常；@Autowired注解用于自动注入依赖；@Service注解用于标注服务层组件。@Qualifier注解用于指定注入的具体Bean，但本身不声明Bean。', '2025-07-29 16:51:13', '2025-07-29 16:51:13', 0);
INSERT INTO `questions` VALUES (77, 'Spring框架中的AOP（面向切面编程）支持哪些类型的切点表达式？', 'CHOICE', 1, 17, 'EASY', 5, 'Spring框架中的AOP支持多种类型的切点表达式，包括execution表达式用于匹配方法执行，within表达式用于匹配指定类中的所有方法，this表达式用于匹配当前代理对象，以及bean表达式用于匹配特定名称的Bean。', '2025-07-29 16:51:13', '2025-07-29 16:51:13', 0);
INSERT INTO `questions` VALUES (78, 'Spring框架中的@Transactional注解默认支持哪些事务传播行为？', 'CHOICE', 1, 17, 'EASY', 5, 'Spring框架中的@Transactional注解默认支持REQUIRED、SUPPORTS和MANDATORY三种事务传播行为。REQUIRED表示如果当前存在事务，则加入该事务；SUPPORTS表示如果当前存在事务，可以加入事务，否则以非事务方式执行；MANDATORY表示当前必须存在事务，否则抛出异常。NEVER表示当前方法不允许在事务中执行，与默认行为不同。', '2025-07-29 16:51:13', '2025-07-29 16:51:13', 0);
INSERT INTO `questions` VALUES (79, '在Spring框架中，以下哪些注解可以用来声明组件？', 'CHOICE', 1, 17, 'EASY', 5, '在Spring框架中，@Component、@Service、@Repository和@Controller注解都可以用来声明组件。@Component注解用于泛指组件，@Service注解用于服务层组件，@Repository注解用于数据访问层组件，@Controller注解用于表现层组件。这些注解都可以使类成为Spring容器的Bean，从而被自动扫描和注册。', '2025-07-29 16:51:13', '2025-07-29 16:51:13', 0);
INSERT INTO `questions` VALUES (80, 'Java 中 byte 类型占用 1 个字节。', 'JUDGE', 0, 16, 'EASY', 2, 'byte 占 1 个字节（8 位），取值范围是 -128~127。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (81, 'Java 中 long 类型占用的字节数比 int 多。', 'JUDGE', 0, 16, 'EASY', 2, 'long 占 8 个字节，int 占 4 个字节，long 取值范围更大。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (82, '数组下标越界会抛出 ArrayIndexOutOfBoundsException。', 'JUDGE', 0, 16, 'EASY', 2, '访问不存在的下标（负数或 >= length）会抛出该运行时异常。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (83, 'Java 中 int 类型的默认值是 0。', 'JUDGE', 0, 16, 'EASY', 2, '基本类型 int 的默认值为 0；引用类型默认值为 null。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (84, 'Java 的 8 种基本数据类型都有对应的包装类。', 'JUDGE', 0, 16, 'EASY', 2, '如 int→Integer、char→Character、boolean→Boolean 等，共 8 个包装类。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (85, '使用 == 比较两个 String 对象时，比较的是字符串内容。', 'JUDGE', 0, 16, 'MEDIUM', 2, NULL, '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (86, 'int a = 5; a += 3; 执行后 a 的值是 8。', 'JUDGE', 0, 16, 'MEDIUM', 2, 'a += 3 等价于 a = a + 3，5 + 3 = 8。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (87, '数组的 length 属性返回的是数组的长度。', 'JUDGE', 0, 16, 'MEDIUM', 2, '数组用 length 属性获取长度（不是方法），字符串用 length() 方法。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (88, 'new String(\"abc\") 一定会创建两个对象。', 'JUDGE', 0, 16, 'HARD', 2, '若字符串常量池中已有 \"abc\"，则只在堆上创建一个对象；没有时才创建常量池+堆两个对象。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (89, 'Integer a = 127; Integer b = 127; a == b 返回 true。', 'JUDGE', 0, 16, 'HARD', 2, 'Integer 缓存 -128~127 范围内的对象，自动装箱时复用缓存，因此两个引用相同。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (90, 'Java 中一个类只能继承一个父类。', 'JUDGE', 0, 17, 'EASY', 2, 'Java 类是单继承的，但可以实现多个接口。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (91, '抽象类可以有构造方法。', 'JUDGE', 0, 17, 'EASY', 2, '抽象类可以有构造方法，用于子类实例化时初始化父类成员。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (92, '接口中定义的成员变量默认是 public static final 的。', 'JUDGE', 0, 17, 'MEDIUM', 2, '接口中的字段隐式且只能是 public static final 常量。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (93, '方法重载与返回值类型有关。', 'JUDGE', 0, 17, 'MEDIUM', 2, '重载只要求方法名相同、参数列表不同，与返回值类型无关。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (94, 'final 修饰的方法可以被重写。', 'JUDGE', 0, 17, 'MEDIUM', 2, 'final 方法不能被重写；final 类不能被继承。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (95, 'Java 中所有的异常都是受检异常。', 'JUDGE', 0, 17, 'EASY', 2, 'Java 异常分为受检异常（必须处理）和运行时异常（可不捕获）。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (96, '多态在编译期就已经确定调用哪个方法。', 'JUDGE', 0, 17, 'HARD', 2, '多态是运行时动态绑定，由实际对象类型在运行时决定调用哪个重写方法。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (97, 'Spring IoC 的核心思想是将对象的创建和管理交给容器。', 'JUDGE', 0, 18, 'EASY', 2, 'IoC 控制反转让 Spring 容器统一创建、装配和管理 Bean，实现解耦。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (98, '@Autowired 默认按类型注入。', 'JUDGE', 0, 18, 'EASY', 2, '@Autowired 默认 byType 注入，多候选时再按名称匹配。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (99, 'Spring Bean 的默认作用域是 singleton。', 'JUDGE', 0, 18, 'EASY', 2, '默认单例，容器中每个 Bean 只有一个实例；prototype 每次获取新建。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (100, 'Spring AOP 只能通过 XML 配置。', 'JUDGE', 0, 18, 'MEDIUM', 2, 'AOP 既支持 XML 配置，也支持 @Aspect 注解配置，注解方式更常用。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (101, '@Component、@Service、@Repository 都是用于注册 Bean 的注解。', 'JUDGE', 0, 18, 'MEDIUM', 2, '三者都是组件注解，@Service/@Repository/@Controller 语义化区分，均可注册 Bean。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (102, '@SpringBootApplication 是 @Configuration、@EnableAutoConfiguration、@ComponentScan 的组合注解。', 'JUDGE', 0, 18, 'MEDIUM', 2, '@SpringBootApplication 由这三个注解组合而成，用于标注启动类。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (103, 'SpringMVC 中 DispatcherServlet 是前端控制器。', 'JUDGE', 0, 18, 'MEDIUM', 2, 'DispatcherServlet 接收所有请求，统一分发到 Controller 并处理视图解析。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (104, '@Transactional 默认对受检异常进行回滚。', 'JUDGE', 0, 18, 'MEDIUM', 2, 'Spring 默认只对 RuntimeException 和 Error 回滚，受检异常需配置 rollbackFor。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (105, 'Spring 三级缓存可以解决所有类型的循环依赖。', 'JUDGE', 0, 18, 'HARD', 2, '三级缓存只能解决单例 Bean 的属性注入循环依赖，构造器注入和原型 Bean 无法解决。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (106, '@RestController 等价于 @Controller 加 @ResponseBody。', 'JUDGE', 0, 18, 'HARD', 2, '@RestController 是组合注解，方法返回值直接序列化为响应体。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (107, 'SpringBoot 也支持使用 Jetty 或 Undertow 作为内嵌服务器。', 'JUDGE', 0, 18, 'HARD', 2, '默认内嵌 Tomcat，可通过依赖替换为 Jetty、Undertow 或 Netty。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (108, 'Spring 事务的默认传播行为是 REQUIRED。', 'JUDGE', 0, 18, 'HARD', 2, 'REQUIRED：存在事务则加入，不存在则新建，是默认传播行为。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (109, '私有方法上的 @Transactional 注解一定生效。', 'JUDGE', 0, 18, 'HARD', 2, '私有方法无法被代理拦截，事务注解不会生效；应放到 public 方法上。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (110, 'Spring 中 prototype 作用域的 Bean 每次获取都会创建新实例。', 'JUDGE', 0, 18, 'HARD', 2, 'prototype 每次 getBean 或注入都会新建实例，容器不负责其完整生命周期。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (111, 'Spring AOP 基于动态代理实现，只能代理接口。', 'JUDGE', 0, 18, 'HARD', 2, '基于接口用 JDK 动态代理，无接口时可用 CGLIB 代理类。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (112, 'SpringBoot 自动配置通过 spring.factories 或 AutoConfiguration.imports 加载配置类。', 'JUDGE', 0, 18, 'HARD', 2, '自动配置类列表在 META-INF 下声明，配合条件注解按需装配。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (113, 'MySQL 中 InnoDB 是默认存储引擎。', 'JUDGE', 0, 19, 'EASY', 2, 'MySQL 5.5 之后默认存储引擎为 InnoDB，支持事务和外键。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (114, '一张表只能有一个主键。', 'JUDGE', 0, 19, 'EASY', 2, '主键唯一标识行，一个表只能定义一个主键（可联合多列）。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (115, 'SELECT * 可以用于查询所有列。', 'JUDGE', 0, 19, 'EASY', 2, 'SELECT * 返回表的所有列，生产环境建议显式列出所需列。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (116, 'READ UNCOMMITTED 隔离级别下可能发生脏读。', 'JUDGE', 0, 19, 'MEDIUM', 2, '读未提交可读到其他事务未提交的数据，是最低的隔离级别，存在脏读。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (117, '索引越多，查询性能一定越好。', 'JUDGE', 0, 19, 'MEDIUM', 2, '索引过多会增加写入和维护成本、占用空间，需按查询场景权衡。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (118, 'DELETE 语句删除数据后可以回滚，TRUNCATE 语句删除数据后也可以回滚。', 'JUDGE', 0, 19, 'MEDIUM', 2, 'DELETE 在事务中可回滚；TRUNCATE 隐式提交、不可回滚。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (119, '视图是基于 SQL 查询的虚拟表，不存储实际数据。', 'JUDGE', 0, 19, 'MEDIUM', 2, '视图只是保存查询定义，不存放数据，查询时实时生成结果。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (120, '对索引列使用函数会导致索引失效。', 'JUDGE', 0, 19, 'MEDIUM', 2, '如 WHERE YEAR(create_time)=2024 会破坏索引有序性，导致全表扫描。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (121, 'MySQL 默认隔离级别是可重复读（REPEATABLE READ）。', 'JUDGE', 0, 19, 'HARD', 2, 'InnoDB 默认 RR，通过 MVCC 和间隙锁基本解决幻读。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (122, '覆盖索引可以避免回表查询。', 'JUDGE', 0, 19, 'HARD', 2, '覆盖索引包含查询所需全部字段，直接从索引取值，无需回聚簇索引。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (123, 'LIKE \'%abc\' 可以使用索引。', 'JUDGE', 0, 19, 'HARD', 2, '通配符在前缀时索引失效；\'abc%\' 前缀匹配可以走索引。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (124, '第二范式要求消除非主属性对码的部分依赖。', 'JUDGE', 0, 19, 'HARD', 2, '2NF 在 1NF 基础上消除部分函数依赖，3NF 再消除传递依赖。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (125, 'InnoDB 支持行级锁和表级锁。', 'JUDGE', 0, 19, 'HARD', 2, 'InnoDB 支持行锁、间隙锁、临键锁，并有意向锁等表级锁。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (126, 'MVCC 通过版本号和 undo 日志实现读写不阻塞。', 'JUDGE', 0, 19, 'HARD', 2, 'MVCC 利用隐藏版本列和 undo log 版本链，配合 ReadView 实现快照读不加锁。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (127, '死锁是两个事务互相持有对方需要的锁并等待。', 'JUDGE', 0, 19, 'HARD', 2, '死锁导致事务互相等待无法推进，MySQL 会检测并回滚其中一个事务。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (128, 'EXPLAIN 可以查看 SQL 的执行计划。', 'JUDGE', 0, 19, 'EASY', 2, 'EXPLAIN 输出访问类型、索引使用、扫描行数等信息，用于 SQL 优化。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (129, 'HTML 是一种编程语言。', 'JUDGE', 0, 20, 'EASY', 2, 'HTML 是超文本标记语言，描述页面结构，不具备编程逻辑。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (130, 'HTTP 状态码 404 表示服务器内部错误。', 'JUDGE', 0, 20, 'EASY', 2, '404 表示资源未找到；500 才是服务器内部错误。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (131, 'CSS 用于控制网页的样式。', 'JUDGE', 0, 20, 'EASY', 2, 'CSS 负责颜色、字体、布局等页面表现层样式。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (132, 'HTTP 是无状态协议。', 'JUDGE', 0, 20, 'MEDIUM', 2, 'HTTP 本身不保存状态，需借助 Cookie/Session/Token 维持会话。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (133, 'Cookie 的存储大小没有限制。', 'JUDGE', 0, 20, 'MEDIUM', 2, 'Cookie 单个一般约 4KB，且有数量和总大小限制。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (134, 'JavaScript 中 let 声明的变量存在块级作用域。', 'JUDGE', 0, 20, 'MEDIUM', 2, 'let/const 是块级作用域，只在所在代码块内有效。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (135, 'Cookie 存储在客户端，Session 存储在服务端。', 'JUDGE', 0, 20, 'MEDIUM', 2, 'Cookie 由浏览器保存，Session 数据在服务端，通过 SessionID 关联。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (136, 'HTTPS 默认端口是 443。', 'JUDGE', 0, 20, 'MEDIUM', 2, 'HTTP 默认 80，HTTPS 默认 443。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (137, 'Vue3 的响应式基于 Object.defineProperty 实现。', 'JUDGE', 0, 20, 'HARD', 2, 'Vue3 使用 Proxy 实现响应式，Vue2 才使用 Object.defineProperty。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (138, '防抖是固定频率执行，节流是停止触发后延迟执行。', 'JUDGE', 0, 20, 'HARD', 2, '说反了：节流按固定频率执行，防抖在停止触发一段时间后执行。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (139, 'axios 是基于 Promise 的 HTTP 客户端。', 'JUDGE', 0, 20, 'EASY', 2, 'axios 在浏览器和 Node 中均可使用，返回 Promise，支持拦截器。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (140, 'Java 中 break 可以终止循环。', 'JUDGE', 0, 21, 'EASY', 2, 'break 终止当前循环或 switch；continue 跳过本次迭代。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (141, 'final 修饰的类不能被继承。', 'JUDGE', 0, 21, 'EASY', 2, 'final 类不可继承，如 String 类就是 final 类。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (142, '静态代码块在创建对象时执行。', 'JUDGE', 0, 21, 'MEDIUM', 2, '静态代码块在类加载时执行且只执行一次，与是否创建对象无关。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (143, 'StringBuffer 是线程安全的。', 'JUDGE', 0, 21, 'MEDIUM', 2, 'StringBuffer 方法加了 synchronized，线程安全；StringBuilder 非线程安全。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (144, '使用 throw 关键字可以抛出异常对象。', 'JUDGE', 0, 21, 'MEDIUM', 2, 'throw new XxxException() 主动抛出异常；throws 用于声明。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (145, 'Java 中 goto 是关键字，可以直接使用。', 'JUDGE', 0, 21, 'MEDIUM', 2, 'goto 是保留字但未被使用，写了会编译报错。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (146, 'StringBuilder 在单线程拼接场景下效率高于 StringBuffer。', 'JUDGE', 0, 21, 'HARD', 2, 'StringBuilder 无锁开销，单线程下更快；多线程需用 StringBuffer 或自加锁。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (147, 'try-with-resources 可以自动关闭实现了 AutoCloseable 的资源。', 'JUDGE', 0, 21, 'HARD', 2, 'try(资源) 语句结束后自动调用 close()，JDK7 引入。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (148, '一个源文件中可以包含多个 public 类。', 'JUDGE', 0, 21, 'EASY', 2, '一个源文件最多一个 public 类，且类名与文件名一致。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (149, 'TCP 是面向连接的协议。', 'JUDGE', 0, 24, 'EASY', 2, 'TCP 通过三次握手建立连接、四次挥手断开，提供可靠传输。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (150, 'UDP 提供可靠的传输服务。', 'JUDGE', 0, 24, 'EASY', 2, 'UDP 无连接、不可靠、不保证顺序，但开销小、速度快。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (151, 'TCP 三次握手的第二步是服务器发送 SYN+ACK。', 'JUDGE', 0, 24, 'MEDIUM', 2, '第一步客户端 SYN，第二步服务器 SYN+ACK，第三步客户端 ACK。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (152, 'HTTP 协议基于 TCP 传输。', 'JUDGE', 0, 24, 'MEDIUM', 2, 'HTTP 在 TCP 之上传输（HTTP/3 基于 QUIC/UDP）。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (153, '线程池中任务数超过核心线程数时，会立即创建新线程执行任务。', 'JUDGE', 0, 24, 'HARD', 2, '超过核心线程数时任务先进入工作队列排队，队列满才创建新线程。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (154, 'synchronized 是 JVM 层面的锁。', 'JUDGE', 0, 24, 'EASY', 2, 'synchronized 由 JVM 通过 monitor 机制实现；ReentrantLock 基于 AQS 的 JUC 锁。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (155, 'JVM 中堆是线程共享的内存区域。', 'JUDGE', 0, 25, 'EASY', 2, '堆和方法区线程共享；栈、程序计数器线程私有。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (156, 'JDK8 之后方法区由元空间（Metaspace）实现，使用本地内存。', 'JUDGE', 0, 25, 'EASY', 2, 'JDK8 起永久代被移除，元空间使用本地内存，字符串常量池移入堆。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (157, '虚拟机栈是线程私有的。', 'JUDGE', 0, 25, 'MEDIUM', 2, '每个线程有独立虚拟机栈，存放栈帧（局部变量、操作数栈等）。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (158, 'JDK9 之后 G1 是 HotSpot 默认垃圾收集器。', 'JUDGE', 0, 25, 'MEDIUM', 2, 'JDK9 起 G1 成为默认收集器，支持可预测停顿时间。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (159, 'ReentrantLock 支持公平锁和非公平锁。', 'JUDGE', 0, 25, 'HARD', 2, 'ReentrantLock 构造器可指定 fair，默认非公平锁。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (160, 'ThreadLocal 使用后不调用 remove 可能会造成内存泄漏。', 'JUDGE', 0, 25, 'HARD', 2, '线程池场景下线程长期存活，key 弱引用被回收后 value 仍被强引用，需 remove 清理。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (161, '类加载的双亲委派机制可以防止核心类被篡改。', 'JUDGE', 0, 25, 'HARD', 2, '加载请求逐级上抛，核心类由启动类加载器加载，保证核心类一致和安全。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (162, '单例模式属于创建型设计模式。', 'JUDGE', 0, 26, 'MEDIUM', 2, '创建型模式包括单例、工厂、建造者、原型等。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (163, 'CAP 理论中 P 代表持久性。', 'JUDGE', 0, 26, 'HARD', 2, 'CAP 中 P 是分区容错性（Partition tolerance），持久性是 ACID 中的 D。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (164, '消息队列可以用于削峰填谷。', 'JUDGE', 0, 26, 'HARD', 2, 'MQ 缓冲瞬时流量，平滑下游压力，同时实现解耦和异步。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (165, '微服务架构中服务之间通过线程直接调用，无需网络。', 'JUDGE', 0, 26, 'HARD', 2, '微服务是分布式部署，服务间通过 HTTP/RPC 网络调用。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (166, 'Maven 中 pom.xml 位于项目根目录。', 'JUDGE', 0, 29, 'EASY', 2, 'pom.xml 是 Maven 项目核心配置文件，位于根目录。', '2026-10-05 05:11:34', '2026-10-05 05:11:34', 0);
INSERT INTO `questions` VALUES (167, 'mvn clean 可以清理 target 目录。', 'JUDGE', 0, 29, 'EASY', 2, 'clean 阶段删除 target 下的构建产物。', '2026-10-05 05:11:35', '2026-10-05 05:11:35', 0);
INSERT INTO `questions` VALUES (168, 'Maven 坐标由 groupId、artifactId、version 组成。', 'JUDGE', 0, 29, 'MEDIUM', 2, '坐标唯一标识一个构件，加上 packaging 可进一步区分。', '2026-10-05 05:11:35', '2026-10-05 05:11:35', 0);
INSERT INTO `questions` VALUES (169, 'Maven 的默认打包方式是 war。', 'JUDGE', 0, 29, 'MEDIUM', 2, '默认打包方式是 jar，配置 <packaging>war</packaging> 才能打 war 包。', '2026-10-05 05:11:35', '2026-10-05 05:11:35', 0);
INSERT INTO `questions` VALUES (170, 'Maven 有 clean、default、site 三套生命周期。', 'JUDGE', 0, 29, 'HARD', 2, '三套生命周期各自包含多个按顺序执行的阶段。', '2026-10-05 05:11:35', '2026-10-05 05:11:35', 0);
INSERT INTO `questions` VALUES (171, '依赖 scope 为 provided 时，运行期由运行环境提供。', 'JUDGE', 0, 29, 'HARD', 2, 'provided 编译期可用，打包不包含，运行期由容器（如 Tomcat）提供。', '2026-10-05 05:11:35', '2026-10-05 05:11:35', 0);
INSERT INTO `questions` VALUES (172, '使用 <dependencyManagement> 可以统一管理依赖版本。', 'JUDGE', 0, 29, 'EASY', 2, '父 pom 中用 dependencyManagement 声明版本，子模块引用时可不写版本号。', '2026-10-05 05:11:35', '2026-10-05 05:11:35', 0);
INSERT INTO `questions` VALUES (173, 'Git 是分布式版本控制系统。', 'JUDGE', 0, 30, 'EASY', 2, '每个开发者本地都有完整仓库副本，可离线提交。', '2026-10-05 05:11:35', '2026-10-05 05:11:35', 0);
INSERT INTO `questions` VALUES (174, 'git add 用于把修改提交到远程仓库。', 'JUDGE', 0, 30, 'EASY', 2, 'git add 只是加入暂存区；git commit 生成提交，git push 推送到远程。', '2026-10-05 05:11:35', '2026-10-05 05:11:35', 0);
INSERT INTO `questions` VALUES (175, 'git pull 相当于 git fetch 加 git merge。', 'JUDGE', 0, 30, 'MEDIUM', 2, 'git pull 默认先 fetch 远程更新，再 merge 到当前分支。', '2026-10-05 05:11:35', '2026-10-05 05:11:35', 0);
INSERT INTO `questions` VALUES (176, 'git status 可以查看工作区状态。', 'JUDGE', 0, 30, 'MEDIUM', 2, 'git status 显示工作区与暂存区的改动情况。', '2026-10-05 05:11:35', '2026-10-05 05:11:35', 0);
INSERT INTO `questions` VALUES (177, 'git reset --hard 会丢弃工作区和暂存区的修改。', 'JUDGE', 0, 30, 'HARD', 2, '--hard 强制回退到指定提交，未提交的改动会丢失，需谨慎使用。', '2026-10-05 05:11:35', '2026-10-05 05:11:35', 0);
INSERT INTO `questions` VALUES (178, 'git commit --amend 可以修改最近一次提交。', 'JUDGE', 0, 30, 'EASY', 2, '--amend 会替换最近一次提交（改写历史），可用于补充漏提交文件或修改提交信息。', '2026-10-05 05:11:35', '2026-10-05 05:11:35', 0);
INSERT INTO `questions` VALUES (179, 'git rebase 会改写提交历史。', 'JUDGE', 0, 30, 'HARD', 2, 'rebase 重新应用提交生成新提交对象，会改变提交哈希；操作共享分支需谨慎。', '2026-10-05 05:11:35', '2026-10-05 05:11:35', 0);
INSERT INTO `questions` VALUES (180, 'Java中用于定义常量（不可变变量）的关键字是？', 'CHOICE', 1, 16, 'EASY', 5, 'final 修饰的变量一旦赋值便不可修改；const 是 Java 的保留字但并未使用；static 表示类级别共享，public 是访问修饰符。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (181, '下列哪个是 Java 的合法标识符？', 'CHOICE', 1, 16, 'EASY', 5, '标识符不能以数字开头（2name 非法），class 是关键字，my-name 含连字符非法，_name 以下划线开头合法。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (182, 'int 类型变量的默认值是？', 'CHOICE', 1, 16, 'EASY', 5, '基本数据类型 int 的默认值是 0；null 是引用类型的默认值，false 是 boolean 的默认值。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (183, '下列哪种数据类型可以存储小数？', 'CHOICE', 1, 16, 'EASY', 5, 'double 是浮点类型可存储小数；int/long 是整型，char 是字符型。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (184, '下列运算符中，用于判断两个值是否相等的是？', 'CHOICE', 0, 16, 'EASY', 5, NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (185, 'while 循环与 do-while 循环的主要区别是？', 'CHOICE', 1, 16, 'EASY', 5, 'do-while 先执行循环体再判断条件，因此至少执行一次；while 先判断条件，可能一次都不执行。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (186, 'String s = \"abc\"; s.concat(\"d\"); 执行后 s 的值是？', 'CHOICE', 1, 16, 'EASY', 5, 'String 是不可变对象，concat 返回新字符串但原引用 s 仍指向 \"abc\"，需要重新赋值才会改变。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (187, 'int[] arr = new int[3]; 则 arr.length 的值是？', 'CHOICE', 1, 16, 'EASY', 5, 'new int[3] 创建长度为 3 的数组，length 属性值为 3，数组下标范围为 0~2。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (188, '下列哪个类位于 java.util 包中？', 'CHOICE', 1, 16, 'EASY', 5, 'ArrayList 位于 java.util 包；String/Integer/System 都在 java.lang 包。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (189, '下列哪个是 Java 的基本数据类型？', 'CHOICE', 1, 16, 'EASY', 5, 'Java 有 8 种基本类型：byte/short/int/long/float/double/char/boolean；其余均为引用类型。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (190, '接口中方法的默认修饰符是？', 'CHOICE', 1, 16, 'EASY', 5, '接口中的方法默认是 public abstract（JDK8 前），实现类必须用 public 访问级别实现。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (191, '下列哪个关键字用于实现继承？', 'CHOICE', 1, 16, 'EASY', 5, '类继承类、接口继承接口用 extends；类实现接口用 implements。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (192, 'Java 程序 main 方法的正确签名是？', 'CHOICE', 1, 16, 'EASY', 5, 'main 必须是 public static void，参数为 String 数组，它是 JVM 启动程序的入口。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (193, '下列哪个语句用于立即终止当前循环？', 'CHOICE', 1, 16, 'EASY', 5, 'break 终止当前循环；continue 跳过本次迭代进入下一次；return 结束整个方法。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (194, '下列哪种集合可以存储不重复的元素？', 'CHOICE', 1, 16, 'EASY', 5, 'Set 不允许重复元素；List 允许重复且有序；Map 存键值对；Queue 是队列。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (195, '下列哪个不是访问修饰符？', 'CHOICE', 1, 16, 'EASY', 5, '访问修饰符有 public/protected/默认/private 四种；final 是修饰类、方法、变量的关键字。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (196, 'int a = 5; a += 3; 执行后 a 的值是？', 'CHOICE', 1, 16, 'EASY', 5, 'a += 3 等价于 a = a + 3，5 + 3 = 8。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (197, '下列哪个是合法的字符串字面量？', 'CHOICE', 1, 16, 'EASY', 5, 'Java 字符串字面量使用双引号括起；单引号用于 char 字符字面量。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (198, '下列哪个关键字用于导入其他包中的类？', 'CHOICE', 1, 16, 'EASY', 5, 'import 用于导入类；include/using 是 C 语言和 C# 的语法；require 不是 Java 关键字。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (199, '下列哪个是编译期必须处理的受检异常（checked exception）？', 'CHOICE', 1, 16, 'EASY', 5, 'IOException 属于受检异常，必须捕获或声明抛出；其余三个都是运行时异常。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (200, 'Maven 中 pom.xml 文件的作用是？', 'CHOICE', 1, 29, 'EASY', 5, 'pom.xml 是 Maven 项目的核心配置文件，声明坐标、依赖、插件等构建信息。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (201, 'Maven 中哪个命令用于编译项目源码？', 'CHOICE', 1, 29, 'EASY', 5, 'mvn compile 编译主源码；clean 清理 target；test 运行测试；package 打包。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (202, 'Git 中哪个命令用于查看工作区与暂存区的状态？', 'CHOICE', 1, 30, 'EASY', 5, 'git status 查看当前工作区状态；commit 提交；push 推送；log 查看提交历史。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (203, 'Git 中哪个命令用于将暂存区内容提交到本地仓库？', 'CHOICE', 1, 30, 'EASY', 5, 'git commit 将暂存区内容生成一次提交；add 只把改动加入暂存区；push 推送到远程。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (204, '下列哪个是 Git 的远程仓库推送命令？', 'CHOICE', 1, 30, 'EASY', 5, 'git push 将本地提交推送到远程仓库；其余命令与远程推送无关。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (205, 'HTML 中哪个标签用于创建超链接？', 'CHOICE', 1, 20, 'EASY', 5, '<a> 定义超链接；<img> 是图片；<p> 是段落；<div> 是块级容器。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (206, 'CSS 中哪个属性用于设置文字颜色？', 'CHOICE', 1, 20, 'EASY', 5, 'color 设置文字颜色；font-size 设置字号；background 设置背景；text-align 设置对齐。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (207, '下列哪个集合类的底层数据结构是数组？', 'CHOICE', 1, 16, 'MEDIUM', 5, 'ArrayList 底层是 Object 数组，支持随机访问；LinkedList 底层是双向链表。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (208, 'HashSet 判断元素是否重复主要依据？', 'CHOICE', 1, 16, 'MEDIUM', 5, 'HashSet 先通过 hashCode 定位桶，再用 equals 判断是否相同，因此重写 equals 必须重写 hashCode。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (209, '下列哪个 Map 实现类允许 key 为 null？', 'CHOICE', 1, 17, 'MEDIUM', 5, 'HashMap 允许一个 null key 和多个 null value；Hashtable/TreeMap/ConcurrentHashMap 均不允许 null key。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (210, '下列哪个泛型写法是正确的？', 'CHOICE', 1, 17, 'MEDIUM', 5, '泛型只能使用引用类型，不能使用基本类型，因此 int 不行、Integer 可以；菱形语法 new ArrayList<>() 自 JDK7 起合法。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (211, '下列哪种方式可以正确创建并启动线程？', 'CHOICE', 1, 17, 'MEDIUM', 5, '继承 Thread、实现 Runnable、实现 Callable（配合 FutureTask/线程池）都是创建线程任务的方式。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (212, 'synchronized 关键字的主要作用是？', 'CHOICE', 1, 17, 'MEDIUM', 5, 'synchronized 提供互斥锁，保证同一时刻只有一个线程执行临界区，并保证可见性。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (213, '下列哪两个类是 Java 字节流 IO 的基类？', 'CHOICE', 1, 17, 'MEDIUM', 5, '字节流以 InputStream/OutputStream 为基类，字符流以 Reader/Writer 为基类。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (214, '使用 try-with-resources（try(资源){}）的主要好处是？', 'CHOICE', 1, 17, 'MEDIUM', 5, 'try-with-resources 会保证实现 AutoCloseable 的资源在语句结束后自动关闭，简化资源管理代码。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (215, 'Spring 中用于依赖注入的常用注解是？', 'CHOICE', 1, 18, 'MEDIUM', 5, '@Autowired 按类型自动注入依赖；@Override 标记重写；@Test 是单元测试注解。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (216, 'Spring 控制反转（IoC）的核心思想是？', 'CHOICE', 1, 18, 'MEDIUM', 5, 'IoC 将对象的创建和依赖管理交给 Spring 容器，实现解耦；DI 是 IoC 的一种实现方式。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (217, 'Spring AOP 主要用于？', 'CHOICE', 1, 18, 'MEDIUM', 5, 'AOP 将日志、事务、权限等横切关注点与业务逻辑解耦，通过代理在目标方法前后织入增强逻辑。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (218, 'Spring 中 Bean 的默认作用域是？', 'CHOICE', 1, 18, 'MEDIUM', 5, '默认作用域是 singleton，容器中每个 Bean 只有一个实例；prototype 每次获取都新建实例。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (219, 'SpringMVC 中可用于接收请求参数的注解包括？', 'CHOICE', 1, 18, 'MEDIUM', 5, '@RequestBody 接收 JSON 请求体，@RequestParam 接收查询参数，@PathVariable 接收路径变量。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (220, 'MyBatis 中哪个注解用于执行查询操作？', 'CHOICE', 1, 19, 'MEDIUM', 5, '@Select 映射查询语句；@Insert/@Update/@Delete 分别对应增、改、删。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (221, 'SQL 中哪个关键字用于对查询结果排序？', 'CHOICE', 1, 19, 'MEDIUM', 5, 'ORDER BY 对结果集排序；WHERE 行级筛选；GROUP BY 分组；LIMIT 限制返回行数。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (222, 'SQL 中用于去除重复行的关键字是？', 'CHOICE', 1, 19, 'MEDIUM', 5, 'SELECT DISTINCT 列名 可去除结果中的重复行；UNIQUE 是约束关键字。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (223, 'JDBC 中用于获取数据库连接的类是？', 'CHOICE', 1, 19, 'MEDIUM', 5, 'DriverManager.getConnection(url,user,password) 获取 Connection；Statement 执行 SQL；ResultSet 承载结果。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (224, '数据库事务 ACID 特性中的 A 代表？', 'CHOICE', 1, 19, 'MEDIUM', 5, 'ACID 分别为原子性、一致性、隔离性、持久性，A 对应原子性，事务内的操作要么全成功要么全失败。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (225, 'HTTP 状态码 404 表示？', 'CHOICE', 1, 20, 'MEDIUM', 5, '404 Not Found 表示资源不存在；500 是服务器内部错误；200 是成功；3xx 是重定向。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (226, 'HTTP GET 请求的特点之一是？', 'CHOICE', 1, 20, 'MEDIUM', 5, 'GET 参数拼接在 URL 查询串中，适合查询类请求；POST 参数通常在请求体中。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (227, 'JavaScript（ES6）中用于声明变量的关键字是？', 'CHOICE', 1, 20, 'MEDIUM', 5, 'ES6 引入 let（块级作用域、可重新赋值）和 const（块级作用域、不可重新赋值）；var 存在函数作用域与变量提升问题。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (228, '下列哪个不属于 Spring 框架的组成部分？', 'CHOICE', 1, 20, 'MEDIUM', 5, 'Spring 包含 Core、MVC、JDBC、AOP 等模块，不存在 Spring Windows 模块。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (229, 'MyBatis 中 SQL 映射文件的根标签是？', 'CHOICE', 1, 20, 'MEDIUM', 5, '映射文件根标签是 <mapper>，其下包含 <select>/<insert>/<update>/<delete> 等子标签。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (230, '下列哪些方法属于 Object 类？', 'CHOICE', 1, 16, 'MEDIUM', 5, 'Object 类定义了 toString、equals、hashCode、getClass 等方法，所有类都继承自 Object。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (231, '下列哪个集合适合频繁在中间位置插入和删除？', 'CHOICE', 1, 16, 'MEDIUM', 5, 'LinkedList 基于双向链表，中间插入删除只需调整指针，复杂度 O(1)；ArrayList 需要移动元素。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (232, '下列哪些是 Java 8 引入的新特性？', 'CHOICE', 1, 16, 'MEDIUM', 5, 'Java 8 引入 Lambda、Stream、方法引用、Optional、接口默认方法等重大特性。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (233, '下列哪个类常用于日期时间的格式化？', 'CHOICE', 1, 16, 'MEDIUM', 5, 'SimpleDateFormat 负责 Date 与字符串之间的格式化和解析；Date/Calendar 主要用于表示和操作时间。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (234, 'volatile 关键字的作用是？', 'CHOICE', 1, 16, 'HARD', 5, 'volatile 保证变量修改对其他线程可见，并通过内存屏障禁止指令重排；但不保证复合操作的原子性。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (235, 'JDK8 中 ConcurrentHashMap 保证线程安全的主要机制是？', 'CHOICE', 1, 16, 'HARD', 5, 'JDK8 的 ConcurrentHashMap 采用 CAS 更新计数，并对桶内链表/红黑树使用 synchronized 进行细粒度加锁。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (236, 'JVM 中哪个内存区域用于存储类的元信息？', 'CHOICE', 1, 16, 'HARD', 5, 'JDK8 后类的元信息存储在元空间（Metaspace，本地内存实现的方法区）；堆主要存放对象实例。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (237, 'JDK9 之后 HotSpot JVM 的默认垃圾收集器是？', 'CHOICE', 1, 16, 'HARD', 5, 'JDK9 起 G1 成为默认垃圾收集器，兼顾停顿时间与吞吐量；JDK11 后也有 ZGC 等选择。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (238, 'HotSpot JVM 中判断对象是否可回收主要采用的算法是？', 'CHOICE', 1, 16, 'HARD', 5, 'HotSpot 采用可达性分析，从 GC Roots 出发遍历对象引用图，不可达的对象判定为可回收；标记-清除/复制是回收算法而非判定算法。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (239, '线程池的核心参数包括？', 'CHOICE', 1, 16, 'HARD', 5, 'ThreadPoolExecutor 核心参数包括核心线程数、最大线程数、工作队列、存活时间、拒绝策略等。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (240, '下列哪个锁属于 JVM 层面的锁？', 'CHOICE', 1, 16, 'HARD', 5, 'synchronized 由 JVM 通过 monitorenter/monitorexit 实现；ReentrantLock/ReadWriteLock/StampedLock 都是基于 AQS 的 JUC 锁。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (241, '下列哪个类常用于实现生产者-消费者模式？', 'CHOICE', 1, 16, 'HARD', 5, 'ArrayBlockingQueue 是有界阻塞队列，put/take 会阻塞，天然适合生产者-消费者场景。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (242, 'Spring 事务传播行为中 REQUIRED 的含义是？', 'CHOICE', 1, 16, 'HARD', 5, 'REQUIRED 是默认传播行为：存在事务则加入，不存在则新建，适用于大多数业务场景。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (243, 'Spring 默认解决 Bean 循环依赖的机制是？', 'CHOICE', 1, 16, 'HARD', 5, 'Spring 通过三级缓存（singletonObjects、earlySingletonObjects、singletonFactories）解决单例 Bean 的循环依赖，且仅限属性注入。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (244, 'SpringBoot 中标识启动类的注解是？', 'CHOICE', 1, 16, 'HARD', 5, '@SpringBootApplication 是 @Configuration + @EnableAutoConfiguration + @ComponentScan 的组合注解，用于标注启动类。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (245, 'Spring AOP 支持的通知（Advice）类型包括？', 'CHOICE', 1, 16, 'HARD', 5, 'AOP 通知类型包括前置、后置、返回后、异常后、环绕五种，@Around 可覆盖其余类型场景。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (246, 'MySQL InnoDB 存储引擎的默认事务隔离级别是？', 'CHOICE', 1, 16, 'HARD', 5, 'MySQL InnoDB 默认隔离级别为 REPEATABLE READ（可重复读），并通过 MVCC 和间隙锁解决幻读问题。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (247, '下列哪种索引可以避免回表查询？', 'CHOICE', 1, 16, 'HARD', 5, '覆盖索引的索引列包含查询所需的全部字段，直接从索引中取值，无需回表访问聚簇索引。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (248, '下列哪个是 SQL 查询优化的正确原则？', 'CHOICE', 1, 16, 'HARD', 5, '在索引列上使用函数会导致索引失效；应只查需要的列；索引过多会增加写入和维护成本。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (249, '下列哪个写法会导致索引失效？', 'CHOICE', 1, 16, 'HARD', 5, '对索引列做函数运算会破坏索引有序性导致索引失效；LIKE 前缀匹配（\'abc%\'）仍可走索引。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (250, '分布式系统中常用的最终一致性方案是？', 'CHOICE', 1, 16, 'HARD', 5, '本地消息表与消息队列是典型的最终一致性方案，兼顾可用性与性能；两阶段提交性能差且存在阻塞风险。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (251, 'CAP 定理中的三个要素是？', 'CHOICE', 1, 16, 'HARD', 5, 'CAP 指 Consistency（一致性）、Availability（可用性）、Partition tolerance（分区容错性），三者不可同时完全满足。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (252, '下列哪些方案可以解决缓存穿透问题？', 'CHOICE', 1, 16, 'HARD', 5, '缓存穿透是查询不存在的数据；缓存空值、布隆过滤器、参数校验与限流都能有效缓解。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (253, '下列哪个是设置 JVM 最大堆内存的启动参数？', 'CHOICE', 1, 16, 'HARD', 5, '-Xmx 设置最大堆内存，-Xms 设置初始堆内存；-Xss 设置线程栈大小；-XX:PermSize 是 JDK7 前的永久代参数。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (254, 'JVM 类加载过程的正确顺序是？', 'CHOICE', 1, 16, 'HARD', 5, '类加载五个阶段依次为：加载、验证、准备、解析、初始化，其中解析在特殊场景下可推迟到初始化后。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (255, '下列哪个设计模式用于保证类只有一个实例？', 'CHOICE', 1, 16, 'HARD', 5, '单例模式保证一个类仅有一个实例并提供全局访问点；观察者/策略/装饰器用于不同行为场景。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (256, '下列哪个是分布式锁的常见实现方式？', 'CHOICE', 1, 16, 'HARD', 5, 'Redis（SETNX+过期时间+看门狗）、数据库（唯一约束/悲观锁）、ZooKeeper（临时顺序节点）都是分布式锁的常用实现。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (257, '解决消息重复消费（幂等）的常用方法包括？', 'CHOICE', 1, 16, 'HARD', 5, '唯一键约束、状态机校验、幂等表、Redis SETNX 等都是保证消费幂等的常用手段。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (258, '缓存雪崩的主要成因是？', 'CHOICE', 1, 16, 'HARD', 5, '缓存雪崩指大量 Key 同时过期或 Redis 宕机导致请求全部打到数据库；可通过随机过期时间、多级缓存、限流降级等缓解。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (259, 'JVM 调优的常见目标包括？', 'CHOICE', 1, 16, 'HARD', 5, 'JVM 调优围绕减少 GC 停顿、提升吞吐、控制堆内存使用等目标，结合监控数据针对性地调整参数。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (260, 'Java 是一种跨平台的编程语言，其跨平台能力主要依靠 JVM 实现。', 'JUDGE', 0, 16, 'EASY', 5, 'Java 源码编译为字节码，由不同平台上的 JVM 解释执行，从而实现一次编译、处处运行。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (261, '一个 Java 源文件中可以包含多个 public 类。', 'JUDGE', 0, 16, 'EASY', 5, '一个源文件中最多只能有一个 public 类，且该类名必须与文件名一致。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (262, 'int 类型的取值范围大于 long 类型。', 'JUDGE', 0, 16, 'EASY', 5, 'long 占 8 字节，取值范围远大于占 4 字节的 int。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (263, 'String 是 Java 的基本数据类型。', 'JUDGE', 0, 16, 'EASY', 5, 'String 是引用类型（类），Java 基本类型只有 8 种。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (264, 'Java 中数组的下标从 0 开始。', 'JUDGE', 0, 16, 'EASY', 5, '数组第一个元素下标为 0，最后一个元素下标为 length-1。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (265, 'break 语句可以用于终止循环。', 'JUDGE', 0, 16, 'EASY', 5, 'break 用于跳出当前循环或 switch 块，continue 则跳过本次迭代。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (266, 'JDK7 之后，switch 语句可以用于 String 类型。', 'JUDGE', 0, 16, 'EASY', 5, 'JDK7 起 switch 支持 String，编译器通过 hashCode 和 equals 实现。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (267, 'Java 中一个类只能继承一个父类，即单继承。', 'JUDGE', 0, 16, 'EASY', 5, 'Java 类是单继承的，但接口可以多实现、接口之间可以多继承。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (268, 'Java 接口中可以定义抽象方法。', 'JUDGE', 0, 16, 'EASY', 5, '接口用于定义抽象规范，方法默认为 public abstract，由实现类实现。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (269, 'Maven 项目的 pom.xml 配置文件通常放在项目根目录。', 'JUDGE', 0, 16, 'EASY', 5, 'pom.xml 位于项目根目录，是 Maven 构建与依赖管理的核心文件。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (270, 'git add 命令用于把修改提交到远程仓库。', 'JUDGE', 0, 16, 'EASY', 5, 'git add 只是把修改加入暂存区，git commit 生成提交，git push 才推送到远程仓库。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (271, 'git clone 可以从远程仓库克隆一份完整的代码副本。', 'JUDGE', 0, 30, 'EASY', 5, 'git clone 将远程仓库完整克隆到本地，包含全部历史记录。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (272, 'Java 中所有类都直接或间接继承自 Object 类。', 'JUDGE', 0, 30, 'EASY', 5, 'Object 是所有类的根父类，未显式继承的类默认继承 Object。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (273, '对于对象类型，== 比较的是引用地址，equals 默认比较内容。', 'JUDGE', 0, 30, 'EASY', 5, NULL, '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (274, 'CSS 用于控制网页的样式和布局。', 'JUDGE', 0, 30, 'EASY', 5, 'CSS（层叠样式表）负责颜色、字体、间距、布局等页面表现层。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (275, 'JavaScript 与 Java 是同一种编程语言。', 'JUDGE', 0, 30, 'EASY', 5, '两者只是名称相似，语法和运行环境完全不同，无直接关系。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (276, 'try-catch 语句用于捕获并处理程序运行中的异常。', 'JUDGE', 0, 30, 'EASY', 5, 'try 块包裹可能抛异常的代码，catch 块捕获并处理对应类型的异常。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (277, 'ArrayList 和 LinkedList 都是 List 接口的实现类。', 'JUDGE', 0, 30, 'MEDIUM', 5, 'ArrayList 基于数组，LinkedList 基于双向链表，两者都实现了 List 接口，保持插入顺序且允许重复。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (278, 'HashMap 允许 key 为 null，而 Hashtable 不允许。', 'JUDGE', 0, 16, 'MEDIUM', 5, 'HashMap 允许一个 null key；Hashtable 任何 null key/value 都会抛 NullPointerException。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (279, 'HashSet 保证元素的存储顺序与插入顺序一致。', 'JUDGE', 0, 16, 'MEDIUM', 5, 'HashSet 基于哈希表，元素无序；要保持插入顺序应使用 LinkedHashSet。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (280, 'StringBuffer 是线程安全的，StringBuilder 不是。', 'JUDGE', 0, 16, 'MEDIUM', 5, 'StringBuffer 的方法加了 synchronized 保证线程安全，StringBuilder 未加锁、性能更高。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (281, 'Java 异常体系分为受检异常（checked）和非受检异常（unchecked）。', 'JUDGE', 0, 16, 'MEDIUM', 5, '受检异常必须捕获或声明抛出，运行时异常（RuntimeException 及其子类）为非受检异常。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (282, 'Spring 中 @Autowired 默认按类型进行依赖注入。', 'JUDGE', 0, 16, 'MEDIUM', 5, '@Autowired 默认 byType 注入，匹配到多个候选时按名称和 @Primary 等策略降级。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (283, 'Spring 中 singleton 作用域的 Bean 一定是线程安全的。', 'JUDGE', 0, 16, 'MEDIUM', 5, 'singleton 只保证容器中只有一个实例，若 Bean 有可变状态且被并发访问，仍可能出现线程安全问题。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (284, 'Spring AOP 可以把日志、事务等横切逻辑与业务代码解耦。', 'JUDGE', 0, 16, 'MEDIUM', 5, 'AOP 通过动态代理把横切关注点织入业务方法，业务类本身无需关注这些逻辑。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (285, 'SpringMVC 中 DispatcherServlet 是整个请求处理流程的前端控制器。', 'JUDGE', 0, 16, 'MEDIUM', 5, 'DispatcherServlet 接收所有请求，根据 HandlerMapping 分发到 Controller，再经视图解析返回响应。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (286, 'MyBatis 中 #{} 与 ${} 在 SQL 注入防护方面效果相同。', 'JUDGE', 0, 16, 'MEDIUM', 5, '#{} 使用预编译占位符，安全防注入；${} 直接拼接字符串，存在 SQL 注入风险，应尽量避免。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (287, 'SQL 中 WHERE 用于行级筛选，HAVING 用于分组后的条件筛选。', 'JUDGE', 0, 16, 'MEDIUM', 5, 'WHERE 在分组前过滤行，HAVING 在 GROUP BY 分组后过滤分组结果，且常与聚合函数搭配。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (288, '数据库事务隔离级别越高，并发性能一定越好。', 'JUDGE', 0, 16, 'MEDIUM', 5, '隔离级别越高（如 SERIALIZABLE），加锁越重、并发能力越低；要在一致性与性能之间权衡。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (289, '索引可以加快查询速度，但会增加写入（增删改）的开销。', 'JUDGE', 0, 16, 'MEDIUM', 5, '索引通过额外存储和更新维护换取查询加速，写入时需同步维护索引结构。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (290, 'HTTP 是一种无状态协议。', 'JUDGE', 0, 16, 'MEDIUM', 5, 'HTTP 本身不保存客户端状态，需要借助 Cookie/Session/Token 等机制维持会话。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (291, 'Cookie 存储在客户端，Session 信息存储在服务端。', 'JUDGE', 0, 16, 'MEDIUM', 5, 'Cookie 由浏览器保存，Session 数据存于服务端，通过 SessionID 关联。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (292, 'JavaScript 中 let 声明的变量具有块级作用域。', 'JUDGE', 0, 16, 'MEDIUM', 5, 'let 和 const 都是块级作用域，只在所在代码块内有效，且不存在 var 的变量提升问题。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (293, 'Java 中 finally 块中的代码在正常情况下一定会执行。', 'JUDGE', 0, 16, 'MEDIUM', 5, '除非 JVM 退出（如 System.exit）或线程被强杀，否则无论是否发生异常 finally 都会执行。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (294, '由于类型擦除，List<String> 与 List<Integer> 在运行时的 Class 是相同的。', 'JUDGE', 0, 16, 'MEDIUM', 5, '泛型信息在编译期被擦除，运行时都表现为原始类型 List，因此无法用 instanceof 区分具体泛型参数。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (295, '自动装箱是编译器自动将基本类型转换为对应的包装类型。', 'JUDGE', 0, 16, 'MEDIUM', 5, '如 int 自动转为 Integer，由编译器插入 Integer.valueOf 实现；拆箱则调用 xxxValue 方法。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (296, '循环拼接大量字符串时，使用 StringBuilder 比 String 直接拼接效率更高。', 'JUDGE', 0, 16, 'MEDIUM', 5, 'String 不可变，每次拼接都创建新对象；StringBuilder 在缓冲区上修改，避免大量中间对象。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (297, 'volatile 关键字可以保证多线程环境下复合操作的原子性。', 'JUDGE', 0, 16, 'HARD', 5, 'volatile 只保证可见性与有序性，不保证原子性，如 i++ 这类复合操作仍需加锁或使用原子类。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (298, 'JDK6 之后 synchronized 经过锁升级（偏向锁、轻量级锁、重量级锁），性能得到大幅提升。', 'JUDGE', 0, 16, 'HARD', 5, 'JVM 对 synchronized 进行了锁粗化、锁消除及锁升级优化，竞争不激烈时开销接近 CAS。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (299, 'JVM 中堆内存是线程共享的，虚拟机栈是线程私有的。', 'JUDGE', 0, 16, 'HARD', 5, '堆和方法区（元空间）为线程共享；虚拟机栈、本地方法栈、程序计数器为线程私有。', '2026-10-05 05:11:43', '2026-10-05 05:11:43', 0);
INSERT INTO `questions` VALUES (300, 'G1 垃圾收集器将堆划分为多个大小相等的 Region 进行管理。', 'JUDGE', 0, 16, 'HARD', 5, 'G1 将堆划分为若干 Region，通过跟踪各 Region 的回收价值实现可预测的停顿时间。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (301, '可达性分析中，GC Roots 可以包括虚拟机栈帧中的局部变量引用。', 'JUDGE', 0, 16, 'HARD', 5, 'GC Roots 包括栈帧局部变量、静态变量、常量引用、JNI 引用等，从这些根出发遍历可达对象。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (302, '线程池中当提交任务数超过核心线程数时，会立即创建新线程执行任务。', 'JUDGE', 0, 16, 'HARD', 5, '超过核心线程数时任务先进入工作队列排队；队列已满才会创建新线程直到最大线程数。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (303, 'ReentrantLock 比 synchronized 更灵活，支持公平锁与响应中断等特性。', 'JUDGE', 0, 16, 'HARD', 5, 'ReentrantLock 基于 AQS，提供公平/非公平、可中断、超时获取、多条件等待等 synchronized 不具备的能力。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (304, 'ThreadLocal 中每个线程都拥有自己独立的变量副本。', 'JUDGE', 0, 16, 'HARD', 5, 'ThreadLocal 通过 ThreadLocalMap 为每个线程保存独立值，线程间互不干扰，注意使用后及时 remove 防止内存泄漏。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (305, 'Spring 默认事务管理对运行时异常自动回滚，对受检异常默认不回滚。', 'JUDGE', 0, 16, 'HARD', 5, 'Spring 默认只对 RuntimeException 和 Error 回滚，受检异常需通过 rollbackFor 显式指定才回滚。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (306, 'SpringBoot 的自动配置是基于条件注解（如 @ConditionalOnClass）实现的。', 'JUDGE', 0, 16, 'HARD', 5, 'SpringBoot 通过 @EnableAutoConfiguration 导入自动配置类，配合各种 @Conditional* 条件注解按需装配。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (307, 'Spring 三级缓存可以解决所有类型的循环依赖，包括构造器注入的循环依赖。', 'JUDGE', 0, 16, 'HARD', 5, '三级缓存只能解决单例 Bean 的属性（setter/字段）注入循环依赖，构造器注入的循环依赖无法解决。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (308, 'MySQL InnoDB 引擎支持行级锁，也存在表级锁（如意向锁）。', 'JUDGE', 0, 16, 'HARD', 5, 'InnoDB 支持行锁、间隙锁、临键锁，并维护意向锁等表级锁，用于协调行锁与表锁的关系。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (309, '覆盖索引（Covering Index）包含查询所需的所有列，可以避免回表。', 'JUDGE', 0, 16, 'HARD', 5, '当索引列覆盖 SELECT 的字段时，直接从二级索引返回结果，无需回聚簇索引，可显著提升查询性能。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (310, '缓存雪崩是指大量缓存 Key 同时失效，导致大量请求直接打到数据库。', 'JUDGE', 0, 16, 'HARD', 5, '缓存雪崩可用随机过期时间、热点数据永不过期+后台更新、多级缓存、限流降级等手段应对。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (311, '在分布式系统中，CAP 三者无法同时完全满足，发生分区时需要在一致性和可用性之间取舍。', 'JUDGE', 0, 16, 'HARD', 5, '网络分区无法避免，因此 P 必须保证，C 与 A 只能二选一或通过最终一致性折中。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (312, '消息队列的主要作用是解耦、异步和削峰填谷。', 'JUDGE', 0, 16, 'HARD', 5, 'MQ 将生产者与消费者解耦，异步处理提升响应速度，并通过队列缓冲平滑流量峰值。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (313, '布隆过滤器可以精确判断某个元素是否一定存在于集合中。', 'JUDGE', 0, 16, 'HARD', 5, '布隆过滤器存在误判率：判断不存在则一定不存在，判断存在则可能存在（可能有哈希冲突误判）。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (314, '缓存与数据库双写时，先更新数据库再删除缓存，若删除失败仍可能读到旧数据。', 'JUDGE', 0, 16, 'HARD', 5, '删除缓存失败会导致缓存中长期保留旧值，可通过延迟双删、消息队列重试、订阅 binlog 等方案保证最终一致。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (315, 'JVM 参数 -Xms 与 -Xmx 设置不一致时，JVM 会按需动态调整堆大小。', 'JUDGE', 0, 16, 'HARD', 5, '默认 JVM 会在 -Xms 与 -Xmx 之间动态扩展/收缩堆；两者设置相等可避免扩容带来的停顿。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (316, '类加载的双亲委派机制可以有效防止核心类库被自定义类篡改。', 'JUDGE', 0, 16, 'HARD', 5, '双亲委派让加载请求逐级上抛，核心类由 Bootstrap/Extension 加载器加载，保证核心类的一致性与安全性。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (317, '简述 Java 面向对象的三大特性。', 'TEXT', 0, 16, 'EASY', 10, '要点：分别说明封装（信息隐藏）、继承（extends、代码复用）、多态（重写+父类引用子类对象）；能结合访问修饰符、方法重写举例更佳。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (318, '简述 == 与 equals() 的区别。', 'TEXT', 0, 16, 'EASY', 10, '要点：== 基本类型比值、引用类型比地址；equals 默认比地址、重写后比内容；使用 equals 前一般判空。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (319, '简述 String 为什么是不可变的。', 'TEXT', 0, 16, 'EASY', 10, '要点：final 类、final 字符数组、无修改方法；不可变的好处（安全、常量池、可缓存 hashCode）。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (320, '简述 int 和 Integer 的区别。', 'TEXT', 0, 16, 'EASY', 10, '要点：基本类型 vs 引用类型；默认值不同；自动装箱拆箱；Integer 缓存池（-128~127）。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (321, '简述 break 和 continue 的区别。', 'TEXT', 0, 16, 'EASY', 10, '要点：break 终止整个循环，continue 跳过本次迭代；可结合标签使用。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (322, '简述数组和集合的区别。', 'TEXT', 0, 16, 'EASY', 10, '要点：长度固定 vs 动态增长；可否存基本类型；集合 API 更丰富。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (323, '简述抽象类和接口的区别（以 JDK8 之前为例）。', 'TEXT', 0, 16, 'EASY', 10, '要点：方法实现能力、字段、构造器、单继承 vs 多实现；抽象类偏复用、接口偏规范。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (324, '简述方法重载（Overload）和方法重写（Override）的区别。', 'TEXT', 0, 16, 'EASY', 10, '要点：位置（同类 vs 父子类）、参数列表要求、编译期 vs 运行期多态。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (325, '简述 final、finally、finalize 的区别。', 'TEXT', 0, 16, 'EASY', 10, '要点：三个词功能完全不同；finally 与 try-catch 搭配；finalize 已废弃。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (326, '简述 try-catch-finally 的执行流程。', 'TEXT', 0, 16, 'EASY', 10, '要点：try 执行、catch 匹配、finally 必然执行；finally 中 return 会覆盖 try/catch 的返回值。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (327, '简述 JDK、JRE、JVM 三者之间的关系。', 'TEXT', 0, 16, 'EASY', 10, '要点：JDK ⊃ JRE ⊃ JVM；JDK 面向开发，JRE 面向运行。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (328, '简述 Java 中 public、protected、默认、private 四种访问权限的访问范围。', 'TEXT', 0, 17, 'EASY', 10, '要点：按四档说明访问范围，重点记忆 protected 允许跨包子类访问。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (329, '简述 List、Set、Map 三种集合的区别。', 'TEXT', 0, 17, 'EASY', 10, '要点：有序性、是否允许重复、存储结构（元素 vs 键值对）。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (330, '简述 public static void main(String[] args) 各部分的含义。', 'TEXT', 0, 17, 'EASY', 10, '要点：逐词解释权限、静态、无返回值、方法名、参数；这是程序入口。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (331, '简述什么是包装类，它的作用是什么。', 'TEXT', 0, 17, 'EASY', 10, '要点：一一对应关系、存入集合、类型转换方法、自动装箱拆箱。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (332, '简述什么是方法重载。', 'TEXT', 0, 17, 'EASY', 10, '要点：同类中、同名不同参、与返回值无关、编译期决定。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (333, '简述什么是构造方法，它有什么特点。', 'TEXT', 0, 17, 'EASY', 10, '要点：同名、无返回类型、new 时调用、默认无参构造规则。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (334, '简述什么是静态变量（类变量），它与实例变量的区别。', 'TEXT', 0, 17, 'EASY', 10, '要点：属于类 vs 属于对象；共享 vs 独立；访问方式与初始化时机。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (335, '简述 Maven 中 clean、compile、test、package、install 命令的作用。', 'TEXT', 0, 17, 'EASY', 10, '要点：逐个说明生命周期阶段；install 会先执行 compile、test、package 等前置阶段。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (336, '简述什么是异常，Java 异常处理涉及哪些关键字。', 'TEXT', 0, 17, 'EASY', 10, '要点：异常定义；try/catch/finally/throw/throws 五个关键字的用途。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (337, '简述 Spring 中 Bean 的生命周期。', 'TEXT', 0, 17, 'MEDIUM', 10, '要点：实例化→注入→Aware→初始化前置/后置→使用→销毁；能提到 BeanPostProcessor 和 AOP 代理生成时机更佳。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (338, '简述 Spring IoC 与 DI 的关系。', 'TEXT', 0, 17, 'MEDIUM', 10, '要点：IoC 思想=对象生命周期交给容器；DI=容器注入依赖；两者是目标与实现的关系。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (339, '简述 Spring AOP 中通知（Advice）的类型及用途。', 'TEXT', 0, 17, 'MEDIUM', 10, '要点：五种通知各自时机；@Around 最灵活，可替代其他类型；事务、日志、权限是典型应用。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (340, '简述 @Autowired 与 @Resource 的区别。', 'TEXT', 0, 17, 'MEDIUM', 10, '要点：来源不同（Spring vs JSR-250）；默认装配策略不同（byType vs byName）；@Autowired 需 @Qualifier 配合。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (341, '简述 SpringMVC 处理一次请求的主要流程。', 'TEXT', 0, 17, 'MEDIUM', 10, '要点：DispatcherServlet→HandlerMapping→HandlerAdapter→Controller→ViewResolver→渲染；DispatcherServlet 是核心。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (342, '简述 MyBatis 中 #{} 和 ${} 的区别以及 SQL 注入问题。', 'TEXT', 0, 17, 'MEDIUM', 10, '要点：#{} 预编译安全、${} 拼接危险；${} 适用场景及校验要求。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (343, '简述数据库索引的作用以及创建索引的注意事项。', 'TEXT', 0, 17, 'MEDIUM', 10, '要点：提速查询、保证唯一；权衡写入成本、最左前缀、避免索引失效。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (344, '简述数据库事务的 ACID 特性。', 'TEXT', 0, 17, 'MEDIUM', 10, '要点：四特性含义及对应实现机制（undo log、约束、锁/MVCC、redo log）。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (345, '简述 SQL 中内连接和外连接的区别。', 'TEXT', 0, 17, 'MEDIUM', 10, '要点：内连接=匹配行；外连接=保留一侧（或两侧）全部行，无匹配补 NULL。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (346, '简述 Java 中创建线程的几种方式（JDK8 前）及各自特点。', 'TEXT', 0, 17, 'MEDIUM', 10, '要点：三种方式与特点；推荐接口方式和线程池；Callable 可返回结果。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (347, '简述 synchronized 的几种用法。', 'TEXT', 0, 17, 'MEDIUM', 10, '要点：三种用法及锁对象；可重入；锁升级机制。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (348, '简述 volatile 与 synchronized 的区别。', 'TEXT', 0, 17, 'MEDIUM', 10, '要点：三性（可见、有序、原子）覆盖范围；阻塞与否；适用场景。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (349, '简述 Java 集合中的 fail-fast 机制。', 'TEXT', 0, 17, 'MEDIUM', 10, '要点：并发修改检测、modCount、抛出 ConcurrentModificationException；CopyOnWriteArrayList 等是 fail-safe 方案。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (350, '简述 JDK8 中 HashMap 的 put 流程。', 'TEXT', 0, 17, 'MEDIUM', 10, '要点：hash 定位→桶判断→链表/红黑树→树化条件→扩容阈值；能答出加载因子 0.75 更佳。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (351, '简述重写 equals 时为什么要同时重写 hashCode。', 'TEXT', 0, 17, 'MEDIUM', 10, '要点：hashCode 定桶、equals 判等；违反约定导致哈希集合行为异常。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (352, '简述 HTTP 与 HTTPS 的区别。', 'TEXT', 0, 17, 'MEDIUM', 10, '要点：加密、证书、端口、握手开销；HTTPS 解决 HTTP 明文传输的安全问题。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (353, '简述 Cookie 与 Session 的区别。', 'TEXT', 0, 17, 'MEDIUM', 10, '要点：存储端、安全、大小、生命周期、SessionID 传递方式。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (354, '简述 JavaScript 中 var、let、const 的区别。', 'TEXT', 0, 17, 'MEDIUM', 10, '要点：作用域、提升、重复声明、重新赋值四方面对比；推荐优先 const、其次 let。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (355, '简述什么是泛型，使用泛型有什么好处。', 'TEXT', 0, 17, 'MEDIUM', 10, '要点：参数化类型、编译期检查、免强转、类型擦除。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (356, '简述 Java IO 中字节流和字符流的区别。', 'TEXT', 0, 17, 'MEDIUM', 10, '要点：单位不同、基类不同、适用场景；编码转换与乱码问题。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (357, '简述 JVM 内存区域的划分及各区域的作用。', 'TEXT', 0, 17, 'HARD', 10, '要点：五大区域及私有/共享属性；堆的分代；JDK8 元空间替代永久代。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (358, '简述 JVM 类加载的五个阶段。', 'TEXT', 0, 17, 'HARD', 10, '要点：五阶段顺序与各自内容；准备阶段赋值零值、初始化阶段赋真实值。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (359, '简述双亲委派机制及其作用。', 'TEXT', 0, 17, 'HARD', 10, '要点：逐级上抛再回退的流程；安全性与唯一性两大作用；打破机制的典型场景。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (360, '简述 JVM 判断对象可回收的方法以及 Java 的引用类型。', 'TEXT', 0, 17, 'HARD', 10, '要点：可达性分析原理、GC Roots 来源；四种引用强度及应用场景。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (361, '简述 CMS 与 G1 垃圾收集器的特点与区别。', 'TEXT', 0, 17, 'HARD', 10, '要点：CMS 停顿短但有碎片、G1 分 Region 停顿可控；G1 是默认收集器。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (362, '简述线程池的工作原理及核心参数。', 'TEXT', 0, 17, 'HARD', 10, '要点：参数含义、提交→核心线程→队列→非核心线程→拒绝策略的完整流程。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (363, '简述 ReentrantLock 的实现原理（基于 AQS）。', 'TEXT', 0, 20, 'HARD', 10, '要点：state+CAS、CLH 队列、LockSupport 阻塞唤醒、可重入计数、公平与非公平差异。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (364, '简述 ThreadLocal 的原理及可能的内存泄漏问题。', 'TEXT', 0, 20, 'HARD', 10, '要点：ThreadLocalMap 结构、弱引用 key；线程池场景下的泄漏机理与 remove 解决。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (365, '简述 CAS 的原理以及 ABA 问题如何解决。', 'TEXT', 0, 20, 'HARD', 10, '要点：比较-交换的原子操作；ABA 成因；AtomicStampedReference 版本号方案。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (366, '简述 Spring 事务失效的常见场景。', 'TEXT', 0, 20, 'HARD', 10, '要点：非 public、自调用、异常被吞、受检异常、引擎不支持、代理失效六类场景。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (367, '简述 Spring 事务的常用传播行为。', 'TEXT', 0, 20, 'HARD', 10, '要点：七种传播行为含义；重点记忆 REQUIRED、REQUIRES_NEW、NESTED。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (368, '简述 SpringBoot 自动配置的原理。', 'TEXT', 0, 20, 'HARD', 10, '要点：@EnableAutoConfiguration→AutoConfigurationImportSelector→imports 文件→条件注解按需装配。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (369, '简述 MySQL 中索引失效的常见场景。', 'TEXT', 0, 20, 'HARD', 10, '要点：函数计算、隐式转换、%前缀、最左前缀、OR、负向查询等；结合执行计划验证。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (370, '简述 MySQL 的四种事务隔离级别及各自解决的问题。', 'TEXT', 0, 20, 'HARD', 10, '要点：四级定义、脏读/不可重复读/幻读三个问题、默认级别及 InnoDB 的处理。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (371, '简述 InnoDB 中 MVCC 的实现原理。', 'TEXT', 0, 20, 'HARD', 10, '要点：隐藏列+undo log 版本链；ReadView 可见性判断规则；RC 与 RR 的 ReadView 生成时机差异。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (372, '简述缓存穿透、缓存击穿、缓存雪崩的区别及解决方案。', 'TEXT', 0, 20, 'HARD', 10, '要点：三者的定义区分；对应解决方案要能分别列举。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (373, '简述分布式锁的实现方式及各自优缺点。', 'TEXT', 0, 20, 'HARD', 10, '要点：三种方案的实现要点与优缺点；Redis 的续期与误删问题、ZK 的临时节点机制。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (374, '简述消息队列在分布式系统中的作用。', 'TEXT', 0, 20, 'HARD', 10, '要点：解耦、异步、削峰三大核心价值；引入后的可靠性/幂等/顺序挑战。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (375, '简述如何设计一个高可用秒杀系统（关键设计点）。', 'TEXT', 0, 20, 'HARD', 10, '要点：从流量入口到库存扣减的完整链路；预扣库存、MQ 异步、乐观锁防超卖是核心。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (376, '简述微服务架构的优缺点。', 'TEXT', 0, 20, 'HARD', 10, '要点：优缺点两面都要答；复杂度与运维成本是主要代价，需配套治理体系。', '2026-10-05 05:11:44', '2026-10-05 05:11:44', 0);
INSERT INTO `questions` VALUES (377, 'Java中基本数据类型byte占几个字节?', 'CHOICE', 1, 16, 'EASY', 5, 'byte类型占用1个字节，取值范围是-128到127。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (378, 'Java中String类的底层实现是什么?', 'CHOICE', 1, 16, 'MEDIUM', 5, 'JDK9之后String底层使用byte数组加编码标识实现。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (379, 'Java中final修饰的变量有什么特点?', 'CHOICE', 1, 21, 'EASY', 5, 'final修饰的变量必须显式初始化，且一旦赋值不能修改。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (380, 'Java中抽象类和接口的区别是什么?', 'CHOICE', 1, 17, 'MEDIUM', 5, '抽象类可以有构造方法，接口不能，且Java类单继承多实现。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (381, 'Spring框架中IOC的全称是什么?', 'CHOICE', 1, 18, 'EASY', 5, 'IOC即控制反转，是Spring的核心特性之一。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (382, 'Spring中Bean默认的作用域是什么?', 'CHOICE', 1, 18, 'MEDIUM', 5, 'Spring Bean默认是单例模式（singleton）。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (383, 'MySQL中用于去重查询的关键字是?', 'CHOICE', 1, 19, 'EASY', 5, 'DISTINCT用于返回唯一不同的值。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (384, '数据库中事务的隔离级别最高的是?', 'CHOICE', 1, 19, 'HARD', 5, '串行化（Serializable）是最高隔离级别，可避免脏读、不可重复读和幻读。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (385, 'Vue3中用于声明响应式数据的API是?', 'CHOICE', 1, 20, 'MEDIUM', 5, 'Vue3中ref和reactive都可以声明响应式数据。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (386, 'HTTP协议中状态码404代表什么?', 'CHOICE', 1, 20, 'EASY', 5, '404 Not Found表示服务器无法找到请求的资源。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (387, 'Maven中用于指定项目打包方式的标签是?', 'CHOICE', 1, 29, 'EASY', 5, '<packaging>标签用于指定打包方式，如jar、war。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (388, 'Git中用于查看提交历史的命令是?', 'CHOICE', 1, 30, 'EASY', 5, 'git log用于查看提交历史记录。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (389, 'Java中重载(Overload)和重写(Override)的区别?', 'CHOICE', 1, 17, 'MEDIUM', 5, '重载是编译时多态，重写是运行时多态，规则不同。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (390, '下列哪个不是Java集合框架中的接口?', 'CHOICE', 1, 16, 'MEDIUM', 5, 'Array是数组，不是集合框架中的接口，List、Set、Map都是。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (391, 'Spring Boot中用于开启自动配置的注解是?', 'CHOICE', 1, 18, 'MEDIUM', 5, '@EnableAutoConfiguration是自动配置的核心注解，@SpringBootApplication包含它。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (392, '关系型数据库中，用于唯一标识一行记录的键是?', 'CHOICE', 1, 19, 'EASY', 5, '主键（Primary Key）唯一标识表中的每一行。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (393, '下列哪种排序算法是稳定的?', 'CHOICE', 1, 25, 'HARD', 5, '归并排序是稳定的，快速排序、堆排序、选择排序不稳定。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (394, 'JVM内存模型中，用于存储对象实例的是?', 'CHOICE', 1, 25, 'MEDIUM', 5, '堆（Heap）是JVM中用于存储对象实例的区域。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (395, '下列关于线程池的说法错误的是?', 'CHOICE', 1, 24, 'HARD', 5, '线程池中的线程在空闲超时后会被回收销毁，取决于配置。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (396, '分布式系统中，CAP理论指的是什么?', 'CHOICE', 1, 26, 'HARD', 5, 'CAP指一致性(Consistency)、可用性(Availability)、分区容错性(Partition tolerance)。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (397, 'Java中用于处理字符串拼接且线程安全的类是?', 'CHOICE', 1, 21, 'MEDIUM', 5, 'StringBuffer是线程安全的，StringBuilder线程不安全但性能更高。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (398, '下列哪个注解用于Spring MVC中接收JSON请求体?', 'CHOICE', 1, 18, 'MEDIUM', 5, '@RequestBody用于将请求体中的JSON绑定到方法参数。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (399, 'MySQL中EXPLAIN命令的作用是?', 'CHOICE', 1, 19, 'MEDIUM', 5, 'EXPLAIN用于分析SQL语句的执行计划，帮助优化查询。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (400, '前端中用于阻止事件冒泡的方法是?', 'CHOICE', 1, 20, 'MEDIUM', 5, 'stopPropagation()阻止事件冒泡，preventDefault()阻止默认行为。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (401, 'Java中哪个包提供了集合框架?', 'CHOICE', 1, 16, 'EASY', 5, 'java.util包提供了List、Set、Map等集合类。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (402, 'Spring中用于声明事务的注解是?', 'CHOICE', 1, 18, 'MEDIUM', 5, '@Transactional用于声明方法或类需要事务管理。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (403, '数据库三范式中的第二范式要求什么?', 'CHOICE', 1, 19, 'HARD', 5, '第二范式要求非主属性完全依赖于码，消除部分依赖。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (404, 'Git中用于创建并切换分支的命令是?', 'CHOICE', 1, 30, 'EASY', 5, 'git checkout -b [branch] 可以创建并切换到新分支。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (405, 'Java中ArrayList和LinkedList的区别?', 'CHOICE', 1, 17, 'MEDIUM', 5, 'ArrayList基于动态数组，LinkedList基于双向链表，各有优缺点。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (406, 'Maven中依赖传递的scope默认是什么?', 'CHOICE', 1, 29, 'HARD', 5, 'Maven依赖传递默认scope是compile，会传递给子项目。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (407, 'Java中哪个关键字用于抛出异常?', 'CHOICE', 1, 21, 'EASY', 5, 'throw用于抛出一个具体的异常对象，throws用于声明方法可能抛出的异常。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (408, '下列哪个是HTTP的无状态协议?', 'CHOICE', 1, 20, 'EASY', 5, 'HTTP是无状态协议，HTTPS在HTTP基础上加了加密。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (409, 'Spring AOP中用于定义切面的注解是?', 'CHOICE', 1, 18, 'MEDIUM', 5, '@Aspect用于声明一个切面类。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (410, '数据库索引失效的情况不包括?', 'CHOICE', 1, 19, 'HARD', 5, '使用主键查询不会导致索引失效，其他几种情况可能会导致。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (411, 'Java中用于读取文件内容的类是?', 'CHOICE', 1, 16, 'MEDIUM', 5, '以上类都可以用于读取文件内容，具体取决于需求。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (412, '下列哪个设计模式属于创建型模式?', 'CHOICE', 1, 26, 'MEDIUM', 5, '单例、工厂、建造者都属于创建型设计模式。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (413, 'Java中静态代码块什么时候执行?', 'CHOICE', 1, 21, 'MEDIUM', 5, '静态代码块在类加载时执行，且只执行一次。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (414, 'MySQL中VARCHAR和CHAR的区别?', 'CHOICE', 1, 19, 'MEDIUM', 5, 'VARCHAR可变长，CHAR定长，VARCHAR更节省空间但性能略低。', '2026-10-05 05:11:51', '2026-10-05 05:11:51', 0);
INSERT INTO `questions` VALUES (415, '前端中防抖和节流的区别?', 'CHOICE', 1, 20, 'HARD', 5, '防抖和节流都是性能优化手段，应用场景和原理不同。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (416, 'Java中==和equals的区别?', 'CHOICE', 1, 16, 'EASY', 5, '=比较引用地址，equals默认比较地址，但String等类重写了equals比较内容。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (417, 'Spring Boot中用于配置文件的格式是?', 'CHOICE', 1, 18, 'EASY', 5, 'Spring Boot支持properties和yml两种配置文件格式。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (418, '下列哪个是Java的原子类?', 'CHOICE', 1, 25, 'MEDIUM', 5, 'java.util.concurrent.atomic包提供了多种原子类。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (419, '数据库中的死锁是什么?', 'CHOICE', 1, 19, 'HARD', 5, '死锁是两个或多个事务互相持有对方需要的锁并等待。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (420, 'Git中用于合并分支的命令是?', 'CHOICE', 1, 30, 'EASY', 5, 'git merge用于合并两个分支。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (421, 'Java中接口中的方法默认是什么修饰符?', 'CHOICE', 1, 21, 'MEDIUM', 5, '接口中的方法默认是public abstract的。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (422, 'Maven中用于清理项目的命令是?', 'CHOICE', 1, 29, 'EASY', 5, 'mvn clean用于清理项目生成的target目录。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (423, '下列哪个是Spring的核心模块?', 'CHOICE', 1, 18, 'MEDIUM', 5, 'Spring框架包含Core、AOP、MVC等多个核心模块。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (424, 'Java中用于实现多线程的方式不包括?', 'CHOICE', 1, 17, 'MEDIUM', 5, 'Runnable是接口，不能继承，只能实现。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (425, 'TCP三次握手的顺序是?', 'CHOICE', 1, 24, 'HARD', 5, 'TCP三次握手顺序为SYN、SYN-ACK、ACK。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (426, 'Java中String s = new String(\"abc\")创建了几个对象?', 'CHOICE', 1, 16, 'HARD', 5, '如果常量池没有\"abc\"，则创建2个对象（常量池一个，堆一个）。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (427, 'Spring中@Autowired和@Resource的区别?', 'CHOICE', 1, 18, 'MEDIUM', 5, '@Autowired默认按类型，@Resource默认按名称。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (428, '数据库中的视图是什么?', 'CHOICE', 1, 19, 'MEDIUM', 5, '视图是基于SQL查询的虚拟表，不存储实际数据。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (429, 'Java中用于处理异常的块是?', 'CHOICE', 1, 21, 'EASY', 5, 'try-catch用于捕获和处理异常。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (430, 'Java中所有类的父类是?', 'JUDGE', 0, 16, 'EASY', 2, 'Java中所有类都直接或间接继承自Object类。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (431, 'HTTP协议是无状态协议。', 'JUDGE', 0, 20, 'EASY', 2, 'HTTP协议本身不保存客户端和服务端之间的状态。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (432, 'Spring Boot必须使用XML进行配置。', 'JUDGE', 0, 18, 'EASY', 2, 'Spring Boot推荐使用Java配置和注解，不需要XML配置。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (433, 'MySQL中索引越多查询性能越好。', 'JUDGE', 0, 19, 'MEDIUM', 2, '索引过多会降低写入性能并占用空间，需要权衡。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (434, 'Java中String是基本数据类型。', 'JUDGE', 0, 21, 'EASY', 2, 'String是引用数据类型，不是基本数据类型。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (435, 'Maven和Gradle都是项目构建工具。', 'JUDGE', 0, 29, 'EASY', 2, 'Maven和Gradle都是Java项目常用的构建工具。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (436, 'Git是集中式版本控制系统。', 'JUDGE', 0, 30, 'EASY', 2, 'Git是分布式版本控制系统，每个开发者都有完整的版本库。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (437, 'Java中局部变量必须初始化才能使用。', 'JUDGE', 0, 21, 'MEDIUM', 2, 'Java中局部变量没有默认值，必须显式初始化后才能使用。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (438, 'Spring AOP只能用于方法级别的拦截。', 'JUDGE', 0, 18, 'HARD', 2, 'Spring AOP默认只支持方法级别的连接点。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (439, 'TCP是面向连接的协议。', 'JUDGE', 0, 24, 'MEDIUM', 2, 'TCP通过三次握手建立连接，是面向连接的。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (440, 'Java中volatile关键字可以保证原子性。', 'JUDGE', 0, 25, 'HARD', 2, 'volatile保证可见性和有序性，但不保证原子性。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (441, '数据库事务的隔离级别越高性能越好。', 'JUDGE', 0, 19, 'MEDIUM', 2, '隔离级别越高，安全性越高，但并发性能越低。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (442, 'Vue3中ref和reactive都可以声明响应式数据。', 'JUDGE', 0, 20, 'MEDIUM', 2, 'Vue3中ref适用于基本类型，reactive适用于对象。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (443, 'Java中接口可以多继承接口。', 'JUDGE', 0, 17, 'MEDIUM', 2, 'Java中接口可以多继承接口，但类只能单继承。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (444, 'Spring中Bean默认是线程安全的。', 'JUDGE', 0, 18, 'HARD', 2, 'Spring Bean默认是单例的，是否线程安全取决于Bean的状态。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (445, 'MySQL中DELETE和TRUNCATE都可以删除数据。', 'JUDGE', 0, 19, 'MEDIUM', 2, 'DELETE是逐行删除，TRUNCATE是清空表，两者都可以删除数据。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (446, 'Git中git pull相当于git fetch加git merge。', 'JUDGE', 0, 30, 'MEDIUM', 2, 'git pull默认相当于git fetch加git merge。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (447, 'Java中StringBuilder是线程安全的。', 'JUDGE', 0, 21, 'MEDIUM', 2, 'StringBuilder线程不安全，StringBuffer线程安全。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (448, 'Maven的pom.xml文件中只能有一个<dependencies>标签。', 'JUDGE', 0, 29, 'MEDIUM', 2, 'pom.xml中只能有一个<dependencies>标签，但可以有多层<dependency>。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (449, 'Java中finalize()方法一定会被执行。', 'JUDGE', 0, 25, 'HARD', 2, 'finalize()方法不一定会被执行，JVM不保证其执行时机。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (450, 'HTTP状态码200表示请求成功。', 'JUDGE', 0, 20, 'EASY', 2, '200 OK表示请求成功。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (451, '数据库中的主键可以为空。', 'JUDGE', 0, 19, 'EASY', 2, '主键不能为空，且必须唯一。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (452, 'Spring Boot内置了Tomcat服务器。', 'JUDGE', 0, 18, 'EASY', 2, 'Spring Boot默认内置Tomcat，也支持Jetty和Undertow。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (453, 'Java中ArrayList是线程安全的。', 'JUDGE', 0, 16, 'MEDIUM', 2, 'ArrayList线程不安全，Vector是线程安全的。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (454, '前端中localStorage存储的数据会随浏览器关闭而清除。', 'JUDGE', 0, 20, 'MEDIUM', 2, 'localStorage是持久化存储，sessionStorage会随浏览器关闭清除。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (455, 'Git中git reset --hard会丢失工作区修改。', 'JUDGE', 0, 30, 'HARD', 2, 'git reset --hard会强制回退，丢弃工作区和暂存区的修改。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (456, 'Java中方法重载必须发生在同一个类中。', 'JUDGE', 0, 17, 'MEDIUM', 2, '重载（Overload）必须发生在同一个类中，重写发生在子父类。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (457, '数据库的三大范式是绝对必须遵守的。', 'JUDGE', 0, 19, 'HARD', 2, '范式是设计指导，实际开发中为了性能可能会反范式。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (458, 'Spring中@Controller和@RestController功能完全一样。', 'JUDGE', 0, 18, 'MEDIUM', 2, '@RestController相当于@Controller加@ResponseBody。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (459, 'Java中所有的异常都必须被捕获。', 'JUDGE', 0, 17, 'MEDIUM', 2, 'RuntimeException可以不捕获，但必须处理或声明。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (460, '请简述Java中面向对象的三大特性。', 'TEXT', 0, 16, 'MEDIUM', 10, '面向对象编程的核心思想。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (461, '请简述Spring IOC和AOP的作用。', 'TEXT', 0, 18, 'MEDIUM', 10, 'Spring两大核心特性。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (462, '请简述数据库事务的ACID特性。', 'TEXT', 0, 19, 'MEDIUM', 10, '数据库事务的基础。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (463, '请简述Java中线程和进程的区别。', 'TEXT', 0, 24, 'HARD', 10, '并发编程基础。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (464, '请简述HTTP和HTTPS的区别。', 'TEXT', 0, 20, 'MEDIUM', 10, '网络协议基础。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (465, '请简述Maven的生命周期。', 'TEXT', 0, 29, 'MEDIUM', 10, '项目构建基础。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (466, '请简述Git中fetch和pull的区别。', 'TEXT', 0, 30, 'MEDIUM', 10, '版本控制基础。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (467, '请简述Spring Boot自动配置的原理。', 'TEXT', 0, 18, 'HARD', 10, 'Spring Boot核心机制。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (468, '请简述数据库索引的优缺点。', 'TEXT', 0, 19, 'MEDIUM', 10, '数据库优化基础。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (469, '请简述Java中HashMap的底层原理。', 'TEXT', 0, 16, 'HARD', 10, 'Java集合核心。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (470, '请简述Vue3中响应式原理。', 'TEXT', 0, 20, 'HARD', 10, '前端框架核心。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (471, '请简述TCP三次握手的过程。', 'TEXT', 0, 24, 'HARD', 10, '网络协议核心。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (472, '请简述Java中synchronized和Lock的区别。', 'TEXT', 0, 25, 'HARD', 10, '并发编程核心。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (473, '请简述Spring中Bean的生命周期。', 'TEXT', 0, 18, 'HARD', 10, 'Spring核心。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (474, '请简述MySQL中MVCC的作用和原理。', 'TEXT', 0, 19, 'HARD', 10, '数据库并发控制。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (475, '请简述前后端分离的优缺点。', 'TEXT', 0, 24, 'MEDIUM', 10, '现代Web开发模式。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (476, '请简述Java中GC垃圾回收机制。', 'TEXT', 0, 25, 'HARD', 10, 'JVM内存管理。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (477, '请简述RESTful API的设计原则。', 'TEXT', 0, 26, 'MEDIUM', 10, 'API设计规范。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (478, '请简述微服务架构的优缺点。', 'TEXT', 0, 26, 'HARD', 10, '架构设计核心。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (479, '请简述Maven中依赖冲突的解决方式。', 'TEXT', 0, 29, 'HARD', 10, 'Maven进阶。', '2026-10-05 05:11:52', '2026-10-05 05:11:52', 0);
INSERT INTO `questions` VALUES (500, 'Java 中 char 类型占用 2 个字节。', 'JUDGE', 0, 16, 'EASY', 2, 'char 是无符号 16 位字符类型，占 2 个字节，可表示 Unicode 基本字符。', '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `questions` VALUES (501, 'String 类重写了 equals() 和 hashCode() 方法。', 'JUDGE', 0, 16, 'MEDIUM', 2, 'String 重写 equals 比较内容，同时重写 hashCode 保证哈希一致性，可安全用于 HashMap 等集合。', '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `questions` VALUES (502, 'Java 中子类可以通过 super 关键字调用父类的方法。', 'JUDGE', 0, 17, 'EASY', 2, 'super 用于访问父类成员，如 super.method()、super.var，也可调用父类构造方法。', '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `questions` VALUES (503, '抽象类可以直接被实例化。', 'JUDGE', 0, 17, 'MEDIUM', 2, '抽象类含有抽象方法、不能直接 new 实例化，必须由子类继承并实现抽象方法后实例化子类。', '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `questions` VALUES (504, 'Spring 中 @Service 注解用于标记业务层组件。', 'JUDGE', 0, 18, 'EASY', 2, '@Service 是 @Component 的语义化注解，标记业务层 Bean，可被容器扫描注册。', '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `questions` VALUES (505, 'SpringMVC 中 @GetMapping 是 @RequestMapping 的快捷方式。', 'JUDGE', 0, 18, 'MEDIUM', 2, '@GetMapping 等价于 @RequestMapping(method = RequestMethod.GET)，代码更简洁。', '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `questions` VALUES (506, 'Spring 中 BeanFactory 与 ApplicationContext 都是 IoC 容器接口。', 'JUDGE', 0, 18, 'HARD', 2, 'ApplicationContext 继承 BeanFactory，是更完整的容器，提供国际化、事件、AOP 集成等能力。', '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `questions` VALUES (507, 'LIMIT 10 OFFSET 20 表示取前 10 行后跳过 20 行。', 'JUDGE', 0, 19, 'EASY', 2, 'LIMIT 10 OFFSET 20 表示跳过前 20 行、再取 10 行；取前 10 行直接写 LIMIT 10。', '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `questions` VALUES (508, 'SQL 中 GROUP BY 通常与聚合函数一起使用。', 'JUDGE', 0, 19, 'MEDIUM', 2, 'GROUP BY 按列分组，配合 COUNT/SUM/AVG 等聚合函数统计每组数据。', '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `questions` VALUES (509, 'COUNT(列名) 统计时不计入该列为 NULL 的行。', 'JUDGE', 0, 19, 'HARD', 2, 'COUNT(列) 只统计该列非 NULL 的行；COUNT(*) 统计全部行。', '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `questions` VALUES (510, 'HTTP 状态码 301 表示永久重定向。', 'JUDGE', 0, 20, 'EASY', 2, '301 Moved Permanently 表示资源已永久迁移到新地址；302 为临时重定向。', '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `questions` VALUES (511, 'Vue3 中 computed 用于声明计算属性。', 'JUDGE', 0, 20, 'MEDIUM', 2, 'computed 基于响应式依赖缓存计算值，依赖变化时自动重新计算。', '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `questions` VALUES (512, 'JDK7 之前 switch 语句就可以用于 String 类型。', 'JUDGE', 0, 21, 'EASY', 2, 'switch 支持 String 是从 JDK7 开始的，JDK7 之前仅支持整型和枚举等。', '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `questions` VALUES (513, 'Java 中一个方法可以通过 throws 声明抛出多个异常类型。', 'JUDGE', 0, 21, 'MEDIUM', 2, 'throws IOException, SQLException 可一次声明多个异常，调用方需相应处理。', '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `questions` VALUES (514, 'HTTP 状态码 503 表示请求成功。', 'JUDGE', 0, 24, 'EASY', 2, '503 Service Unavailable 表示服务暂不可用；请求成功是 200。', '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `questions` VALUES (515, 'JVM 新生代对象经历多次 Minor GC 后会被晋升到老年代。', 'JUDGE', 0, 25, 'HARD', 2, '对象在新生代存活达到晋升阈值（默认 15 次）或大对象直接进入老年代。', '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `questions` VALUES (516, '-Xms 与 -Xmx 设置不同时，JVM 不会动态调整堆大小。', 'JUDGE', 0, 25, 'HARD', 2, '默认 JVM 会在 -Xms 与 -Xmx 之间按需动态扩展/收缩堆；两者相等可避免扩容停顿。', '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `questions` VALUES (517, '微服务中通过服务注册中心可以实现服务发现。', 'JUDGE', 0, 26, 'HARD', 2, '服务启动时注册到注册中心（如 Nacos/Eureka），消费方按服务名发现并调用。', '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `questions` VALUES (518, 'Maven 中 mvn install 会将构件安装到本地仓库。', 'JUDGE', 0, 29, 'MEDIUM', 2, 'install 阶段将打包产物安装到本地仓库，供本机其他项目依赖使用。', '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `questions` VALUES (519, 'git cherry-pick 会把其他分支的所有提交全部合并到当前分支。', 'JUDGE', 0, 30, 'HARD', 2, 'cherry-pick 只把指定的某次（或几次）提交应用到当前分支，不是全部合并。', '2026-10-10 18:04:17', '2026-10-10 18:04:17', 0);
INSERT INTO `questions` VALUES (520, '关于Stream流的中间操作和终结操作，下列正确的是：', 'CHOICE', 1, 17, 'MEDIUM', 5, '正确。中间操作方法返回当前流对象，可以使用方法链的方式连续调用；终结操作方法通常用于执行实际的计算或操作，不会返回流对象。', '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `questions` VALUES (521, 'Collections.emptyList()返回的空列表适合作为Stream流的来源：', 'JUDGE', 0, 17, 'MEDIUM', 5, '错误。Collections.emptyList()返回的空列表并不适合用来创建Stream流，因为空列表不适合作为流的源头，没有数据可操作。', '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `questions` VALUES (522, 'Stream流中，distinct()方法是如何实现去重的：', 'TEXT', 0, 17, 'MEDIUM', 5, 'distinct()方法首先利用流中的元素自然排序或是通过提供的比较器进行排序，以确保相同的元素保持在流中的连续位置，然后会去除此后的重复元素。', '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `questions` VALUES (523, '关于Stream流的sorted()方法，下列描述正确的是：', 'CHOICE', 1, 17, 'MEDIUM', 5, 'sorted()方法默认使用自然排序，但也可以通过提供一个Comparator来定制排序逻辑。自然排序适用于实现了Comparable接口的对象。', '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `questions` VALUES (524, '关于Stream流中的limit()和skip()方法，下列说法正确的是：', 'CHOICE', 1, 17, 'MEDIUM', 5, 'limit(n)方法返回流中的前n个元素；skip(n)方法返回从流中第n个元素开始后续的所有元素。skip()方法是去除前n个元素后剩下的元素，并非直接从第n个元素开始。', '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `questions` VALUES (525, 'Stream流中的filter()方法如何确定过滤的条件：', 'TEXT', 0, 17, 'MEDIUM', 5, 'filter()方法通过lambda表达式或谓词(Predicate)来定义过滤条件。只有当谓词返回 true 时，对应的元素才会被包含在结果流中。', '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `questions` VALUES (526, '关于Stream流中的forEach()方法，下列说法正确的是：', 'CHOICE', 1, 17, 'MEDIUM', 5, 'forEach()方法是用于遍历流中的每一个元素执行相应的操作。对于并行流来说，应使用并行流特有的方法并行流forEach()来遍历元素，而不是普通的forEach(), 因为后者可能会引起资源竞争等并发问题。', '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `questions` VALUES (527, '关于Stream流中的map()方法，下列说法正确的是：', 'CHOICE', 1, 17, 'MEDIUM', 5, 'map()方法将流中的元素映射成其他值，然后返回新的流。这个方法适用于需要将集合中的元素转换为其他类型的场景。', '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `questions` VALUES (528, '关于Stream流中的flatMap()方法，下列说法正确的是：', 'TEXT', 0, 17, 'MEDIUM', 5, 'flatMap()方法可以将一个流中的每一个值都通过定义的函数转换为一个流，然后将所有这些流合并为一个新的流，它常用于扁平化嵌套结构的数据。', '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `questions` VALUES (529, '关于Stream流中的count()方法，下列说法正确的是：', 'TEXT', 0, 17, 'MEDIUM', 5, 'count()方法用于计算流中的元素个数，其结果是一个long类型的值。', '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `questions` VALUES (530, '关于Stream流中的distinct()方法，下列说法正确的是：', 'CHOICE', 1, 17, 'MEDIUM', 5, 'distinct()方法的作用是去除流中的重复元素，但是它并不依赖于元素是否已经排序。如果想要确保去重效果，最好先对流进行排序。', '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `questions` VALUES (531, 'Stream流中的sorted()方法，如果在源数据中设置一个不稳定的排序器，说法是否正确：', 'JUDGE', 0, 17, 'MEDIUM', 5, '错误。sorted()方法在使用不稳定的排序器时不会保证元素之间的顺序稳定性。所谓不稳定的排序器是指在比较两个相等的元素时，该排序器提供的比较结果可能会不一致，可能会导致相同的对象排序结果不同。', '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `questions` VALUES (532, '关于Stream流中的unordered()方法，下列说法正确的是：', 'TEXT', 0, 17, 'MEDIUM', 5, 'unordered()方法主要用于告知后面的操作当前流是无序的，从而可以做一些顺序上的优化。在某些情况下如果知道流已经是无序的，可以直接使用此方法减少不必要的排序计算。', '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `questions` VALUES (533, '关于Stream流中的distinct()和filter()方法，这两者可以互换使用吗：', 'JUDGE', 0, 17, 'MEDIUM', 5, '错误。虽然filter()方法可以用作替代distinct()方法以去除元素，但是distinct()提供了去重的优化机制，它会在去除重复元素时保持流元素的顺序。', '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `questions` VALUES (534, 'Java 8中的链式调用是通过Stream流中的哪个方法实现的：', 'TEXT', 0, 17, 'MEDIUM', 5, '链式调用是通过lambda表达式或方法引用实现的。调用一个Stream的中间操作会返回一个新的Stream，如果当前方法又是终结操作，则返回值为结果，并没有结果流，所以需要通过lambda或将方法引用添加至新的终止操作。', '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `questions` VALUES (535, '关于Stream流中的findFirst()方法，下列说法正确的是：', 'CHOICE', 1, 17, 'MEDIUM', 5, 'findFirst()方法返回第一个元素，如果流为空，则返回一个Optional.empty()。这是一个有用的方法，用于非空检查并避免空指针异常。返回的是Optional类型的对象，利用Optional可以很好的处理可能存在的空值。', '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `questions` VALUES (536, '关于Stream流中的peek()方法，下列说法正确的是：', 'CHOICE', 1, 17, 'MEDIUM', 5, 'peek()方法的作用是在流的遍历过程中对元素进行操作（如打印）。这个方法不会改变流中的实际元素，但可以被用来调试代码或者检查流中的值。', '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `questions` VALUES (537, '关于Stream流中的parallelStream()方法，下列说法正确的是：', 'TEXT', 0, 17, 'MEDIUM', 5, 'parallelStream()方法创建了可以并行化的流形式。它可以在多个线程中执行逻辑计算，使程序更加高效。但由于线程间的资源竞争，实际性能提升取决于具体应用场景。', '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `questions` VALUES (538, '关于Stream流中的forEachOrdered()方法，下列说法正确的是：', 'JUDGE', 0, 17, 'MEDIUM', 5, '正确。forEachOrdered()方法只应用于有限的并行流。它保证在遍历流时按原顺序执行，所以与并行操作的结果依赖顺序的并行流配合使用尤为重要。', '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `questions` VALUES (539, '关于Stream流中的sorted()方法，下列说法正确的是：', 'TEXT', 0, 17, 'MEDIUM', 5, 'sorted()方法根据流中元素本身的自然顺序进行排序，如果流中的元素实现了Comparable接口。如果希望自定义排序方式，可以通过Comparator参数传递一个自定义的排序逻辑。', '2026-10-12 17:51:10', '2026-10-12 17:51:10', 0);
INSERT INTO `questions` VALUES (540, '下列哪个方法可以用于获取流中的元素个数？', 'CHOICE', 1, 17, 'EASY', 5, 'count() 方法用于获取流中的元素个数。', '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `questions` VALUES (541, 'Stream流中的forEach()方法是否可以用于对流中的元素进行过滤？', 'JUDGE', 0, 17, 'EASY', 5, 'forEach() 方法主要用于遍历，没有过滤功能。过滤应该使用 filter() 方法。', '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `questions` VALUES (542, 'Stream的map()方法与传统的for循环相比，哪个更为高效？', 'CHOICE', 1, 17, 'EASY', 5, 'map() 方法能内置优化，并且支持并行流，通常比传统for循环更高效。', '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `questions` VALUES (543, '关于Stream中的filter()方法，以下说法正确的是？', 'CHOICE', 1, 17, 'EASY', 5, 'filter() 方法确实用于筛选元素，并且返回的仍然是一个流。不过，它可以接收任何返回 boolean 的函数作为参数。', '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `questions` VALUES (544, 'Stream中reduce()方法使用场景是什么？', 'TEXT', 0, 17, 'EASY', 5, NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `questions` VALUES (545, 'filter()方法在使用时必须要有闭包吗？', 'JUDGE', 0, 17, 'EASY', 5, 'filter() 方法可以接收任何返回 boolean 的函数，不一定要使用闭包。', '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `questions` VALUES (546, '遍历排序后的stream流时，元素是如何处理的？', 'CHOICE', 1, 17, 'EASY', 5, '当你遍历一个有序的流（例如经过排序的流）时，元素将按照预期的顺序输出。', '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `questions` VALUES (547, '下列说法中，关于Stream中的sorted()方法错误的是？', 'CHOICE', 1, 17, 'EASY', 5, 'sorted() 方法并不会立即排序数据，除非流之后的运行是确定有序的操作（比如遍历）。', '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `questions` VALUES (548, 'Stream流中的allMatch()方法如何使用？', 'TEXT', 0, 17, 'EASY', 5, NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `questions` VALUES (549, '下面的说法是否正确：流一旦转换为列表后还可以再转换回流？', 'JUDGE', 0, 17, 'EASY', 5, '流可以转换为列表，然后又可以转换回流。', '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `questions` VALUES (550, '关于Stream流中的distinct()方法，以下说法正确的是？', 'CHOICE', 1, 17, 'EASY', 5, 'distinct() 方法用于删除流中的重复元素。', '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `questions` VALUES (551, '哪个方法可以用于流的归约操作？', 'CHOICE', 1, 17, 'EASY', 5, 'reduce() 方法可以用于流的归约操作，实现对流中的元素进行累积操作。', '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `questions` VALUES (552, '关于Stream中的forEachOrdered()方法，说法正确的是？', 'CHOICE', 1, 17, 'EASY', 5, 'forEachOrdered() 方法确保元素按接收流的顺序被处理，但前提条件是流是有序的。', '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `questions` VALUES (553, '关于流的去重复方法，以下说法错误的是？', 'CHOICE', 1, 17, 'EASY', 5, 'distinct() 方法使用对象的 equals 方法进行去重，而不是 hashCode 方法。', '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `questions` VALUES (554, 'Stream流中的peek()方法如何实现数据的查看？', 'TEXT', 0, 17, 'EASY', 5, NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `questions` VALUES (555, 'Stream流中的anyMatch()方法有哪些作用？', 'TEXT', 0, 17, 'EASY', 5, NULL, '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `questions` VALUES (556, '下面的说法是否正确：在使用Stream流时，必须保证流的终结操作是并行的？', 'JUDGE', 0, 17, 'EASY', 5, '在使用Stream流时，并不需要必须保证所有的终结操作都是并行的。并行流只应在适当情况下使用，以实现性能提升。', '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `questions` VALUES (557, '关于Stream中的sorted()方法，以下说法错误的是？', 'CHOICE', 1, 17, 'EASY', 5, 'sorted() 方法不会立即进行排序，它会在后续的流操作中决定是否需要执行排序。', '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `questions` VALUES (558, '关于Stream中使用toArray()方法，请指出以下说法的错误之处？', 'CHOICE', 1, 17, 'EASY', 5, 'toArray() 方法可以输出任何实现了可变数组接口的类型，如 ArrayList 或 int[]。此外，它可以应用在并行流上以更高效地生成数组。', '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `questions` VALUES (559, 'Stream流中可以使用什么样的表达式作为过滤条件？', 'CHOICE', 1, 17, 'EASY', 5, 'filter() 方法可以接收任何返回 boolean 值的谓词作为参数，这些谓词可以是方法引用、lambda 表达式、匿名类或其他任何形式的函数。', '2026-10-12 17:54:53', '2026-10-12 17:54:53', 0);
INSERT INTO `questions` VALUES (560, '对于以下两条SQL语句，第二条语句会报错吗？\n1. `CREATE TABLE test.new_table AS SELECT * FROM test.old_table ;`\n2. `CREATE TABLE test.new_table AS SELECT * FROM test.old_table WHERE 1=0 ;`\n', 'CHOICE', 1, 19, 'HARD', 5, '创建表时使用 `AS SELECT * FROM ...` 语句，从旧表中选择所有数据或将选择条件设置为 `WHERE 1=0` 将不会报错。第二条可以选择创建一个空表而不报错。', '2026-10-12 18:03:16', '2026-10-12 18:03:16', 0);
INSERT INTO `questions` VALUES (561, '在MySQL中，如何使用自连接来查找一个员工直接管理的所有员工？\n', 'CHOICE', 1, 19, 'HARD', 5, '自连接通常使用 `INNER JOIN` 或 `LEFT JOIN` 实现。`INNER JOIN` 适用于查找具有相关记录的员工，而 `LEFT JOIN` 则返回所有记录，并且在员工表中没有匹配记录时，结果集中没有匹配项的员工将被标记为 `NULL`。', '2026-10-12 18:03:16', '2026-10-12 18:03:16', 0);
INSERT INTO `questions` VALUES (562, '在MySQL中，如何查询比某位员工工资高的所有员工的ID和姓名？\n', 'CHOICE', 1, 19, 'HARD', 5, '正确的查询语句需要嵌套子查询来比较工资，找到工资高于指定值的员工。', '2026-10-12 18:03:16', '2026-10-12 18:03:16', 0);
INSERT INTO `questions` VALUES (563, '假设你有一个员工表，其中包含员工ID和等级的列。如何计算各个等级的平均工资，并且只显示平均工资超过10000的等级？\n', 'CHOICE', 1, 19, 'HARD', 5, '正确的做法是使用 `GROUP BY` 和 `HAVING` 子句来过滤出平均工资高于10000的等级。', '2026-10-12 18:03:16', '2026-10-12 18:03:16', 0);
INSERT INTO `questions` VALUES (564, '在MySQL中，如何使用触发器在插入新记录时自动执行复杂的数据验证逻辑？\n', 'CHOICE', 1, 19, 'HARD', 5, '正确的做法是在 `BEFORE INSERT` 触发器中定义复杂的逻辑，该触发器在数据插入之前执行，确保数据的完整性。', '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `questions` VALUES (565, '如何在MySQL中通过视图进行复杂查询？\n', 'CHOICE', 1, 19, 'HARD', 5, '可以通过创建包含复杂查询的视图来进行复杂的查询操作。还可以在视图中使用子查询来实现复杂的逻辑。', '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `questions` VALUES (566, 'MySQL中 `GROUP BY` 和 `ORDER BY` 的使用顺序是什么？\n', 'CHOICE', 1, 19, 'HARD', 5, '在SQL查询中，`GROUP BY` 通常在 `ORDER BY` 之前，因为 `GROUP BY` 通常需要先对数据进行分组再排序。', '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `questions` VALUES (567, 'MySQL中的 `auto_increment` 自增字段如何在插入数据时自动增加？\n', 'CHOICE', 1, 19, 'HARD', 5, '`auto_increment` 字段在插入数据时不需要手动指定数值，MySQL会自动在插入新记录时递增该字段。', '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `questions` VALUES (568, '在MySQL中，如何正确使用事务以确保数据的一致性和完整性？\n', 'CHOICE', 1, 19, 'HARD', 5, '正确的方法是使用 `START TRANSACTION` 开始一个事务，然后根据需要进行一系列操作，最后使用 `COMMIT` 提交事务或使用 `ROLLBACK` 回滚事务。', '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `questions` VALUES (569, '如何在MySQL中防止SQL注入攻击？\n', 'CHOICE', 1, 19, 'HARD', 5, '预防SQL注入的最佳方法是使用预处理语句和参数化查询。这样可以确保输入的数据被视为参数而非SQL代码。', '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `questions` VALUES (570, '如何创建一个存储过程来批量更新多个记录，假设数据表有一个 `date_modified` 字段用于记录最后更新时间，并且可以使用不同的参数组合传递数据？\n', 'CHOICE', 1, 19, 'HARD', 5, '可以使用 `CASE` 语句来构建动态的更新语句，根据传递的参数组合来更新数据。', '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `questions` VALUES (571, '如何实现MySQL数据库的全文搜索功能？\n', 'CHOICE', 1, 19, 'HARD', 5, '全文搜索功能通过创建 `FULLTEXT` 索引实现，并使用 `MATCH AGAINST` 语句来执行搜索。', '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `questions` VALUES (572, '如何在MySQL中使用外部连接（LEFT JOIN 或 RIGHT JOIN）来获取部门信息和部门中所有员工的信息，即使某些部门没有员工？\n', 'CHOICE', 1, 19, 'HARD', 5, '使用 `LEFT JOIN` 会返回部门表中的所有记录，即使这些部门在员工表中没有对应的记录。', '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `questions` VALUES (573, '如何在MySQL中创建一个虚拟列？\n', 'CHOICE', 1, 19, 'HARD', 5, '虚拟列可以通过在 `CREATE TABLE` 语句中使用带有表达式的 `AS` 子句来创建。', '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `questions` VALUES (574, '如何使用MySQL中的窗口函数进行复杂的排名查询？\n', 'CHOICE', 1, 19, 'HARD', 5, '窗口函数如 `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()` 等可以用于复杂的排名查询，帮助处理数据的不同模式。', '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `questions` VALUES (575, '如何使用MySQL的联接（JOIN）来获取员工信息和他们的直接经理信息？\n', 'CHOICE', 1, 19, 'HARD', 5, '使用 `INNER JOIN` 可以连接员工表和经理表，并只返回两个表中有匹配记录的员工信息。', '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `questions` VALUES (576, '如何通过MySQL中的脚本调用系统函数来获取当前时间？\n', 'CHOICE', 1, 19, 'HARD', 5, '正确的做法是使用 `NOW()` 函数获取当前日期和时间。', '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `questions` VALUES (577, '如何在MySQL中创建一个触发器在插入新记录时更新另一个表的统计计数？\n', 'CHOICE', 1, 19, 'HARD', 5, '应在 `AFTER INSERT` 触发器中执行更新语句，确保插入新记录后再进行其他表的修改。', '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `questions` VALUES (578, '在MySQL中如何实现视图的更新操作？\n', 'CHOICE', 1, 19, 'HARD', 5, '只有当视图定义为引用非聚合列且不包含聚合函数、`DISTINCT`、`GROUP BY` 等时，视图才可进行更新操作。', '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);
INSERT INTO `questions` VALUES (579, '如何在MySQL中创建存储过程处理复杂的逻辑？\n', 'CHOICE', 1, 19, 'HARD', 5, '存储过程可以使用多种控制结构，如 `IF`, `CASE`, `WHILE` 语句等，以实现复杂的逻辑和流程控制。', '2026-10-12 18:03:17', '2026-10-12 18:03:17', 0);

-- ----------------------------
-- Table structure for user_question_favorites
-- ----------------------------
DROP TABLE IF EXISTS `user_question_favorites`;
CREATE TABLE `user_question_favorites`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '收藏ID',
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `question_id` bigint NOT NULL COMMENT '题目ID',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '收藏时间',
  `is_deleted` tinyint(1) UNSIGNED ZEROFILL NOT NULL DEFAULT 0 COMMENT '0-未删除 1-已删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_user_question`(`user_id`, `question_id`) USING BTREE,
  INDEX `idx_user_id`(`user_id`) USING BTREE,
  INDEX `idx_question_id`(`question_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户题目收藏表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_question_favorites
-- ----------------------------
INSERT INTO `user_question_favorites` VALUES (1, 3, 518, '2026-10-11 23:51:30', 0);
INSERT INTO `user_question_favorites` VALUES (2, 3, 465, '2026-10-11 23:52:26', 0);
INSERT INTO `user_question_favorites` VALUES (3, 2, 501, '2026-10-12 00:00:22', 0);
INSERT INTO `user_question_favorites` VALUES (4, 2, 500, '2026-10-12 00:00:23', 0);
INSERT INTO `user_question_favorites` VALUES (5, 2, 426, '2026-10-12 00:00:26', 0);
INSERT INTO `user_question_favorites` VALUES (6, 2, 518, '2026-10-12 00:25:12', 0);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `real_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `role` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'user',
  `status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'active',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NULL DEFAULT 0 COMMENT '0-未删除，1-已删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', 'admin', 'active', '2025-06-23 22:00:18', '2026-10-11 23:09:07', 0);
INSERT INTO `users` VALUES (2, 'user', 'e10adc3949ba59abbe56e057f20f883e', 'user', 'user', 'active', '2026-10-09 15:17:24', '2026-10-12 02:19:34', 0);
INSERT INTO `users` VALUES (3, 'dafa', 'e10adc3949ba59abbe56e057f20f883e', 'user', 'user', 'active', '2026-10-11 23:08:28', '2026-10-11 23:12:30', 0);

-- ----------------------------
-- Table structure for video_categories
-- ----------------------------
DROP TABLE IF EXISTS `video_categories`;
CREATE TABLE `video_categories`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '分类名称',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '分类描述',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父级分类ID，0为顶级',
  `sort_order` int NULL DEFAULT 0 COMMENT '排序权重',
  `status` tinyint NULL DEFAULT 1 COMMENT '状态：1-启用，0-禁用',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_parent_id`(`parent_id`) USING BTREE,
  INDEX `idx_sort_order`(`sort_order`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '视频分类表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of video_categories
-- ----------------------------
INSERT INTO `video_categories` VALUES (1, 'Java基础', 'Java编程语言基础知识讲解，适合初学者', 0, 1, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (2, 'Java进阶', 'Java高级特性、框架应用和最佳实践', 0, 2, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (3, 'Spring框架', 'Spring生态系统相关技术栈详解', 0, 3, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (4, '数据库', '数据库设计、优化和管理相关知识', 0, 4, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (5, '前端技术', '前端开发技术栈和工具使用', 0, 5, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (6, '系统设计', '架构设计、系统分析和最佳实践', 0, 6, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (7, '面试指导', '技术面试准备和常见问题解答', 0, 7, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (8, '项目实战', '完整项目开发流程和实战经验分享', 0, 8, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (11, '语法基础', 'Java基础语法和概念', 1, 1, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (12, '面向对象', 'Java面向对象编程思想', 1, 2, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (13, '集合框架', 'Java集合类和数据结构', 1, 3, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (14, '异常处理', 'Java异常机制和处理方式', 1, 4, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (21, '多线程', 'Java并发编程和线程安全', 2, 1, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (22, 'JVM原理', 'Java虚拟机内存管理和性能调优', 2, 2, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (23, '设计模式', '常用设计模式在Java中的应用', 2, 3, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (24, '网络编程', 'Java网络编程和Socket通信', 2, 4, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (31, 'Spring Core', 'Spring核心容器和IoC/DI', 3, 1, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (32, 'Spring MVC', 'Spring Web MVC框架', 3, 2, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (33, 'Spring Boot', 'Spring Boot快速开发', 3, 3, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (34, 'Spring Cloud', 'Spring Cloud微服务架构', 3, 4, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (41, 'MySQL', 'MySQL数据库管理和优化', 4, 1, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (42, 'Redis', 'Redis缓存技术和应用', 4, 2, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (43, 'MongoDB', 'MongoDB NoSQL数据库', 4, 3, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (44, '数据库设计', '数据库建模和设计规范', 4, 4, 1, '2025-06-29 19:40:04', '2025-06-29 19:40:04');
INSERT INTO `video_categories` VALUES (45, '嵌入式', '嵌入式技术', 0, 8, 1, '2025-06-29 22:37:42', '2026-10-06 18:25:48');

-- ----------------------------
-- Table structure for video_likes
-- ----------------------------
DROP TABLE IF EXISTS `video_likes`;
CREATE TABLE `video_likes`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '点赞ID',
  `video_id` bigint NOT NULL COMMENT '视频ID',
  `user_id` bigint NULL DEFAULT NULL COMMENT '用户ID',
  `user_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户IP（匿名点赞）',
  `user_agent` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户代理信息',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '点赞时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '逻辑删除: 0-未删除, 1-已删除',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_video_ip`(`video_id`, `user_ip`) USING BTREE,
  UNIQUE INDEX `uk_video_user`(`video_id`, `user_id`) USING BTREE,
  INDEX `idx_video_id`(`video_id`) USING BTREE,
  INDEX `idx_created_at`(`created_at`) USING BTREE,
  INDEX `idx_video_ip`(`video_id`, `user_ip`) USING BTREE,
  CONSTRAINT `video_likes_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '视频点赞表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of video_likes
-- ----------------------------
INSERT INTO `video_likes` VALUES (1, 1, NULL, '192.168.1.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2025-06-29 19:40:04', 0);
INSERT INTO `video_likes` VALUES (2, 1, NULL, '192.168.1.101', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)', '2025-06-29 19:40:04', 0);
INSERT INTO `video_likes` VALUES (3, 2, NULL, '192.168.1.102', 'Mozilla/5.0 (X11; Linux x86_64)', '2025-06-29 19:40:04', 0);
INSERT INTO `video_likes` VALUES (4, 2, NULL, '192.168.1.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', '2025-06-29 19:40:04', 0);
INSERT INTO `video_likes` VALUES (5, 3, NULL, '192.168.1.104', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X)', '2025-06-29 19:40:04', 0);
INSERT INTO `video_likes` VALUES (6, 6, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '2025-06-29 23:00:50', 0);
INSERT INTO `video_likes` VALUES (7, 9, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', '2025-07-09 18:03:15', 0);
INSERT INTO `video_likes` VALUES (8, 1, NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36 Edg/154.0.0.0', '2026-10-10 06:33:32', 0);

-- ----------------------------
-- Table structure for video_views
-- ----------------------------
DROP TABLE IF EXISTS `video_views`;
CREATE TABLE `video_views`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '观看ID',
  `video_id` bigint NOT NULL COMMENT '视频ID',
  `user_ip` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户IP',
  `user_agent` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户代理信息',
  `view_duration` int NULL DEFAULT NULL COMMENT '观看时长（秒）',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '观看时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_video_id`(`video_id`) USING BTREE,
  INDEX `idx_created_at`(`created_at`) USING BTREE,
  INDEX `idx_user_ip`(`user_ip`) USING BTREE,
  CONSTRAINT `video_views_ibfk_1` FOREIGN KEY (`video_id`) REFERENCES `videos` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '视频观看记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of video_views
-- ----------------------------
INSERT INTO `video_views` VALUES (1, 1, '192.168.1.100', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 1650, '2025-06-29 19:40:04');
INSERT INTO `video_views` VALUES (2, 1, '192.168.1.101', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)', 1800, '2025-06-29 19:40:04');
INSERT INTO `video_views` VALUES (3, 2, '192.168.1.102', 'Mozilla/5.0 (X11; Linux x86_64)', 2100, '2025-06-29 19:40:04');
INSERT INTO `video_views` VALUES (4, 2, '192.168.1.103', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64)', 2400, '2025-06-29 19:40:04');
INSERT INTO `video_views` VALUES (5, 3, '192.168.1.104', 'Mozilla/5.0 (iPhone; CPU iPhone OS 14_6 like Mac OS X)', 2800, '2025-06-29 19:40:04');
INSERT INTO `video_views` VALUES (6, 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 0, '2025-06-29 23:00:41');
INSERT INTO `video_views` VALUES (7, 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 3, '2025-06-29 23:00:44');
INSERT INTO `video_views` VALUES (8, 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 3, '2025-06-29 23:00:45');
INSERT INTO `video_views` VALUES (10, 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 9, '2025-06-29 23:00:49');
INSERT INTO `video_views` VALUES (11, 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 9, '2025-06-29 23:02:16');
INSERT INTO `video_views` VALUES (12, 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 21, '2025-06-29 23:02:22');
INSERT INTO `video_views` VALUES (14, 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 0, '2025-06-29 23:10:53');
INSERT INTO `video_views` VALUES (15, 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 6, '2025-06-29 23:10:59');
INSERT INTO `video_views` VALUES (17, 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 18, '2025-06-29 23:11:10');
INSERT INTO `video_views` VALUES (19, 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 127, '2025-06-29 23:12:54');
INSERT INTO `video_views` VALUES (20, 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 0, '2025-06-29 23:32:07');
INSERT INTO `video_views` VALUES (21, 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 4, '2025-06-29 23:32:12');
INSERT INTO `video_views` VALUES (22, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 0, '2025-06-29 23:39:46');
INSERT INTO `video_views` VALUES (23, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 2, '2025-06-29 23:39:48');
INSERT INTO `video_views` VALUES (24, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 0, '2025-07-03 18:58:50');
INSERT INTO `video_views` VALUES (25, 7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 2, '2025-07-03 18:58:53');
INSERT INTO `video_views` VALUES (27, 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 0, '2025-07-09 18:03:04');
INSERT INTO `video_views` VALUES (28, 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 2, '2025-07-09 18:03:07');
INSERT INTO `video_views` VALUES (29, 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 23, '2025-07-09 18:03:29');
INSERT INTO `video_views` VALUES (30, 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 0, '2025-07-16 14:45:11');
INSERT INTO `video_views` VALUES (31, 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 10, '2025-07-16 14:45:22');
INSERT INTO `video_views` VALUES (32, 9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/133.0.0.0 Safari/537.36', 20, '2025-07-16 14:45:22');
INSERT INTO `video_views` VALUES (33, 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36 Edg/154.0.0.0', 1, '2026-10-10 06:03:14');
INSERT INTO `video_views` VALUES (34, 11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36 Edg/154.0.0.0', 5, '2026-10-10 06:03:19');
INSERT INTO `video_views` VALUES (35, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36 Edg/154.0.0.0', 34, '2026-10-10 06:03:48');
INSERT INTO `video_views` VALUES (36, 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36 Edg/154.0.0.0', 36, '2026-10-10 06:04:18');
INSERT INTO `video_views` VALUES (37, 6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36 Edg/154.0.0.0', 38, '2026-10-10 06:04:18');
INSERT INTO `video_views` VALUES (38, 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36 Edg/154.0.0.0', 39, '2026-10-10 06:04:37');
INSERT INTO `video_views` VALUES (39, 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/154.0.0.0 Safari/537.36 Edg/154.0.0.0', 69, '2026-10-10 06:05:07');

-- ----------------------------
-- Table structure for videos
-- ----------------------------
DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '视频ID',
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '视频标题',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '视频描述',
  `category_id` bigint NOT NULL COMMENT '分类ID',
  `file_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '视频文件URL',
  `cover_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '封面图片URL',
  `duration` int NULL DEFAULT NULL COMMENT '视频时长（秒）',
  `file_size` bigint NULL DEFAULT NULL COMMENT '文件大小（字节）',
  `uploader_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '上传者名称',
  `uploader_type` tinyint NULL DEFAULT 1 COMMENT '上传者类型：1-用户投稿，2-管理员上传',
  `user_id` bigint NULL DEFAULT NULL COMMENT '上传用户ID（用户投稿时）',
  `admin_id` bigint NULL DEFAULT NULL COMMENT '管理员ID（管理员上传时）',
  `status` tinyint NULL DEFAULT 0 COMMENT '状态：0-待审核，1-已发布，2-已拒绝，3-已下架',
  `audit_admin_id` bigint NULL DEFAULT NULL COMMENT '审核管理员ID',
  `audit_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `audit_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '审核原因（拒绝时）',
  `view_count` bigint NULL DEFAULT 0 COMMENT '观看次数',
  `like_count` bigint NULL DEFAULT 0 COMMENT '点赞次数',
  `tags` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标签，逗号分隔',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` tinyint NOT NULL DEFAULT 0 COMMENT '逻辑删除: 0-未删除, 1-已删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_category_id`(`category_id`) USING BTREE,
  INDEX `idx_status`(`status`) USING BTREE,
  INDEX `idx_uploader_type`(`uploader_type`) USING BTREE,
  INDEX `idx_view_count`(`view_count`) USING BTREE,
  INDEX `idx_like_count`(`like_count`) USING BTREE,
  INDEX `idx_created_at`(`created_at`) USING BTREE,
  CONSTRAINT `videos_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `video_categories` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '视频信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of videos
-- ----------------------------
INSERT INTO `videos` VALUES (1, 'Java基础语法入门', '从零开始学习Java编程语言，掌握基本语法和编程思想', 11, 'http://192.168.180.101:9000/exams/videos/20261008/6b058138-32de-4846-bd1e-2afe4ed0f780-spring框架.mp4', 'http://192.168.180.101:9000/exams/videos/20261008/87de47ab-a4cf-4d0c-8c42-f661ff7efb69-121.png', 1800, 104857600, '技术讲师', 2, NULL, 1, 1, 1, '2025-06-29 19:40:04', '视频内容优质，适合初学者学习', 166, 26, 'Java,基础,语法,入门', '2025-06-29 19:40:04', '2026-10-10 06:45:57', 0);
INSERT INTO `videos` VALUES (2, 'Spring Boot快速上手', '快速掌握Spring Boot核心特性和快速开发技巧', 33, 'http://192.168.180.101:9000/exams/videos/20261008/d25c5069-7063-4eb9-8193-455177ae4fea-springboot核心视频.mp4', 'http://192.168.180.101:9000/exams/videos/20261008/c87a24aa-f1b9-4762-a287-09837277f824-涂鸦墙 芙宁娜电脑壁纸_彼岸壁纸.jpg', 2400, 156784532, '架构师', 2, NULL, 1, 1, 1, '2025-06-29 19:40:04', '内容详实，示例丰富', 236, 45, 'Spring Boot,快速开发,微服务', '2025-06-29 19:40:04', '2026-10-08 23:08:03', 0);
INSERT INTO `videos` VALUES (3, 'MySQL性能优化实战', '深入讲解MySQL查询优化和性能调优的最佳实践', 41, 'http://192.168.180.101:9000/exams/videos/20261008/6b058138-32de-4846-bd1e-2afe4ed0f780-spring框架.mp4', 'http://192.168.180.101:9000/exams/videos/20261008/87de47ab-a4cf-4d0c-8c42-f661ff7efb69-121.png', 3600, 287654321, 'DBA专家', 2, NULL, 1, 1, 1, '2025-06-29 19:40:04', '干货满满，实用性强', 92, 12, 'MySQL,性能优化,数据库,DBA', '2025-06-29 19:40:04', '2026-10-08 23:07:53', 0);
INSERT INTO `videos` VALUES (4, 'Vue3前端开发指南', '全面介绍Vue3新特性和现代前端开发最佳实践', 5, 'http://192.168.180.101:9000/exams/videos/20261008/d25c5069-7063-4eb9-8193-455177ae4fea-springboot核心视频.mp4', 'http://192.168.180.101:9000/exams/videos/20261008/c87a24aa-f1b9-4762-a287-09837277f824-涂鸦墙 芙宁娜电脑壁纸_彼岸壁纸.jpg', 2700, 198765432, '前端工程师', 2, NULL, 1, 1, 1, '2025-06-29 19:40:04', '内容新颖，跟上技术潮流', 181, 34, 'Vue3,前端,JavaScript,组件化', '2025-06-29 19:40:04', '2026-10-08 23:08:06', 0);
INSERT INTO `videos` VALUES (5, '微服务架构设计', '深入解析微服务架构设计原理和实践经验', 6, 'http://192.168.180.101:9000/exams/videos/20261008/6b058138-32de-4846-bd1e-2afe4ed0f780-spring框架.mp4', 'http://192.168.180.101:9000/exams/videos/20261008/87de47ab-a4cf-4d0c-8c42-f661ff7efb69-121.png', 4200, 345678901, '系统架构师', 2, NULL, 1, 1, 1, '2025-06-29 19:40:04', '架构设计精髓，值得反复学习', 67, 8, '微服务,架构设计,分布式,系统设计', '2025-06-29 19:40:04', '2026-10-08 23:07:56', 0);
INSERT INTO `videos` VALUES (6, '客户端测试1', '大叔大婶打打卡时间看哈的撒', 11, 'http://192.168.180.101:9000/exams/videos/20261008/d25c5069-7063-4eb9-8193-455177ae4fea-springboot核心视频.mp4', 'http://192.168.180.101:9000/exams/videos/20261008/c87a24aa-f1b9-4762-a287-09837277f824-涂鸦墙 芙宁娜电脑壁纸_彼岸壁纸.jpg', 7, 2181933, '赵伟风', 1, NULL, NULL, 1, 1, '2025-06-29 22:49:42', NULL, 19, 1, '测试,测试1', '2025-06-29 22:49:13', '2026-10-08 23:08:08', 0);
INSERT INTO `videos` VALUES (7, '好视频', '湿哒哒大大大阿德撒旦撒旦撒阿达撒打算打算', 12, 'http://192.168.180.101:9000/exams/videos/20261008/6b058138-32de-4846-bd1e-2afe4ed0f780-spring框架.mp4', 'http://192.168.180.101:9000/exams/videos/20261008/87de47ab-a4cf-4d0c-8c42-f661ff7efb69-121.png', 100, 2181933, '管理员', 2, NULL, 1, 1, 1, '2025-06-29 23:39:17', NULL, 4, 0, 'xxx,x,x,x,xx', '2025-06-29 23:39:17', '2026-10-08 23:07:58', 0);
INSERT INTO `videos` VALUES (8, '测试视频', '手打达到休息休息休息休息', 22, 'http://192.168.180.101:9000/exams/videos/20261008/d25c5069-7063-4eb9-8193-455177ae4fea-springboot核心视频.mp4', 'http://192.168.180.101:9000/exams/videos/20261008/c87a24aa-f1b9-4762-a287-09837277f824-涂鸦墙 芙宁娜电脑壁纸_彼岸壁纸.jpg', 514, 44436864, '赵伟风', 2, NULL, 1, 3, 1, '2025-06-29 23:45:27', NULL, 0, 0, '测试,好好,大家好', '2025-06-29 23:45:27', '2026-10-09 00:24:46', 1);
INSERT INTO `videos` VALUES (9, 'xxx', 'xxx', 12, 'http://192.168.180.101:9000/exams/videos/20261008/6b058138-32de-4846-bd1e-2afe4ed0f780-spring框架.mp4', 'http://192.168.180.101:9000/exams/videos/20261008/86be198e-585c-4858-9ce9-0e89085a083e-1.jpg', 444, 35402445, 'zhaoweinfeg', 2, NULL, 1, 1, 1, '2025-07-09 18:02:23', NULL, 6, 1, 'che,he', '2025-07-09 18:02:23', '2026-10-08 23:35:22', 1);
INSERT INTO `videos` VALUES (10, 'dea', 'da', 11, 'http://192.168.180.101:9000/exams/videos/20261008/3939f4be-5d4c-4650-9ede-c3a6a7fad45c-902297fbc620595b5a43221931895367.mp4', 'http://192.168.180.101:9000/exams/videos/20261008/86be198e-585c-4858-9ce9-0e89085a083e-1.jpg', 87, 19661052, 'admin', 1, 1, NULL, 3, NULL, NULL, NULL, 0, 0, '答复', '2026-10-08 05:30:13', '2026-10-08 22:26:44', 0);
INSERT INTO `videos` VALUES (11, 'fgvew', 'fawf', 12, 'http://192.168.180.101:9000/exams/videos/20261008/26b0baa6-0d8d-4224-8609-06ec51e872b1-c0dd16a8b66cb1aef22343d6092dfd84.mp4', 'http://192.168.180.101:9000/exams/videos/20261008/86be198e-585c-4858-9ce9-0e89085a083e-1.jpg', 90, 22979890, 'admin', 2, NULL, 1, 1, NULL, '2026-10-09 00:23:29', '1', 7, 6, 'faweefa', '2026-10-08 06:42:22', '2026-10-10 05:47:47', 0);
INSERT INTO `videos` VALUES (12, 'springboot核心', 'ioc和aop', 33, 'http://192.168.180.101:9000/exams/videos/20261008/d25c5069-7063-4eb9-8193-455177ae4fea-springboot核心视频.mp4', 'http://192.168.180.101:9000/exams/videos/20261008/c87a24aa-f1b9-4762-a287-09837277f824-涂鸦墙 芙宁娜电脑壁纸_彼岸壁纸.jpg', 56, 1515211, 'admin', 2, NULL, 1, 1, NULL, '2026-10-12 18:06:39', '1', 12, 0, '', '2026-10-08 22:42:34', '2026-10-12 18:06:39', 0);
INSERT INTO `videos` VALUES (13, 'spring框架', '概述', 32, 'http://192.168.180.101:9000/exams/videos/20261008/6b058138-32de-4846-bd1e-2afe4ed0f780-spring框架.mp4', 'http://192.168.180.101:9000/exams/videos/20261008/87de47ab-a4cf-4d0c-8c42-f661ff7efb69-121.png', 20, 609897, 'admin', 2, NULL, 1, 1, NULL, '2026-10-11 22:06:39', '1', 9, 0, '', '2026-10-08 23:06:26', '2026-10-11 22:06:39', 0);
INSERT INTO `videos` VALUES (14, 'dfwefw', '多钱啊比哦啊了吧哦福娃', 7, 'http://192.168.180.101:9000/exams/videos/20261010/2de0e143-ebeb-468a-8357-acc0442a0ac7-springboot核心视频.mp4', 'http://192.168.180.101:9000/exams/videos/20261010/b4ea9159-e96f-4acf-8c0b-4e8f92d9b079-25 职场少女的特质与攻略.png', 56, 1515211, 'dqef', 1, 2, NULL, 2, NULL, '2026-10-10 04:23:09', '1', 0, 0, 'fqa', '2026-10-10 04:21:31', '2026-10-10 04:23:09', 0);
INSERT INTO `videos` VALUES (15, '测试0012', '地方挖方GV饿啊复古色发企鹅', 5, 'http://192.168.180.101:9000/exams/videos/20261012/4709b9a0-a2ee-458a-9165-660c1a723dbd-springboot核心视频.mp4', 'http://192.168.180.101:9000/exams/videos/20261012/db1b74a7-4819-4901-bea8-01a2271b2080-考试成绩单_福娃_2026_10_10.png', 56, 1515211, '哥仨付', 1, 2, NULL, 2, NULL, '2026-10-12 18:20:54', '1', 0, 0, 'spring', '2026-10-12 18:20:07', '2026-10-12 18:20:53', 0);
INSERT INTO `videos` VALUES (16, '染发膏贝特瑞', '个人逢恶导非v发的地方v发的', 5, 'http://192.168.180.101:9000/exams/videos/20261012/bd85cdad-4187-4056-b6ba-e00d069afc2d-spring框架.mp4', 'http://192.168.180.101:9000/exams/videos/20261012/2c5af233-b311-4c32-b666-9a74ed8a3948-考试成绩单_福娃_2026_10_10.png', 20, 609897, '东风股份额度', 1, 2, NULL, 0, NULL, NULL, NULL, 0, 0, '飞飞飞', '2026-10-12 18:29:50', '2026-10-12 18:29:50', 0);

SET FOREIGN_KEY_CHECKS = 1;
