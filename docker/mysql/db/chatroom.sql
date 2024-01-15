-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.39 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2023-10-02 22:52:07
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for chatroom
CREATE DATABASE IF NOT EXISTS `chatroom` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `chatroom`;


-- Dumping structure for table chatroom.chat_friend
CREATE TABLE IF NOT EXISTS `chat_friend` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '用户id',
  `friend_id` bigint(20) DEFAULT NULL COMMENT '好友id',
  `friend_name` varchar(100) DEFAULT NULL COMMENT '好友备注',
  `note1` varchar(100) DEFAULT NULL COMMENT '备注1',
  `note2` varchar(100) DEFAULT NULL COMMENT '备注2',
  `note3` varchar(100) DEFAULT NULL COMMENT '备注3',
  `note4` varchar(100) DEFAULT NULL COMMENT '备注4',
  `note5` varchar(100) DEFAULT NULL COMMENT '备注5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='好友关系表';

-- Dumping data for table chatroom.chat_friend: ~3 rows (approximately)
/*!40000 ALTER TABLE `chat_friend` DISABLE KEYS */;
REPLACE INTO `chat_friend` (`id`, `user_id`, `friend_id`, `friend_name`, `note1`, `note2`, `note3`, `note4`, `note5`) VALUES
	(21, 1, 5, '', NULL, NULL, NULL, NULL, NULL),
	(22, 5, 1, '管理员', NULL, NULL, NULL, NULL, NULL),
	(71, 8, 1, '', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `chat_friend` ENABLE KEYS */;


-- Dumping structure for table chatroom.chat_history
CREATE TABLE IF NOT EXISTS `chat_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint(20) DEFAULT NULL COMMENT '发送人id',
  `receive_id` bigint(20) DEFAULT NULL COMMENT '接收人id',
  `chat_content` longtext COMMENT '发送内容',
  `chat_time` datetime DEFAULT NULL COMMENT '发送时间',
  `read_status` varchar(3) DEFAULT NULL COMMENT '阅读状态',
  `read_time` datetime DEFAULT NULL COMMENT '阅读时间',
  `note1` varchar(100) DEFAULT NULL COMMENT '备注1',
  `note2` varchar(100) DEFAULT NULL COMMENT '备注2',
  `note3` varchar(100) DEFAULT NULL COMMENT '备注3',
  `note4` varchar(100) DEFAULT NULL COMMENT '备注4',
  `note5` varchar(100) DEFAULT NULL COMMENT '备注5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='聊天记录表';

-- Dumping data for table chatroom.chat_history: ~119 rows (approximately)
/*!40000 ALTER TABLE `chat_history` DISABLE KEYS */;
REPLACE INTO `chat_history` (`id`, `user_id`, `receive_id`, `chat_content`, `chat_time`, `read_status`, `read_time`, `note1`, `note2`, `note3`, `note4`, `note5`) VALUES
	(1, 1, 5, '123', '2023-09-29 23:20:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 5, 1, '456', '2023-09-29 23:20:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 1, 5, '789', '2023-09-29 23:39:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 1, 5, '<strong>789</strong>', '2023-09-29 23:40:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, 1, 3, '<em>你好</em>', '2023-09-29 23:41:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 1, 5, '谢谢', '2023-09-29 23:57:40', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(7, 1, 5, '<strong>跳转</strong>测试', '2023-09-29 23:59:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 1, 5, '洞洞', '2023-09-30 00:01:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 1, 5, '啊？', '2023-09-30 00:01:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 1, 5, '去', '2023-09-30 00:02:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 5, 1, '为什么没有提醒', '2023-09-30 00:03:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(12, 5, 1, '？怎么两个还冲突啊', '2023-09-30 00:03:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(13, 1, 5, '太神奇了', '2023-09-30 00:04:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(14, 1, 5, '离开', '2023-09-30 00:05:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(15, 5, 1, '不太明白', '2023-09-30 00:05:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(16, 5, 1, '123', '2023-09-30 00:08:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(17, 1, 5, '444', '2023-09-30 00:08:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(18, 5, 1, '看一下route', '2023-09-30 00:09:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(19, 5, 1, '试一下', '2023-09-30 00:11:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(20, 5, 1, '再试一下', '2023-09-30 00:11:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(21, 1, 5, '啊？', '2023-09-30 00:17:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(22, 1, 5, '神奇吧', '2023-09-30 00:18:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(23, 1, 5, '来看看啊', '2023-09-30 00:18:44', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(24, 1, 5, '这不是完了', '2023-09-30 00:19:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(25, 1, 5, '绷', '2023-09-30 00:20:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(26, 1, 5, '绷一下', '2023-09-30 00:20:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(27, 1, 5, '烦死了', '2023-09-30 00:21:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(28, 1, 5, '睡觉了', '2023-09-30 00:22:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(29, 1, 5, '睡不着了', '2023-09-30 00:23:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(30, 5, 1, '这下应该没问题了吧', '2023-09-30 00:23:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(31, 5, 1, '烦', '2023-09-30 00:25:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(32, 1, 5, '睡觉去了', '2023-09-30 00:38:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(33, 5, 1, '好', '2023-09-30 00:39:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(34, 5, 1, '晚安', '2023-09-30 00:40:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(35, 1, 5, '睡觉', '2023-09-30 00:42:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(36, 1, 5, '晚安', '2023-09-30 00:43:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(37, 5, 1, '啊？', '2023-09-30 00:44:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(38, 1, 5, '这不对吧', '2023-09-30 00:44:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(39, 5, 1, '睡不着了呀', '2023-09-30 00:45:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(40, 1, 5, '确实', '2023-09-30 00:46:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(41, 5, 1, '神奇', '2023-09-30 00:46:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(42, 1, 5, '神奇', '2023-09-30 00:47:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(43, 5, 1, '1', '2023-09-30 00:47:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(44, 5, 1, '1', '2023-09-30 00:47:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(45, 5, 1, '服了', '2023-09-30 00:48:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(46, 1, 5, '这下呢', '2023-09-30 00:50:53', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(47, 1, 5, '好了吗？', '2023-09-30 00:51:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(48, 6, 1, '111', '2023-09-30 00:52:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(49, 6, 1, '来看一下', '2023-09-30 00:56:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(50, 6, 1, '111', '2023-09-30 00:57:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(51, 6, 1, '111', '2023-09-30 00:57:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(52, 6, 1, '123', '2023-09-30 00:58:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(53, 6, 1, '123', '2023-09-30 00:59:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(54, 6, 1, '123', '2023-09-30 00:59:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(55, 6, 1, '333', '2023-09-30 01:02:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(56, 6, 1, '456', '2023-09-30 01:03:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(57, 6, 1, '6', '2023-09-30 01:04:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(58, 6, 1, '123', '2023-09-30 01:07:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(59, 6, 1, '能不能睡啊', '2023-09-30 01:10:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(60, 6, 1, '最后一搏了', '2023-09-30 01:14:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(61, 1, 6, '成功了！', '2023-09-30 01:14:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(62, 1, 6, '我们是冠军！', '2023-09-30 01:14:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(63, 1, 6, '太强了', '2023-09-30 01:15:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(64, 1, 6, '对吧', '2023-09-30 01:15:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(65, 6, 1, '太对了，可以睡觉去了', '2023-09-30 01:16:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(66, 1, 6, '是的', '2023-09-30 01:16:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(67, 1, 5, '1', '2023-09-30 11:39:05', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(68, 5, 1, '说话', '2023-09-30 14:08:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(69, 5, 1, '<strong>加粗</strong>', '2023-09-30 14:09:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(70, 5, 1, '<em>1</em>', '2023-09-30 14:11:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(71, 1, 5, '123', '2023-10-01 18:06:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(72, 5, 1, '111', '2023-10-01 18:06:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(73, 1, 5, '465', '2023-10-01 18:07:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(74, 5, 1, '123', '2023-10-01 18:07:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(75, 5, 1, '111', '2023-10-01 18:09:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(76, 1, 5, '777', '2023-10-01 18:09:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(77, 1, 5, '8', '2023-10-01 18:09:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(84, 8, 5, '111', '2023-10-01 21:29:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(85, 8, 5, '啊？不用清空？', '2023-10-01 21:35:45', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(86, 8, 5, '真好', '2023-10-01 21:36:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(87, 5, 8, '太棒了', '2023-10-01 21:37:22', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(88, 5, 1, '完了，它不会动', '2023-10-01 21:40:26', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(89, 5, 1, '哈哈哈哈', '2023-10-01 22:01:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(90, 8, 5, '看看', '2023-10-01 22:32:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(91, 5, 8, '不好使啊', '2023-10-01 22:33:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(92, 5, 1, '1', '2023-10-01 22:37:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(93, 5, 1, '2', '2023-10-01 22:40:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(94, 5, 1, '3', '2023-10-01 22:40:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(95, 1, 5, '5', '2023-10-01 22:40:20', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(96, 1, 5, '6', '2023-10-01 22:40:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(97, 5, 1, '7', '2023-10-01 22:40:39', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(98, 1, 5, '8', '2023-10-01 22:41:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(99, 5, 1, '9', '2023-10-01 22:41:59', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(100, 5, 1, '我', '2023-10-01 22:44:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(101, 5, 8, '好怪啊', '2023-10-01 22:49:46', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(102, 1, 5, '1', '2023-10-01 22:53:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(103, 1, 5, '1', '2023-10-01 22:53:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(104, 5, 8, '1', '2023-10-01 22:53:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(105, 5, 1, '1', '2023-10-01 22:56:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(106, 5, 1, '1', '2023-10-01 22:56:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(107, 1, 5, '1', '2023-10-01 22:57:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(108, 5, 1, '1', '2023-10-01 22:59:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(109, 5, 1, '啊哈哈哈哈', '2023-10-01 23:02:11', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(110, 1, 5, '呀哈', '2023-10-01 23:30:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(111, 5, 1, '测试', '2023-10-01 23:47:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(112, 5, 1, '2', '2023-10-01 23:49:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(113, 5, 1, '好', '2023-10-01 23:50:27', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(114, 5, 1, '7', '2023-10-01 23:51:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(115, 5, 1, '啊', '2023-10-01 23:54:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(116, 1, 5, '太可怕了', '2023-10-01 23:54:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(117, 1, 5, '你就说是不是吧', '2023-10-01 23:54:30', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(118, 5, 1, '确实', '2023-10-01 23:54:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(119, 1, 5, '只', '2023-10-02 00:00:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(120, 1, 5, '只', '2023-10-02 00:01:34', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(121, 1, 5, '我', '2023-10-02 00:06:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(123, 1, 5, '0', '2023-10-02 00:34:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(124, 1, 5, '0', '2023-10-02 00:34:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(125, 1, 5, '1', '2023-10-02 00:38:08', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(126, 8, 5, '1', '2023-10-02 00:50:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(127, 8, 5, '1', '2023-10-02 00:50:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(128, 8, 5, '6', '2023-10-02 00:50:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(129, 5, 1, '烦', '2023-10-02 00:56:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `chat_history` ENABLE KEYS */;


-- Dumping structure for table chatroom.chat_session
CREATE TABLE IF NOT EXISTS `chat_session` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` varchar(100) DEFAULT NULL COMMENT '用户id',
  `session_code` varchar(300) DEFAULT NULL COMMENT 'session',
  `online_status` varchar(3) DEFAULT NULL COMMENT '在线状态',
  `note1` varchar(100) DEFAULT NULL COMMENT '备注1',
  `note2` varchar(100) DEFAULT NULL COMMENT '备注2',
  `note3` varchar(100) DEFAULT NULL COMMENT '备注3',
  `note4` varchar(100) DEFAULT NULL COMMENT '备注4',
  `note5` varchar(100) DEFAULT NULL COMMENT '备注5',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户Session表';

-- Dumping data for table chatroom.chat_session: ~0 rows (approximately)
/*!40000 ALTER TABLE `chat_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `chat_session` ENABLE KEYS */;


-- Dumping structure for table chatroom.gen_table
CREATE TABLE IF NOT EXISTS `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';

-- Dumping data for table chatroom.gen_table: ~3 rows (approximately)
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
REPLACE INTO `gen_table` (`table_id`, `table_name`, `table_comment`, `sub_table_name`, `sub_table_fk_name`, `class_name`, `tpl_category`, `package_name`, `module_name`, `business_name`, `function_name`, `function_author`, `gen_type`, `gen_path`, `options`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(2, 'chat_history', '聊天记录表', NULL, NULL, 'ChatHistory', 'crud', 'com.ruoyi.project', 'project', 'history', '聊天记录', 'kokor', '0', '/', '{}', 'admin', '2023-09-19 15:34:29', '', '2023-09-19 20:15:14', NULL),
	(3, 'chat_session', '用户Session表', NULL, NULL, 'ChatSession', 'crud', 'com.ruoyi.project', 'project', 'session', '用户Session', 'kokor', '0', '/', '{}', 'admin', '2023-09-19 15:34:29', '', '2023-09-19 20:15:23', NULL),
	(4, 'chat-friend', '好友关系表', NULL, NULL, 'ChatFriend', 'crud', 'com.ruoyi.project', 'project', 'friend', '好友关系', 'kokor', '0', '/', '{}', 'admin', '2023-09-20 15:19:39', '', '2023-09-20 15:20:28', NULL);
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;


-- Dumping structure for table chatroom.gen_table_column
CREATE TABLE IF NOT EXISTS `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';

-- Dumping data for table chatroom.gen_table_column: ~30 rows (approximately)
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
REPLACE INTO `gen_table_column` (`column_id`, `table_id`, `column_name`, `column_comment`, `column_type`, `java_type`, `java_field`, `is_pk`, `is_increment`, `is_required`, `is_insert`, `is_edit`, `is_list`, `is_query`, `query_type`, `html_type`, `dict_type`, `sort`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
	(9, '2', 'id', 'id', 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-19 15:34:29', '', '2023-09-19 20:15:14'),
	(10, '2', 'user_id', '发送人id', 'bigint(20)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-09-19 15:34:29', '', '2023-09-19 20:15:14'),
	(11, '2', 'receive_id', '接收人id', 'bigint(20)', 'Long', 'receiveId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-09-19 15:34:29', '', '2023-09-19 20:15:14'),
	(12, '2', 'chat_content', '发送内容', 'varchar(500)', 'String', 'chatContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'editor', '', 4, 'admin', '2023-09-19 15:34:29', '', '2023-09-19 20:15:14'),
	(13, '2', 'note1', '备注1', 'varchar(100)', 'String', 'note1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-09-19 15:34:29', '', '2023-09-19 20:15:14'),
	(14, '2', 'note2', '备注2', 'varchar(100)', 'String', 'note2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-09-19 15:34:29', '', '2023-09-19 20:15:14'),
	(15, '2', 'note3', '备注3', 'varchar(100)', 'String', 'note3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2023-09-19 15:34:29', '', '2023-09-19 20:15:14'),
	(16, '2', 'note4', '备注4', 'varchar(100)', 'String', 'note4', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2023-09-19 15:34:29', '', '2023-09-19 20:15:14'),
	(17, '2', 'note5', '备注5', 'varchar(100)', 'String', 'note5', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2023-09-19 15:34:29', '', '2023-09-19 20:15:14'),
	(18, '3', 'id', 'id', 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-19 15:34:29', '', '2023-09-19 20:15:23'),
	(19, '3', 'user_id', '用户id', 'bigint(20)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-09-19 15:34:29', '', '2023-09-19 20:15:23'),
	(20, '3', 'session', 'session', 'varchar(300)', 'String', 'session', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-09-19 15:34:29', '', '2023-09-19 20:15:23'),
	(21, '3', 'note1', '备注1', 'varchar(100)', 'String', 'note1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-09-19 15:34:29', '', '2023-09-19 20:15:23'),
	(22, '3', 'note2', '备注2', 'varchar(100)', 'String', 'note2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-09-19 15:34:29', '', '2023-09-19 20:15:23'),
	(23, '3', 'note3', '备注3', 'varchar(100)', 'String', 'note3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-09-19 15:34:29', '', '2023-09-19 20:15:23'),
	(24, '3', 'note4', '备注4', 'varchar(100)', 'String', 'note4', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-09-19 15:34:29', '', '2023-09-19 20:15:23'),
	(25, '3', 'note5', '备注5', 'varchar(100)', 'String', 'note5', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-09-19 15:34:29', '', '2023-09-19 20:15:23'),
	(26, '2', 'chat_time', '发送时间', 'datetime', 'Date', 'chatTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, '', '2023-09-19 20:10:49', '', '2023-09-19 20:15:14'),
	(27, '2', 'read_status', '阅读状态', 'varchar(3)', 'String', 'readStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'chat_read_status', 6, '', '2023-09-19 20:10:49', '', '2023-09-19 20:15:14'),
	(28, '2', 'read_time', '阅读时间', 'datetime', 'Date', 'readTime', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, '', '2023-09-19 20:10:49', '', '2023-09-19 20:15:14'),
	(29, '3', 'online_status', '在线状态', 'varchar(3)', 'String', 'onlineStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'chat_online_status', 4, '', '2023-09-19 20:10:50', '', '2023-09-19 20:15:23'),
	(30, '4', 'id', 'id', 'bigint(20)', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2023-09-20 15:19:39', '', '2023-09-20 15:20:28'),
	(31, '4', 'user_id', '用户id', 'bigint(20)', 'Long', 'userId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2023-09-20 15:19:39', '', '2023-09-20 15:20:28'),
	(32, '4', 'friend_id', '好友id', 'bigint(20)', 'Long', 'friendId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2023-09-20 15:19:39', '', '2023-09-20 15:20:28'),
	(33, '4', 'friend_name', '好友备注', 'varchar(100)', 'String', 'friendName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2023-09-20 15:19:39', '', '2023-09-20 15:20:28'),
	(34, '4', 'note1', '备注1', 'varchar(100)', 'String', 'note1', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2023-09-20 15:19:39', '', '2023-09-20 15:20:28'),
	(35, '4', 'note2', '备注2', 'varchar(100)', 'String', 'note2', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2023-09-20 15:19:39', '', '2023-09-20 15:20:28'),
	(36, '4', 'note3', '备注3', 'varchar(100)', 'String', 'note3', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2023-09-20 15:19:39', '', '2023-09-20 15:20:28'),
	(37, '4', 'note4', '备注4', 'varchar(100)', 'String', 'note4', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2023-09-20 15:19:39', '', '2023-09-20 15:20:28'),
	(38, '4', 'note5', '备注5', 'varchar(100)', 'String', 'note5', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2023-09-20 15:19:39', '', '2023-09-20 15:20:28');
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;


-- Dumping structure for table chatroom.qrtz_blob_triggers
CREATE TABLE IF NOT EXISTS `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Blob类型的触发器表';

-- Dumping data for table chatroom.qrtz_blob_triggers: ~0 rows (approximately)
/*!40000 ALTER TABLE `qrtz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_blob_triggers` ENABLE KEYS */;


-- Dumping structure for table chatroom.qrtz_calendars
CREATE TABLE IF NOT EXISTS `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日历信息表';

-- Dumping data for table chatroom.qrtz_calendars: ~0 rows (approximately)
/*!40000 ALTER TABLE `qrtz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_calendars` ENABLE KEYS */;


-- Dumping structure for table chatroom.qrtz_cron_triggers
CREATE TABLE IF NOT EXISTS `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cron类型的触发器表';

-- Dumping data for table chatroom.qrtz_cron_triggers: ~0 rows (approximately)
/*!40000 ALTER TABLE `qrtz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_cron_triggers` ENABLE KEYS */;


-- Dumping structure for table chatroom.qrtz_fired_triggers
CREATE TABLE IF NOT EXISTS `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='已触发的触发器表';

-- Dumping data for table chatroom.qrtz_fired_triggers: ~0 rows (approximately)
/*!40000 ALTER TABLE `qrtz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_fired_triggers` ENABLE KEYS */;


-- Dumping structure for table chatroom.qrtz_job_details
CREATE TABLE IF NOT EXISTS `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务详细信息表';

-- Dumping data for table chatroom.qrtz_job_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `qrtz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_job_details` ENABLE KEYS */;


-- Dumping structure for table chatroom.qrtz_locks
CREATE TABLE IF NOT EXISTS `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='存储的悲观锁信息表';

-- Dumping data for table chatroom.qrtz_locks: ~0 rows (approximately)
/*!40000 ALTER TABLE `qrtz_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_locks` ENABLE KEYS */;


-- Dumping structure for table chatroom.qrtz_paused_trigger_grps
CREATE TABLE IF NOT EXISTS `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='暂停的触发器表';

-- Dumping data for table chatroom.qrtz_paused_trigger_grps: ~0 rows (approximately)
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_paused_trigger_grps` ENABLE KEYS */;


-- Dumping structure for table chatroom.qrtz_scheduler_state
CREATE TABLE IF NOT EXISTS `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='调度器状态表';

-- Dumping data for table chatroom.qrtz_scheduler_state: ~0 rows (approximately)
/*!40000 ALTER TABLE `qrtz_scheduler_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_scheduler_state` ENABLE KEYS */;


-- Dumping structure for table chatroom.qrtz_simple_triggers
CREATE TABLE IF NOT EXISTS `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简单触发器的信息表';

-- Dumping data for table chatroom.qrtz_simple_triggers: ~0 rows (approximately)
/*!40000 ALTER TABLE `qrtz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simple_triggers` ENABLE KEYS */;


-- Dumping structure for table chatroom.qrtz_simprop_triggers
CREATE TABLE IF NOT EXISTS `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='同步机制的行锁表';

-- Dumping data for table chatroom.qrtz_simprop_triggers: ~0 rows (approximately)
/*!40000 ALTER TABLE `qrtz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_simprop_triggers` ENABLE KEYS */;


-- Dumping structure for table chatroom.qrtz_triggers
CREATE TABLE IF NOT EXISTS `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='触发器详细信息表';

-- Dumping data for table chatroom.qrtz_triggers: ~0 rows (approximately)
/*!40000 ALTER TABLE `qrtz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qrtz_triggers` ENABLE KEYS */;


-- Dumping structure for table chatroom.system_social_user
CREATE TABLE IF NOT EXISTS `system_social_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键(自增策略)',
  `type` tinyint(4) NOT NULL COMMENT '社交平台的类型',
  `openid` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '社交 openid',
  `token` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '社交 token',
  `raw_token_info` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '原始 Token 数据，一般是 JSON 格式',
  `nickname` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户昵称',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '用户头像',
  `raw_user_info` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '原始用户数据，一般是 JSON 格式',
  `code` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '最后一次的认证 code',
  `state` varchar(256) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '最后一次的认证 state',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='社交用户表';

-- Dumping data for table chatroom.system_social_user: ~0 rows (approximately)
/*!40000 ALTER TABLE `system_social_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_social_user` ENABLE KEYS */;


-- Dumping structure for table chatroom.system_social_user_bind
CREATE TABLE IF NOT EXISTS `system_social_user_bind` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键(自增策略)',
  `user_id` bigint(20) NOT NULL COMMENT '用户编号',
  `user_type` tinyint(4) NOT NULL COMMENT '用户类型',
  `social_type` tinyint(4) NOT NULL COMMENT '社交平台的类型',
  `social_user_id` bigint(20) NOT NULL COMMENT '社交用户的编号',
  `creator` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '创建者',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updater` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT '更新者',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `deleted` bit(1) NOT NULL DEFAULT b'0' COMMENT '是否删除',
  `tenant_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '租户编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='社交绑定表';

-- Dumping data for table chatroom.system_social_user_bind: ~0 rows (approximately)
/*!40000 ALTER TABLE `system_social_user_bind` DISABLE KEYS */;
/*!40000 ALTER TABLE `system_social_user_bind` ENABLE KEYS */;


-- Dumping structure for table chatroom.sys_config
CREATE TABLE IF NOT EXISTS `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='参数配置表';

-- Dumping data for table chatroom.sys_config: ~4 rows (approximately)
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
REPLACE INTO `sys_config` (`config_id`, `config_name`, `config_key`, `config_value`, `config_type`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2023-01-27 09:09:06', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),
	(2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2023-01-27 09:09:06', '', NULL, '初始化密码 123456'),
	(3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2023-01-27 09:09:06', '', NULL, '深色主题theme-dark，浅色主题theme-light'),
	(4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2023-01-27 09:09:06', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;


-- Dumping structure for table chatroom.sys_dept
CREATE TABLE IF NOT EXISTS `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='部门表';

-- Dumping data for table chatroom.sys_dept: ~1 rows (approximately)
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
REPLACE INTO `sys_dept` (`dept_id`, `parent_id`, `ancestors`, `dept_name`, `order_num`, `leader`, `phone`, `email`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`) VALUES
	(100, 0, '0', '暗焰幻境', 0, '', '', '', '0', '0', 'admin', '2023-01-27 09:09:05', 'admin', '2023-04-20 14:42:46');
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;


-- Dumping structure for table chatroom.sys_dict_data
CREATE TABLE IF NOT EXISTS `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='字典数据表';

-- Dumping data for table chatroom.sys_dict_data: ~29 rows (approximately)
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
REPLACE INTO `sys_dict_data` (`dict_code`, `dict_sort`, `dict_label`, `dict_value`, `dict_type`, `css_class`, `list_class`, `is_default`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '性别男'),
	(2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '性别女'),
	(3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '性别未知'),
	(4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '显示菜单'),
	(5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '隐藏菜单'),
	(6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '正常状态'),
	(7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '停用状态'),
	(8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '正常状态'),
	(9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '停用状态'),
	(10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '默认分组'),
	(11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '系统分组'),
	(12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '系统默认是'),
	(13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '系统默认否'),
	(14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '通知'),
	(15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '公告'),
	(16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '正常状态'),
	(17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '关闭状态'),
	(18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '其他操作'),
	(19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '新增操作'),
	(20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '修改操作'),
	(21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '删除操作'),
	(22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '授权操作'),
	(23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '导出操作'),
	(24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '导入操作'),
	(25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '强退操作'),
	(26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '生成操作'),
	(27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '清空操作'),
	(28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '正常状态'),
	(29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '停用状态'),
	(30, 0, '未读', '00', 'chat_read_status', NULL, 'info', 'N', '0', 'admin', '2023-09-19 20:12:28', 'admin', '2023-09-19 20:14:26', NULL),
	(31, 0, '已读', '01', 'chat_read_status', NULL, 'primary', 'N', '0', 'admin', '2023-09-19 20:12:37', 'admin', '2023-09-19 20:14:31', NULL),
	(32, 0, '离线', '00', 'chat_online_status', NULL, 'info', 'N', '0', 'admin', '2023-09-19 20:13:26', 'admin', '2023-09-19 20:14:03', NULL),
	(33, 0, '在线', '01', 'chat_online_status', NULL, 'success', 'N', '0', 'admin', '2023-09-19 20:13:38', 'admin', '2023-09-19 20:14:10', NULL);
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;


-- Dumping structure for table chatroom.sys_dict_type
CREATE TABLE IF NOT EXISTS `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='字典类型表';

-- Dumping data for table chatroom.sys_dict_type: ~10 rows (approximately)
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
REPLACE INTO `sys_dict_type` (`dict_id`, `dict_name`, `dict_type`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '用户性别', 'sys_user_sex', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '用户性别列表'),
	(2, '菜单状态', 'sys_show_hide', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '菜单状态列表'),
	(3, '系统开关', 'sys_normal_disable', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '系统开关列表'),
	(4, '任务状态', 'sys_job_status', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '任务状态列表'),
	(5, '任务分组', 'sys_job_group', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '任务分组列表'),
	(6, '系统是否', 'sys_yes_no', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '系统是否列表'),
	(7, '通知类型', 'sys_notice_type', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '通知类型列表'),
	(8, '通知状态', 'sys_notice_status', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '通知状态列表'),
	(9, '操作类型', 'sys_oper_type', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '操作类型列表'),
	(10, '系统状态', 'sys_common_status', '0', 'admin', '2023-01-27 09:09:06', '', NULL, '登录状态列表'),
	(11, '阅读状态', 'chat_read_status', '0', 'admin', '2023-09-19 20:12:06', '', NULL, NULL),
	(12, '在线状态', 'chat_online_status', '0', 'admin', '2023-09-19 20:13:16', '', NULL, NULL);
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;


-- Dumping structure for table chatroom.sys_job
CREATE TABLE IF NOT EXISTS `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';

-- Dumping data for table chatroom.sys_job: ~3 rows (approximately)
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
REPLACE INTO `sys_job` (`job_id`, `job_name`, `job_group`, `invoke_target`, `cron_expression`, `misfire_policy`, `concurrent`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2023-01-27 09:09:06', '', NULL, ''),
	(2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2023-01-27 09:09:06', '', NULL, ''),
	(3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2023-01-27 09:09:06', '', NULL, '');
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;


-- Dumping structure for table chatroom.sys_job_log
CREATE TABLE IF NOT EXISTS `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';

-- Dumping data for table chatroom.sys_job_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;


-- Dumping structure for table chatroom.sys_logininfor
CREATE TABLE IF NOT EXISTS `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示信息',
  `access_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`access_time`)
) ENGINE=InnoDB AUTO_INCREMENT=386 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';

-- Dumping data for table chatroom.sys_logininfor: ~198 rows (approximately)
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
REPLACE INTO `sys_logininfor` (`info_id`, `user_name`, `ipaddr`, `status`, `msg`, `access_time`) VALUES
	(159, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-17 19:56:24'),
	(160, 'admin', '8.8.8.8', '0', '退出成功', '2023-09-17 21:08:09'),
	(161, 'dark', '8.8.8.8', '0', '注册成功', '2023-09-17 21:30:00'),
	(162, 'dark', '8.8.8.8', '0', '登录成功', '2023-09-17 21:30:12'),
	(163, 'dark', '8.8.8.8', '0', '退出成功', '2023-09-17 21:30:58'),
	(164, 'admin', '8.8.8.8', '1', '密码输入错误1次', '2023-09-17 21:31:05'),
	(165, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-17 21:31:17'),
	(166, 'admin', '8.8.8.8', '0', '退出成功', '2023-09-17 21:42:03'),
	(167, 'darkmaster', '8.8.8.8', '0', '注册成功', '2023-09-17 21:42:20'),
	(168, 'darkmaster', '8.8.8.8', '0', '登录成功', '2023-09-17 21:42:30'),
	(169, 'darkmaster', '8.8.8.8', '0', '退出成功', '2023-09-17 21:42:35'),
	(170, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-17 21:42:37'),
	(171, 'admin', '8.8.8.8', '0', '退出成功', '2023-09-17 21:51:11'),
	(172, '111', '8.8.8.8', '0', '注册成功', '2023-09-17 21:51:22'),
	(173, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-17 21:51:24'),
	(174, 'admin', '8.8.8.8', '0', '退出成功', '2023-09-17 21:52:43'),
	(175, '222', '8.8.8.8', '0', '注册成功', '2023-09-17 21:52:54'),
	(176, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-17 21:52:58'),
	(177, 'admin', '8.8.8.8', '0', '退出成功', '2023-09-17 22:21:26'),
	(178, 'dark', '8.8.8.8', '0', '注册成功', '2023-09-17 22:21:37'),
	(179, 'dark', '8.8.8.8', '0', '登录成功', '2023-09-17 22:21:43'),
	(180, 'dark', '8.8.8.8', '0', '退出成功', '2023-09-17 22:21:50'),
	(181, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-17 22:21:53'),
	(182, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-18 10:09:06'),
	(183, 'admin', '8.8.8.8', '1', '密码输入错误1次', '2023-09-18 18:30:22'),
	(184, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-18 18:30:34'),
	(185, 'admin', '8.8.8.8', '0', '退出成功', '2023-09-18 18:55:11'),
	(186, 'darkmaster', '8.8.8.8', '0', '注册成功', '2023-09-18 18:55:25'),
	(187, 'dark', '8.8.8.8', '0', '注册成功', '2023-09-18 18:56:14'),
	(188, 'dark', '8.8.8.8', '0', '注册成功', '2023-09-18 18:57:00'),
	(189, '123456', '8.8.8.8', '0', '注册成功', '2023-09-18 18:58:51'),
	(190, 'admin', '8.8.8.8', '1', '密码输入错误1次', '2023-09-18 18:59:01'),
	(191, 'admin', '8.8.8.8', '1', '密码输入错误2次', '2023-09-18 18:59:09'),
	(192, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-18 18:59:16'),
	(193, 'admin', '8.8.8.8', '0', '退出成功', '2023-09-18 18:59:32'),
	(194, '111111', '8.8.8.8', '0', '注册成功', '2023-09-18 18:59:42'),
	(195, 'dark', '8.8.8.8', '0', '注册成功', '2023-09-18 19:03:16'),
	(196, '111111', '8.8.8.8', '0', '注册成功', '2023-09-19 11:42:19'),
	(197, '111111', '8.8.8.8', '0', '登录成功', '2023-09-19 11:42:28'),
	(198, '111111', '8.8.8.8', '0', '退出成功', '2023-09-19 11:42:37'),
	(199, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-19 11:42:45'),
	(200, 'admin', '8.8.8.8', '0', '退出成功', '2023-09-19 11:48:47'),
	(201, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-19 13:18:07'),
	(202, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-19 15:31:16'),
	(203, 'admin', '8.8.8.8', '0', '退出成功', '2023-09-19 18:35:45'),
	(204, 'wanghongda', '8.8.8.8', '0', '登录成功', '2023-09-19 18:35:57'),
	(205, 'wanghongda', '8.8.8.8', '0', '退出成功', '2023-09-19 18:36:10'),
	(206, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-19 18:36:21'),
	(207, 'admin', '8.8.8.8', '0', '退出成功', '2023-09-20 15:09:58'),
	(208, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-20 15:10:26'),
	(209, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-21 09:32:42'),
	(210, 'wanghongda', '10.100.37.223', '0', '登录成功', '2023-09-21 18:41:36'),
	(211, 'wanghongda', '10.100.37.223', '0', '退出成功', '2023-09-21 18:41:47'),
	(212, 'admin', '10.100.37.223', '0', '登录成功', '2023-09-21 18:41:55'),
	(213, 'admin', '10.100.37.223', '0', '退出成功', '2023-09-21 18:43:15'),
	(214, 'wanghongda', '10.100.37.223', '0', '登录成功', '2023-09-21 18:43:19'),
	(215, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-26 14:20:25'),
	(216, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-26 19:11:38'),
	(217, 'admin', '8.8.8.8', '0', '退出成功', '2023-09-26 19:30:27'),
	(218, 'wanghongda', '8.8.8.8', '0', '登录成功', '2023-09-26 19:30:32'),
	(219, 'wanghongda', '8.8.8.8', '0', '退出成功', '2023-09-26 19:31:46'),
	(220, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-26 19:31:58'),
	(221, 'admin', '8.8.8.8', '0', '退出成功', '2023-09-26 19:46:59'),
	(222, 'kokor', '8.8.8.8', '0', '登录成功', '2023-09-26 19:47:32'),
	(223, 'kokor', '8.8.8.8', '0', '退出成功', '2023-09-26 19:50:47'),
	(224, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-26 19:51:01'),
	(225, 'wanghongda', '10.100.37.223', '0', '登录成功', '2023-09-26 19:54:50'),
	(226, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-27 14:29:49'),
	(227, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-27 16:36:25'),
	(228, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-28 15:11:21'),
	(229, 'kokor', '192.168.0.102', '0', '登录成功', '2023-09-28 15:53:53'),
	(230, 'wangtianchi', '8.8.8.8', '0', '登录成功', '2023-09-28 16:02:03'),
	(231, 'kokor', '192.168.0.102', '0', '登录成功', '2023-09-28 16:27:56'),
	(232, 'kokor', '192.168.0.102', '0', '登录成功', '2023-09-28 16:31:36'),
	(233, 'kokor', '192.168.0.102', '0', '退出成功', '2023-09-28 16:41:53'),
	(234, 'admin', '192.168.0.102', '0', '登录成功', '2023-09-28 16:42:08'),
	(235, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-28 22:02:16'),
	(236, 'admin', '8.8.8.8', '0', '退出成功', '2023-09-28 22:02:31'),
	(237, 'kokor', '8.8.8.8', '0', '登录成功', '2023-09-28 22:02:39'),
	(238, 'kokor', '8.8.8.8', '0', '退出成功', '2023-09-28 22:36:44'),
	(239, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-28 22:36:54'),
	(240, 'admin', '8.8.8.8', '0', '退出成功', '2023-09-28 22:54:35'),
	(241, 'kokor', '8.8.8.8', '0', '登录成功', '2023-09-28 22:54:41'),
	(242, 'kokor', '8.8.8.8', '0', '退出成功', '2023-09-28 22:57:53'),
	(243, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-28 22:58:05'),
	(244, 'admin', '8.8.8.8', '0', '退出成功', '2023-09-28 23:09:51'),
	(245, 'kokor', '8.8.8.8', '0', '登录成功', '2023-09-28 23:09:57'),
	(246, 'kokor', '8.8.8.8', '0', '登录成功', '2023-09-28 23:25:11'),
	(247, 'kokor', '8.8.8.8', '0', '退出成功', '2023-09-28 23:40:47'),
	(248, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-28 23:40:52'),
	(249, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-29 12:58:29'),
	(250, 'kokor', '192.168.0.102', '0', '登录成功', '2023-09-29 16:30:03'),
	(251, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-29 20:36:20'),
	(252, 'kokor', '192.168.0.102', '0', '登录成功', '2023-09-29 20:36:45'),
	(253, 'kokor', '192.168.0.104', '0', '登录成功', '2023-09-29 20:52:13'),
	(254, 'kokor', '192.168.0.104', '0', '退出成功', '2023-09-29 21:51:03'),
	(255, 'wanghongda', '192.168.0.104', '0', '登录成功', '2023-09-29 21:51:10'),
	(256, 'wanghongda', '192.168.0.104', '0', '退出成功', '2023-09-29 23:19:55'),
	(257, 'kokor', '192.168.0.104', '0', '登录成功', '2023-09-29 23:20:00'),
	(258, 'kokor', '192.168.0.104', '0', '退出成功', '2023-09-30 00:51:48'),
	(259, 'wangtianchi', '192.168.0.104', '0', '登录成功', '2023-09-30 00:51:56'),
	(260, 'admin', '127.0.0.1', '0', '登录成功', '2023-09-30 11:21:23'),
	(261, 'kokor', '192.168.0.102', '0', '登录成功', '2023-09-30 11:38:55'),
	(262, 'admin', '192.168.0.104', '1', '密码输入错误1次', '2023-09-30 12:03:48'),
	(263, 'admin', '192.168.0.104', '0', '登录成功', '2023-09-30 12:03:59'),
	(264, 'admin', '192.168.0.105', '0', '登录成功', '2023-09-30 12:07:29'),
	(265, 'kokor', '192.168.0.102', '0', '退出成功', '2023-09-30 12:12:14'),
	(266, 'admin', '192.168.0.105', '0', '登录成功', '2023-09-30 12:13:47'),
	(267, 'admin', '192.168.0.105', '0', '登录成功', '2023-09-30 12:43:15'),
	(268, 'kokor', '192.168.0.105', '0', '登录成功', '2023-09-30 13:25:52'),
	(269, 'admin', '192.168.0.102', '1', '密码输入错误1次', '2023-09-30 13:37:18'),
	(270, 'admin', '192.168.0.102', '1', '密码输入错误2次', '2023-09-30 13:37:21'),
	(271, 'admin', '192.168.0.102', '0', '登录成功', '2023-09-30 13:37:25'),
	(272, 'admin', '192.168.0.102', '0', '退出成功', '2023-09-30 13:37:46'),
	(273, 'kokor', '192.168.0.105', '0', '登录成功', '2023-09-30 13:38:07'),
	(274, 'admin', '192.168.0.104', '0', '登录成功', '2023-09-30 13:38:47'),
	(275, 'admin', '192.168.0.104', '0', '登录成功', '2023-09-30 13:46:23'),
	(276, 'kokor', '192.168.0.105', '0', '退出成功', '2023-09-30 13:51:58'),
	(277, 'kokor', '192.168.0.102', '0', '登录成功', '2023-09-30 13:52:32'),
	(278, 'kokor', '192.168.0.102', '0', '登录成功', '2023-09-30 13:55:48'),
	(279, 'kokor', '192.168.0.102', '0', '退出成功', '2023-09-30 14:03:53'),
	(280, 'kokor', '192.168.0.102', '0', '登录成功', '2023-09-30 14:03:59'),
	(281, 'kokor', '192.168.0.102', '0', '退出成功', '2023-09-30 14:05:43'),
	(282, 'kokor', '192.168.0.102', '0', '登录成功', '2023-09-30 14:05:48'),
	(283, 'kokor', '192.168.0.105', '0', '登录成功', '2023-09-30 14:06:13'),
	(284, 'kokor', '192.168.0.102', '0', '登录成功', '2023-09-30 14:08:24'),
	(285, 'admin', '8.8.8.8', '1', '密码输入错误1次', '2023-09-30 14:08:36'),
	(286, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-30 14:08:38'),
	(287, 'admin', '192.168.1.106', '0', '登录成功', '2023-09-30 20:42:13'),
	(288, 'admin', '192.168.1.106', '0', '登录成功', '2023-09-30 20:44:08'),
	(289, 'kokor', '192.168.1.103', '0', '登录成功', '2023-09-30 20:44:53'),
	(290, 'kokor', '192.168.1.103', '0', '登录成功', '2023-09-30 20:45:44'),
	(291, 'kokor', '192.168.1.103', '0', '登录成功', '2023-09-30 20:59:32'),
	(292, 'admin', '192.168.1.106', '0', '登录成功', '2023-09-30 21:02:14'),
	(293, 'kokor', '192.168.1.105', '0', '登录成功', '2023-09-30 21:06:58'),
	(294, 'admin', '192.168.1.106', '0', '登录成功', '2023-09-30 21:12:36'),
	(295, 'kokor', '192.168.1.103', '0', '登录成功', '2023-09-30 21:20:06'),
	(296, 'kokor', '192.168.1.103', '0', '登录成功', '2023-09-30 21:20:32'),
	(297, 'kokor', '192.168.1.103', '0', '登录成功', '2023-09-30 21:22:07'),
	(298, 'admin', '192.168.1.106', '0', '登录成功', '2023-09-30 21:24:48'),
	(299, 'admin', '8.8.8.8', '0', '登录成功', '2023-09-30 21:36:16'),
	(300, 'kokor', '192.168.1.103', '0', '登录成功', '2023-09-30 21:39:38'),
	(301, 'admin', '192.168.1.106', '0', '登录成功', '2023-09-30 23:24:15'),
	(302, 'admin', '192.168.1.106', '0', '登录成功', '2023-09-30 23:28:24'),
	(303, 'admin', '192.168.1.106', '0', '登录成功', '2023-10-01 00:01:12'),
	(304, 'admin', '192.168.1.106', '0', '登录成功', '2023-10-01 00:04:12'),
	(305, 'admin', '192.168.1.106', '0', '登录成功', '2023-10-01 00:18:18'),
	(306, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 00:32:21'),
	(307, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 00:49:50'),
	(308, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 01:18:56'),
	(309, 'wangtianchi', '192.168.1.106', '0', '登录成功', '2023-10-01 01:21:55'),
	(310, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 01:34:43'),
	(311, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 01:43:28'),
	(312, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 02:12:58'),
	(313, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 02:16:16'),
	(314, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 02:17:08'),
	(315, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 02:23:11'),
	(316, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 02:24:47'),
	(317, 'wangtianchi', '192.168.1.106', '0', '退出成功', '2023-10-01 02:30:13'),
	(318, 'admin', '192.168.1.106', '0', '登录成功', '2023-10-01 12:34:02'),
	(319, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 13:18:38'),
	(320, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 13:20:09'),
	(321, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 13:38:13'),
	(322, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 18:01:27'),
	(323, 'admin', '192.168.1.106', '0', '登录成功', '2023-10-01 18:01:49'),
	(324, 'admin', '8.8.8.8', '0', '登录成功', '2023-10-01 18:05:40'),
	(325, 'kokor', '192.168.1.105', '0', '登录成功', '2023-10-01 18:06:09'),
	(326, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 18:23:13'),
	(327, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 18:24:51'),
	(328, 'admin', '192.168.1.106', '0', '登录成功', '2023-10-01 18:26:27'),
	(329, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 19:02:54'),
	(330, 'kokor', '192.168.1.103', '0', '退出成功', '2023-10-01 19:06:07'),
	(331, 'wangtianchi', '192.168.1.103', '0', '登录成功', '2023-10-01 19:06:17'),
	(332, 'wangtianchi', '192.168.1.103', '0', '退出成功', '2023-10-01 19:06:56'),
	(333, 'yn', '192.168.1.103', '0', '登录成功', '2023-10-01 19:07:03'),
	(334, 'yn', '192.168.1.103', '0', '退出成功', '2023-10-01 19:07:43'),
	(335, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 19:07:50'),
	(336, 'admin', '192.168.1.106', '0', '登录成功', '2023-10-01 19:16:44'),
	(337, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 20:39:57'),
	(338, 'yn', '192.168.1.103', '0', '登录成功', '2023-10-01 21:12:04'),
	(339, 'yn', '192.168.1.106', '0', '登录成功', '2023-10-01 21:12:30'),
	(340, 'yn', '192.168.1.103', '0', '退出成功', '2023-10-01 21:12:36'),
	(341, 'kokor', '192.168.1.103', '1', '密码输入错误1次', '2023-10-01 21:12:42'),
	(342, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 21:12:44'),
	(343, 'kokor', '192.168.1.103', '0', '退出成功', '2023-10-01 21:45:40'),
	(344, 'kokor', '192.168.1.106', '0', '登录成功', '2023-10-01 21:45:50'),
	(345, 'kokor', '192.168.1.106', '0', '登录成功', '2023-10-01 22:04:23'),
	(346, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 22:04:42'),
	(347, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 22:05:39'),
	(348, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 22:06:36'),
	(349, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 22:10:43'),
	(350, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 22:11:21'),
	(351, 'kokor', '192.168.1.106', '0', '登录成功', '2023-10-01 22:24:03'),
	(352, 'kokor', '192.168.1.103', '0', '退出成功', '2023-10-01 22:29:22'),
	(353, 'kokor', '192.168.1.103', '0', '退出成功', '2023-10-01 22:29:37'),
	(354, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 22:30:08'),
	(355, 'yn', '192.168.1.106', '0', '登录成功', '2023-10-01 22:30:23'),
	(356, 'kokor', '192.168.1.106', '0', '登录成功', '2023-10-01 22:37:01'),
	(357, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 22:41:35'),
	(358, 'kokor', '192.168.1.106', '0', '登录成功', '2023-10-01 23:03:03'),
	(359, 'admin', '8.8.8.8', '0', '退出成功', '2023-10-01 23:03:22'),
	(360, 'yn', '8.8.8.8', '0', '登录成功', '2023-10-01 23:03:34'),
	(361, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-01 23:27:08'),
	(362, 'admin', '192.168.1.106', '0', '登录成功', '2023-10-01 23:29:52'),
	(363, 'admin', '192.168.1.106', '0', '登录成功', '2023-10-01 23:47:16'),
	(364, 'admin', '192.168.1.106', '0', '登录成功', '2023-10-02 00:00:49'),
	(365, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-02 00:03:30'),
	(366, 'admin', '192.168.1.106', '0', '登录成功', '2023-10-02 00:05:32'),
	(367, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-02 00:08:28'),
	(368, 'admin', '192.168.1.106', '0', '登录成功', '2023-10-02 00:11:41'),
	(369, 'admin', '192.168.1.106', '0', '登录成功', '2023-10-02 00:19:50'),
	(370, 'kokor', '192.168.1.106', '0', '登录成功', '2023-10-02 00:23:35'),
	(371, 'kokor', '192.168.1.106', '0', '退出成功', '2023-10-02 00:26:44'),
	(372, 'admin', '192.168.1.106', '0', '登录成功', '2023-10-02 00:26:51'),
	(373, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-02 00:33:58'),
	(374, 'yn', '8.8.8.8', '0', '登录成功', '2023-10-02 00:34:55'),
	(375, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-02 00:49:11'),
	(376, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-02 00:53:05'),
	(377, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-02 00:56:01'),
	(378, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-02 14:04:38'),
	(379, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-02 14:04:39'),
	(380, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-02 14:09:50'),
	(381, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-02 14:10:40'),
	(382, 'admin', '192.168.1.106', '0', '退出成功', '2023-10-02 14:11:52'),
	(383, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-02 14:12:01'),
	(384, 'kokor', '192.168.1.103', '0', '登录成功', '2023-10-02 14:12:57'),
	(385, 'yn', '8.8.8.8', '0', '登录成功', '2023-10-02 14:36:20');
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;


-- Dumping structure for table chatroom.sys_menu
CREATE TABLE IF NOT EXISTS `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `app_show_state` varchar(100) DEFAULT '#' COMMENT '应用显示状态（0显示 1隐藏）',
  `app_offen_state` varchar(100) DEFAULT '#' COMMENT '应用常用状态（0显示 1隐藏）',
  `app_icon` varchar(100) DEFAULT '#' COMMENT '应用图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2037 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';

-- Dumping data for table chatroom.sys_menu: ~86 rows (approximately)
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
REPLACE INTO `sys_menu` (`menu_id`, `menu_name`, `parent_id`, `order_num`, `path`, `component`, `query`, `is_frame`, `is_cache`, `menu_type`, `visible`, `status`, `perms`, `icon`, `app_show_state`, `app_offen_state`, `app_icon`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '系统管理', 0, 1, 'system', NULL, '', 1, 0, 'M', '0', '0', '', 'system', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, '系统管理目录'),
	(2, '系统监控', 0, 2, 'monitor', NULL, '', 1, 0, 'M', '1', '0', '', 'monitor', '1', '#', '#', 'admin', '2023-01-27 09:09:05', 'admin', '2023-06-11 13:12:47', '系统监控目录'),
	(3, '系统工具', 0, 3, 'tool', NULL, '', 1, 0, 'M', '0', '0', '', 'tool', '1', '#', '#', 'admin', '2023-01-27 09:09:05', 'admin', '2023-07-24 18:28:01', '系统工具目录'),
	(100, '用户管理', 1, 1, 'user', 'system/user/index', '', 1, 0, 'C', '0', '0', 'system:user:list', 'user', '#', '#', '#', 'admin', '2023-01-27 09:09:05', 'admin', '2023-03-30 08:03:05', '用户管理菜单'),
	(101, '角色管理', 1, 2, 'role', 'system/role/index', '', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, '角色管理菜单'),
	(102, '菜单管理', 1, 3, 'menu', 'system/menu/index', '', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, '菜单管理菜单'),
	(103, '部门管理', 1, 4, 'dept', 'system/dept/index', '', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, '部门管理菜单'),
	(104, '岗位管理', 1, 5, 'post', 'system/post/index', '', 1, 0, 'C', '0', '0', 'system:post:list', 'post', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, '岗位管理菜单'),
	(105, '字典管理', 1, 6, 'dict', 'system/dict/index', '', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, '字典管理菜单'),
	(106, '参数设置', 1, 7, 'config', 'system/config/index', '', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, '参数设置菜单'),
	(107, '通知公告', 1, 8, 'notice', 'system/notice/index', '', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, '通知公告菜单'),
	(108, '日志管理', 1, 9, 'log', '', '', 1, 0, 'M', '0', '0', '', 'log', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, '日志管理菜单'),
	(109, '在线用户', 2, 1, 'online', 'monitor/online/index', '', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, '在线用户菜单'),
	(110, '定时任务', 2, 2, 'job', 'monitor/job/index', '', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, '定时任务菜单'),
	(111, 'Sentinel控制台', 2, 3, 'http://localhost:8718', '', '', 0, 0, 'C', '0', '0', 'monitor:sentinel:list', 'sentinel', '#', '1', '#', 'admin', '2023-01-27 09:09:05', 'admin', '2023-03-29 15:45:37', '流量控制菜单'),
	(112, 'Nacos控制台', 2, 4, 'http://localhost:8848/nacos', '', '', 0, 0, 'C', '0', '0', 'monitor:nacos:list', 'nacos', '#', '1', '#', 'admin', '2023-01-27 09:09:05', 'admin', '2023-03-29 15:45:40', '服务治理菜单'),
	(113, 'Admin控制台', 2, 5, 'http://localhost:9100/login', '', '', 0, 0, 'C', '0', '0', 'monitor:server:list', 'server', '0', '1', '#', 'admin', '2023-01-27 09:09:05', 'admin', '2023-03-29 15:45:46', '服务监控菜单'),
	(114, '表单构建', 3, 1, 'build', 'tool/build/index', '', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, '表单构建菜单'),
	(115, '代码生成', 3, 2, 'gen', 'tool/gen/index', '', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, '代码生成菜单'),
	(116, '系统接口', 3, 3, 'http://localhost:8080/swagger-ui/index.html', '', '', 0, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, '系统接口菜单'),
	(500, '操作日志', 108, 1, 'operlog', 'system/operlog/index', '', 1, 0, 'C', '0', '0', 'system:operlog:list', 'form', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, '操作日志菜单'),
	(501, '登录日志', 108, 2, 'logininfor', 'system/logininfor/index', '', 1, 0, 'C', '0', '0', 'system:logininfor:list', 'logininfor', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, '登录日志菜单'),
	(1000, '用户查询', 100, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1001, '用户新增', 100, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1002, '用户修改', 100, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1003, '用户删除', 100, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1004, '用户导出', 100, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1005, '用户导入', 100, 6, '', '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1006, '重置密码', 100, 7, '', '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1007, '角色查询', 101, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1008, '角色新增', 101, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1009, '角色修改', 101, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1010, '角色删除', 101, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1011, '角色导出', 101, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1012, '菜单查询', 102, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1013, '菜单新增', 102, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1014, '菜单修改', 102, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1015, '菜单删除', 102, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1016, '部门查询', 103, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1017, '部门新增', 103, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1018, '部门修改', 103, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1019, '部门删除', 103, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1020, '岗位查询', 104, 1, '', '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1021, '岗位新增', 104, 2, '', '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1022, '岗位修改', 104, 3, '', '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1023, '岗位删除', 104, 4, '', '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1024, '岗位导出', 104, 5, '', '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1025, '字典查询', 105, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1026, '字典新增', 105, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1027, '字典修改', 105, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1028, '字典删除', 105, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1029, '字典导出', 105, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1030, '参数查询', 106, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1031, '参数新增', 106, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1032, '参数修改', 106, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1033, '参数删除', 106, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1034, '参数导出', 106, 5, '#', '', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1035, '公告查询', 107, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1036, '公告新增', 107, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1037, '公告修改', 107, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1038, '公告删除', 107, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1039, '操作查询', 500, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:operlog:query', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1040, '操作删除', 500, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:operlog:remove', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1041, '日志导出', 500, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:operlog:export', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1042, '登录查询', 501, 1, '#', '', '', 1, 0, 'F', '0', '0', 'system:logininfor:query', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1043, '登录删除', 501, 2, '#', '', '', 1, 0, 'F', '0', '0', 'system:logininfor:remove', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1044, '日志导出', 501, 3, '#', '', '', 1, 0, 'F', '0', '0', 'system:logininfor:export', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1045, '账户解锁', 501, 4, '#', '', '', 1, 0, 'F', '0', '0', 'system:logininfor:unlock', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1046, '在线查询', 109, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1047, '批量强退', 109, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1048, '单条强退', 109, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1049, '任务查询', 110, 1, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1050, '任务新增', 110, 2, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1051, '任务修改', 110, 3, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1052, '任务删除', 110, 4, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1053, '状态修改', 110, 5, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1054, '任务导出', 110, 6, '#', '', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1055, '生成查询', 115, 1, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1056, '生成修改', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1057, '生成删除', 115, 3, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1058, '导入代码', 115, 2, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1059, '预览代码', 115, 4, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(1060, '生成代码', 115, 5, '#', '', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', '#', '#', '#', 'admin', '2023-01-27 09:09:05', '', NULL, ''),
	(2000, '生成示例', 0, 5, 'demo', NULL, NULL, 1, 0, 'M', '0', '0', NULL, 'client', '0', '#', '#', 'admin', '2023-01-28 20:41:26', 'admin', '2023-07-24 18:47:50', ''),
	(2029, '系统组件', 0, 6, 'zujian', NULL, NULL, 1, 0, 'M', '0', '0', '', 'guide', '0', '#', '#', 'admin', '2023-03-23 16:14:53', 'admin', '2023-09-18 10:11:04', ''),
	(2030, '消息列表', 2029, 1, 'msg', 'library/msg/index', NULL, 1, 0, 'C', '0', '0', '', 'client', '#', '#', '#', 'admin', '2023-03-23 16:15:41', 'admin', '2023-03-28 15:19:59', ''),
	(2031, '聊天室', 0, 7, 'chatroom', 'module/chatPage/index', NULL, 1, 0, 'C', '0', '0', NULL, 'wechat', '0', '0', 'a', 'admin', '2023-09-19 16:26:47', '', NULL, ''),
	(2032, '好友关系', 2000, 1, 'friend', 'project/friend/index', NULL, 1, 0, 'C', '0', '0', NULL, 'checkbox', '0', '0', 'a', 'admin', '2023-09-20 15:35:04', '', NULL, ''),
	(2033, '聊天记录', 2000, 2, 'history', 'project/history/index', NULL, 1, 0, 'C', '0', '0', NULL, 'build', '0', '0', 'a', 'admin', '2023-09-20 15:36:02', '', NULL, ''),
	(2034, '用户session', 2000, 3, 'sess', 'project/session/index', NULL, 1, 0, 'C', '0', '0', NULL, 'clipboard', '0', '0', 'a', 'admin', '2023-09-20 15:37:16', '', NULL, ''),
	(2035, '添加好友', 0, 8, 'newFriend', 'module/newFriend/index', NULL, 1, 0, 'C', '0', '0', NULL, 'search', '0', '0', 'a', 'admin', '2023-09-21 20:37:39', 'admin', '2023-09-30 21:37:02', ''),
	(2036, '好友管理', 0, 9, 'friends', 'module/friendManage/index', NULL, 1, 0, 'C', '0', '0', NULL, 'qq', '0', '0', '1', 'admin', '2023-09-28 16:44:21', 'admin', '2023-09-30 21:36:33', '');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;


-- Dumping structure for table chatroom.sys_notice
CREATE TABLE IF NOT EXISTS `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';

-- Dumping data for table chatroom.sys_notice: ~2 rows (approximately)
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
REPLACE INTO `sys_notice` (`notice_id`, `notice_title`, `notice_type`, `notice_content`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', _binary 0xE696B0E78988E69CACE58685E5AE3F, '0', 'admin', '2023-01-27 09:09:06', '', NULL, '管理员'),
	(2, '维护通知：2018-07-01 若依系统凌晨维护', '1', _binary 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2023-01-27 09:09:06', '', NULL, '管理员');
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;


-- Dumping structure for table chatroom.sys_oper_log
CREATE TABLE IF NOT EXISTS `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `logical_key` varchar(100) DEFAULT NULL COMMENT '逻辑主键',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1515 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';

-- Dumping data for table chatroom.sys_oper_log: ~340 rows (approximately)
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
REPLACE INTO `sys_oper_log` (`oper_id`, `title`, `business_type`, `method`, `request_method`, `operator_type`, `oper_name`, `dept_name`, `oper_url`, `oper_ip`, `oper_location`, `oper_param`, `json_result`, `status`, `error_msg`, `oper_time`, `logical_key`) VALUES
	(1152, '用户管理', 1, 'com.ruoyi.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '8.8.8.8', '', '{"admin":false,"createBy":"admin","nickName":"555","params":{},"postIds":[],"roleIds":[],"status":"0","userId":2021009029,"userName":"555"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-17 22:01:23', NULL),
	(1153, '用户管理', 1, 'com.ruoyi.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '8.8.8.8', '', '{"admin":false,"createBy":"admin","nickName":"666","params":{},"postIds":[],"roleIds":[],"status":"0","userId":2021009030,"userName":"666"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-17 22:03:15', NULL),
	(1154, '用户管理', 1, 'com.ruoyi.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '8.8.8.8', '', '{"admin":false,"createBy":"admin","nickName":"777","params":{},"postIds":[],"roleIds":[],"status":"0","userId":2021009031,"userName":"777"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-17 22:05:42', NULL),
	(1155, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '8.8.8.8', '', '{"appIcon":"1","appOffenState":"0","appShowState":"0","children":[],"component":"module/test/index","createBy":"admin","icon":"404","isCache":"0","isFrame":"1","menuName":"1","menuType":"C","orderNum":7,"params":{},"parentId":0,"path":"test","status":"0","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-17 22:20:54', NULL),
	(1156, '菜单管理', 3, 'com.ruoyi.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/menu/2655', '8.8.8.8', '', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-17 22:25:35', NULL),
	(1157, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '8.8.8.8', '', '{"appIcon":"#","appOffenState":"#","appShowState":"0","children":[],"createBy":"admin","createTime":"2023-03-23 16:14:53","icon":"bug","isCache":"0","isFrame":"1","menuId":2029,"menuName":"系统组件","menuType":"M","orderNum":6,"params":{},"parentId":0,"path":"zujian","perms":"","remark":"","status":"0","updateBy":"admin","updateTime":"2023-06-11 13:13:00","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-18 10:09:59', NULL),
	(1158, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '8.8.8.8', '', '{"appIcon":"#","appOffenState":"#","appShowState":"0","children":[],"createBy":"admin","createTime":"2023-03-23 16:14:53","icon":"guide","isCache":"0","isFrame":"1","menuId":2029,"menuName":"系统组件","menuType":"M","orderNum":6,"params":{},"parentId":0,"path":"zujian","perms":"","remark":"","status":"0","updateBy":"admin","updateTime":"2023-09-18 10:09:59","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-18 10:11:04', NULL),
	(1159, '用户管理', 3, 'com.ruoyi.system.controller.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/user/3', '8.8.8.8', '', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-18 18:31:43', NULL),
	(1160, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '8.8.8.8', '', '{"admin":false,"createTime":"2023-01-27 09:09:05","dataScope":"2","delFlag":"0","deptCheckStrictly":true,"flag":false,"menuCheckStrictly":true,"menuIds":[],"params":{},"remark":"普通角色","roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0","updateBy":"admin"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-18 18:53:34', NULL),
	(1161, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.dataScope()', 'PUT', 1, 'admin', NULL, '/role/dataScope', '8.8.8.8', '', '{"admin":false,"createTime":"2023-01-27 09:09:05","dataScope":"2","delFlag":"0","deptCheckStrictly":true,"deptIds":[100],"flag":false,"menuCheckStrictly":true,"params":{},"remark":"普通角色","roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-18 18:54:05', NULL),
	(1162, '用户管理', 1, 'com.ruoyi.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '8.8.8.8', '', '{"admin":false,"createBy":"admin","deptId":100,"nickName":"达哥","params":{},"postIds":[3],"roleIds":[2],"sex":"0","status":"0","userId":11,"userName":"wanghongda"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-19 13:19:35', NULL),
	(1163, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '8.8.8.8', '', '"chat_session,chat_history,chat_friend"', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-19 15:34:29', NULL),
	(1164, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '8.8.8.8', '', '{"tables":"chat_friend,chat_history,chat_session"}', NULL, 0, NULL, '2023-09-19 15:44:30', NULL),
	(1165, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '8.8.8.8', '', '{"appIcon":"a","appOffenState":"0","appShowState":"0","children":[],"component":"module/chatPage/index","createBy":"admin","icon":"wechat","isCache":"0","isFrame":"1","menuName":"聊天室","menuType":"C","orderNum":7,"params":{},"parentId":0,"path":"chatroom","status":"0","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-19 16:26:47', NULL),
	(1166, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '8.8.8.8', '', '{"admin":false,"createTime":"2023-01-27 09:09:05","dataScope":"2","delFlag":"0","deptCheckStrictly":true,"flag":false,"menuCheckStrictly":true,"menuIds":[2031],"params":{},"remark":"普通角色","roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0","updateBy":"admin"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-19 18:35:37', NULL),
	(1167, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/gen/synchDb/chat_friend', '8.8.8.8', '', '{}', NULL, 1, '同步数据失败，原表结构不存在', '2023-09-19 20:10:47', NULL),
	(1168, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/gen/synchDb/chat_history', '8.8.8.8', '', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-19 20:10:49', NULL),
	(1169, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/gen/synchDb/chat_session', '8.8.8.8', '', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-19 20:10:50', NULL),
	(1170, '字典类型', 1, 'com.ruoyi.system.controller.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/dict/type', '8.8.8.8', '', '{"createBy":"admin","dictName":"阅读状态","dictType":"chat_read_status","params":{},"status":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-19 20:12:06', NULL),
	(1171, '字典数据', 1, 'com.ruoyi.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/dict/data', '8.8.8.8', '', '{"createBy":"admin","default":false,"dictLabel":"未读","dictSort":0,"dictType":"chat_read_status","dictValue":"0","listClass":"default","params":{},"status":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-19 20:12:28', NULL),
	(1172, '字典数据', 1, 'com.ruoyi.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/dict/data', '8.8.8.8', '', '{"createBy":"admin","default":false,"dictLabel":"已读","dictSort":0,"dictType":"chat_read_status","dictValue":"1","listClass":"default","params":{},"status":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-19 20:12:37', NULL),
	(1173, '字典数据', 2, 'com.ruoyi.system.controller.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/dict/data', '8.8.8.8', '', '{"createBy":"admin","createTime":"2023-09-19 20:12:28","default":false,"dictCode":30,"dictLabel":"未读","dictSort":0,"dictType":"chat_read_status","dictValue":"00","isDefault":"N","listClass":"default","params":{},"status":"0","updateBy":"admin"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-19 20:12:46', NULL),
	(1174, '字典数据', 2, 'com.ruoyi.system.controller.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/dict/data', '8.8.8.8', '', '{"createBy":"admin","createTime":"2023-09-19 20:12:37","default":false,"dictCode":31,"dictLabel":"已读","dictSort":0,"dictType":"chat_read_status","dictValue":"01","isDefault":"N","listClass":"default","params":{},"status":"0","updateBy":"admin"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-19 20:12:49', NULL),
	(1175, '字典类型', 1, 'com.ruoyi.system.controller.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/dict/type', '8.8.8.8', '', '{"createBy":"admin","dictName":"在线状态","dictType":"chat_online_status","params":{},"status":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-19 20:13:16', NULL),
	(1176, '字典数据', 1, 'com.ruoyi.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/dict/data', '8.8.8.8', '', '{"createBy":"admin","default":false,"dictLabel":"离线","dictSort":0,"dictType":"chat_online_status","dictValue":"00","listClass":"default","params":{},"status":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-19 20:13:26', NULL),
	(1177, '字典数据', 1, 'com.ruoyi.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/dict/data', '8.8.8.8', '', '{"createBy":"admin","default":false,"dictLabel":"在线","dictSort":0,"dictType":"chat_online_status","dictValue":"01","listClass":"default","params":{},"status":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-19 20:13:38', NULL),
	(1178, '字典数据', 2, 'com.ruoyi.system.controller.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/dict/data', '8.8.8.8', '', '{"createBy":"admin","createTime":"2023-09-19 20:13:26","default":false,"dictCode":32,"dictLabel":"离线","dictSort":0,"dictType":"chat_online_status","dictValue":"00","isDefault":"N","listClass":"info","params":{},"status":"0","updateBy":"admin"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-19 20:14:03', NULL),
	(1179, '字典数据', 2, 'com.ruoyi.system.controller.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/dict/data', '8.8.8.8', '', '{"createBy":"admin","createTime":"2023-09-19 20:13:38","default":false,"dictCode":33,"dictLabel":"在线","dictSort":0,"dictType":"chat_online_status","dictValue":"01","isDefault":"N","listClass":"success","params":{},"status":"0","updateBy":"admin"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-19 20:14:10', NULL),
	(1180, '字典数据', 2, 'com.ruoyi.system.controller.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/dict/data', '8.8.8.8', '', '{"createBy":"admin","createTime":"2023-09-19 20:12:28","default":false,"dictCode":30,"dictLabel":"未读","dictSort":0,"dictType":"chat_read_status","dictValue":"00","isDefault":"N","listClass":"info","params":{},"status":"0","updateBy":"admin"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-19 20:14:26', NULL),
	(1181, '字典数据', 2, 'com.ruoyi.system.controller.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/dict/data', '8.8.8.8', '', '{"createBy":"admin","createTime":"2023-09-19 20:12:37","default":false,"dictCode":31,"dictLabel":"已读","dictSort":0,"dictType":"chat_read_status","dictValue":"01","isDefault":"N","listClass":"primary","params":{},"status":"0","updateBy":"admin"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-19 20:14:31', NULL),
	(1182, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '8.8.8.8', '', '{"tables":"chat_friend,chat_history,chat_session"}', NULL, 0, NULL, '2023-09-19 20:15:26', NULL),
	(1183, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/gen/synchDb/chat_friend', '8.8.8.8', '', '{}', NULL, 1, '同步数据失败，原表结构不存在', '2023-09-20 15:18:40', NULL),
	(1184, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/gen/synchDb/chat_friend', '8.8.8.8', '', '{}', NULL, 1, '同步数据失败，原表结构不存在', '2023-09-20 15:18:58', NULL),
	(1185, '代码生成', 2, 'com.ruoyi.gen.controller.GenController.synchDb()', 'GET', 1, 'admin', NULL, '/gen/synchDb/chat_friend', '8.8.8.8', '', '{}', NULL, 1, '同步数据失败，原表结构不存在', '2023-09-20 15:19:25', NULL),
	(1186, '代码生成', 3, 'com.ruoyi.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/gen/1', '8.8.8.8', '', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-20 15:19:33', NULL),
	(1187, '代码生成', 6, 'com.ruoyi.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/gen/importTable', '8.8.8.8', '', '"chat-friend"', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-20 15:19:39', NULL),
	(1188, '代码生成', 8, 'com.ruoyi.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/gen/batchGenCode', '8.8.8.8', '', '{"tables":"chat-friend"}', NULL, 0, NULL, '2023-09-20 15:20:33', NULL),
	(1189, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '8.8.8.8', '', '{"appIcon":"a","appOffenState":"0","appShowState":"0","children":[],"component":"project/friend/index","createBy":"admin","icon":"checkbox","isCache":"0","isFrame":"1","menuName":"好友关系","menuType":"C","orderNum":1,"params":{},"parentId":2000,"path":"friend","status":"0","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-20 15:35:04', NULL),
	(1190, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '8.8.8.8', '', '{"appIcon":"a","appOffenState":"0","appShowState":"0","children":[],"component":"project/history/index","createBy":"admin","icon":"build","isCache":"0","isFrame":"1","menuName":"聊天记录","menuType":"C","orderNum":2,"params":{},"parentId":2000,"path":"history","status":"0","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-20 15:36:02', NULL),
	(1191, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '8.8.8.8', '', '{"appIcon":"a","appOffenState":"0","appShowState":"0","children":[],"component":"project/session/index","createBy":"admin","icon":"clipboard","isCache":"0","isFrame":"1","menuName":"用户session","menuType":"C","orderNum":3,"params":{},"parentId":2000,"path":"sess","status":"0","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-20 15:37:16', NULL),
	(1192, '聊天记录', 1, 'com.ruoyi.project.controller.ChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/history', '8.8.8.8', '', '{"chatContent":"1","id":1,"params":{}}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 09:35:01', NULL),
	(1193, '聊天记录', 1, 'com.ruoyi.project.controller.ChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/history', '8.8.8.8', '', '{"chatContent":"<strong>1</strong>","id":2,"params":{}}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 09:35:12', NULL),
	(1194, '聊天记录', 3, 'com.ruoyi.project.controller.ChatHistoryController.remove()', 'DELETE', 1, 'admin', NULL, '/history/1,2', '8.8.8.8', '', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 09:36:21', NULL),
	(1195, '聊天记录', 1, 'com.ruoyi.project.controller.ChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/history', '8.8.8.8', '', '{"chatContent":"123","id":1,"params":{}}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 09:36:35', NULL),
	(1196, '聊天记录', 3, 'com.ruoyi.project.controller.ChatHistoryController.remove()', 'DELETE', 1, 'admin', NULL, '/history/1', '8.8.8.8', '', '{}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 09:36:37', NULL),
	(1197, '聊天记录', 1, 'com.ruoyi.project.controller.ChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/history', '8.8.8.8', '', '{"chatContent":"第一第二","id":1,"params":{}}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 09:59:50', NULL),
	(1198, '聊天记录', 1, 'com.ruoyi.project.controller.ChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/history', '8.8.8.8', '', '{"chatContent":"测试","id":1,"params":{}}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 10:00:23', NULL),
	(1199, '聊天记录', 1, 'com.ruoyi.project.controller.ChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/history', '8.8.8.8', '', '{"chatContent":"测试","id":1,"params":{}}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 10:00:54', NULL),
	(1200, '聊天记录', 1, 'com.ruoyi.project.controller.ChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/history', '8.8.8.8', '', '{"chatContent":"123","id":1,"params":{}}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 10:02:44', NULL),
	(1201, '聊天记录', 1, 'com.ruoyi.project.controller.ChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/history', '8.8.8.8', '', '{"chatContent":"1","id":2,"params":{}}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 10:03:05', NULL),
	(1202, '聊天记录', 1, 'com.ruoyi.project.controller.ChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/history', '8.8.8.8', '', '{"chatContent":"<em>123</em>","id":3,"params":{}}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 10:03:24', NULL),
	(1203, '聊天记录', 1, 'com.ruoyi.project.controller.ChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/history', '8.8.8.8', '', '{"chatContent":"print\\n","id":4,"params":{}}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 10:03:40', NULL),
	(1204, '聊天记录', 1, 'com.ruoyi.project.controller.ChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/history', '8.8.8.8', '', '{"chatContent":"123","id":5,"params":{}}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 10:04:04', NULL),
	(1205, '聊天记录', 1, 'com.ruoyi.project.controller.ChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/history', '8.8.8.8', '', '{"chatContent":"<em>123455</em>","id":6,"params":{}}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 10:04:21', NULL),
	(1206, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '8.8.8.8', '', '{"admin":false,"avatar":"","createBy":"admin","createTime":"2023-09-19 13:19:35","delFlag":"0","dept":{"ancestors":"0","children":[],"deptId":100,"deptName":"暗焰幻境","leader":"","orderNum":0,"params":{},"parentId":0,"status":"0"},"deptId":100,"email":"","loginIp":"","nickName":"小盆友就应该多学习","params":{},"phonenumber":"","postIds":[3],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"0","status":"0","updateBy":"admin","userId":11,"userName":"wanghongda"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 15:45:51', NULL),
	(1207, '用户管理', 1, 'com.ruoyi.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '8.8.8.8', '', '{"admin":false,"createBy":"admin","deptId":100,"nickName":"邻家天使大人","params":{},"phonenumber":"","postIds":[3],"roleIds":[2],"sex":"1","status":"0","userId":12,"userName":"liujiawen"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 15:47:10', NULL),
	(1208, '用户管理', 1, 'com.ruoyi.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '8.8.8.8', '', '{"admin":false,"createBy":"admin","deptId":100,"nickName":"心心","params":{},"postIds":[2],"roleIds":[2],"sex":"2","status":"0","userId":13,"userName":"kokor"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 15:48:04', NULL),
	(1209, '用户管理', 1, 'com.ruoyi.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '8.8.8.8', '', '{"admin":false,"createBy":"admin","deptId":100,"nickName":"蓝若赐名的绝绝子","params":{},"phonenumber":"19805185621","postIds":[3],"roleIds":[2],"sex":"0","status":"0","userId":14,"userName":"wangtianchi"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 15:49:35', NULL),
	(1210, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '8.8.8.8', '', '{"admin":false,"avatar":"","createBy":"admin","createTime":"2023-09-21 15:49:35","delFlag":"0","dept":{"ancestors":"0","children":[],"deptId":100,"deptName":"暗焰幻境","leader":"","orderNum":0,"params":{},"parentId":0,"status":"0"},"deptId":100,"email":"","loginIp":"","nickName":"蓝若赐名的绝绝子","params":{},"phonenumber":"","postIds":[],"roleIds":[],"roles":[],"sex":"0","status":"0","updateBy":"admin","userId":6,"userName":"wangtianchi"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 16:22:14', NULL),
	(1211, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '8.8.8.8', '', '{"admin":false,"avatar":"","createBy":"admin","createTime":"2023-09-21 15:48:04","delFlag":"0","dept":{"ancestors":"0","children":[],"deptId":100,"deptName":"暗焰幻境","leader":"","orderNum":0,"params":{},"parentId":0,"status":"0"},"deptId":100,"email":"","loginIp":"","nickName":"心心","params":{},"phonenumber":"19805185621","postIds":[],"roleIds":[],"roles":[],"sex":"2","status":"0","updateBy":"admin","userId":5,"userName":"kokor"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 16:22:21', NULL),
	(1212, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '10.100.37.223', '', '{"admin":false,"createTime":"2023-01-27 09:09:05","dataScope":"2","delFlag":"0","deptCheckStrictly":true,"flag":false,"menuCheckStrictly":true,"menuIds":[2031],"params":{},"remark":"普通角色","roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0","updateBy":"admin"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 18:42:38', NULL),
	(1213, '角色管理', 4, 'com.ruoyi.system.controller.SysRoleController.selectAuthUserAll()', 'PUT', 1, 'admin', NULL, '/role/authUser/selectAll', '10.100.37.223', '', '2 [3,4,5,6]', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 18:43:04', NULL),
	(1214, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '8.8.8.8', '', '{"appIcon":"a","appOffenState":"0","appShowState":"0","children":[],"component":"module/newFriend/index","createBy":"admin","icon":"qq","isCache":"0","isFrame":"1","menuName":"添加好友","menuType":"C","orderNum":8,"params":{},"parentId":0,"path":"newFriend","status":"0","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 20:37:39', NULL),
	(1215, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '8.8.8.8', '', '{"appIcon":"a","appOffenState":"0","appShowState":"0","children":[],"component":"module/newFriend/index","createBy":"admin","createTime":"2023-09-21 20:37:39","icon":"user","isCache":"0","isFrame":"1","menuId":2035,"menuName":"添加好友","menuType":"C","orderNum":8,"params":{},"parentId":0,"path":"newFriend","remark":"","status":"0","updateBy":"admin","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-21 20:37:56', NULL),
	(1216, '用户头像', 2, 'com.ruoyi.system.controller.SysProfileController.avatar()', 'POST', 1, 'kokor', NULL, '/user/profile/avatar', '8.8.8.8', '', '', '{"msg":"操作成功","imgUrl":"http://127.0.0.1:9300/statics/2023/09/26/blob_20230926194837A001.png","code":200}', 0, NULL, '2023-09-26 19:48:37', NULL),
	(1217, '用户头像', 2, 'com.ruoyi.system.controller.SysProfileController.avatar()', 'POST', 1, 'kokor', NULL, '/user/profile/avatar', '8.8.8.8', '', '', '{"msg":"操作成功","imgUrl":"http://10.100.37.17:9300/statics/2023/09/26/blob_20230926195030A001.png","code":200}', 0, NULL, '2023-09-26 19:50:31', NULL),
	(1218, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '8.8.8.8', '', '{"admin":false,"avatar":"http://10.100.37.17:9300/statics/2023/09/26/blob_20230926195030A001.png","createBy":"admin","createTime":"2023-09-21 15:48:04","delFlag":"0","dept":{"ancestors":"0","children":[],"deptId":100,"deptName":"暗焰幻境","leader":"","orderNum":0,"params":{},"parentId":0,"status":"0"},"deptId":100,"email":"","loginIp":"","nickName":"心心","params":{},"phonenumber":"19805185621","postIds":[2],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"1","status":"0","updateBy":"admin","userId":5,"userName":"kokor"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-26 19:51:21', NULL),
	(1219, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '8.8.8.8', '', '{"admin":false,"avatar":"http://10.100.37.17:9300/statics/2023/09/17/blob_20230917200314A001.png","createBy":"admin","createTime":"2023-09-21 15:49:35","delFlag":"0","dept":{"ancestors":"0","children":[],"deptId":100,"deptName":"暗焰幻境","leader":"","orderNum":0,"params":{},"parentId":0,"status":"0"},"deptId":100,"email":"","loginIp":"","nickName":"蓝若赐名的绝绝子","params":{},"phonenumber":"","postIds":[3],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"0","status":"0","updateBy":"admin","userId":6,"userName":"wangtianchi"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-26 19:51:26', NULL),
	(1220, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '8.8.8.8', '', '{"admin":false,"avatar":"http://10.100.37.17:9300/statics/2023/09/17/blob_20230917200314A001.png","createBy":"admin","createTime":"2023-09-21 15:47:10","delFlag":"0","dept":{"ancestors":"0","children":[],"deptId":100,"deptName":"暗焰幻境","leader":"","orderNum":0,"params":{},"parentId":0,"status":"0"},"deptId":100,"email":"","loginIp":"","nickName":"邻家天使大人","params":{},"phonenumber":"","postIds":[3],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"1","status":"0","updateBy":"admin","userId":4,"userName":"liujiawen"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-26 19:51:30', NULL),
	(1221, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '8.8.8.8', '', '{"admin":false,"avatar":"http://10.100.37.17:9300/statics/2023/09/17/blob_20230917200314A001.png","createBy":"admin","createTime":"2023-09-19 13:19:35","delFlag":"0","dept":{"ancestors":"0","children":[],"deptId":100,"deptName":"暗焰幻境","leader":"","orderNum":0,"params":{},"parentId":0,"status":"0"},"deptId":100,"email":"","loginIp":"","nickName":"小盆友就应该多学习","params":{},"phonenumber":"","postIds":[3],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"0","status":"0","updateBy":"admin","userId":3,"userName":"wanghongda"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-26 19:51:35', NULL),
	(1222, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '8.8.8.8', '', '{"admin":false,"createTime":"2023-01-27 09:09:05","dataScope":"2","delFlag":"0","deptCheckStrictly":true,"flag":false,"menuCheckStrictly":true,"menuIds":[2031,2035],"params":{},"remark":"普通角色","roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0","updateBy":"admin"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-26 19:51:50', NULL),
	(1223, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","params":{},"userId":1}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'-friend\n         ( user_id,\n            friend_id,\n            friend_name ) \n  \' at line 1\r\n### The error may exist in file [D:\\IdeaWorkspace\\ChatRoom\\ruoyi-modules\\ruoyi-project\\target\\classes\\mapper\\project\\ChatFriendMapper.xml]\r\n### The error may involve com.ruoyi.project.mapper.ChatFriendMapper.insertChatFriend-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into chat-friend          ( user_id,             friend_id,             friend_name )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'-friend\n         ( user_id,\n            friend_id,\n            friend_name ) \n  \' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'-friend\n         ( user_id,\n            friend_id,\n            friend_name ) \n  \' at line 1', '2023-09-27 15:18:38', NULL),
	(1224, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","params":{},"userId":1}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'-friend\n         ( user_id,\n            friend_id,\n            friend_name ) \n  \' at line 1\r\n### The error may exist in file [D:\\IdeaWorkspace\\ChatRoom\\ruoyi-modules\\ruoyi-project\\target\\classes\\mapper\\project\\ChatFriendMapper.xml]\r\n### The error may involve com.ruoyi.project.mapper.ChatFriendMapper.insertChatFriend-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into chat-friend          ( user_id,             friend_id,             friend_name )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'-friend\n         ( user_id,\n            friend_id,\n            friend_name ) \n  \' at line 1\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near \'-friend\n         ( user_id,\n            friend_id,\n            friend_name ) \n  \' at line 1', '2023-09-27 15:19:39', NULL),
	(1225, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-27 15:21:48', NULL),
	(1226, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"测试人员","id":2,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-27 15:22:15', NULL),
	(1227, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '8.8.8.8', '', '{"appIcon":"a","appOffenState":"0","appShowState":"0","children":[],"component":"module/newFriend/index","createBy":"admin","createTime":"2023-09-21 20:37:39","icon":"qq","isCache":"0","isFrame":"1","menuId":2035,"menuName":"添加好友","menuType":"C","orderNum":8,"params":{},"parentId":0,"path":"newFriend","remark":"","status":"0","updateBy":"admin","updateTime":"2023-09-21 20:37:56","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-27 15:32:23', NULL),
	(1228, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":3,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-28 15:46:56', NULL),
	(1229, '用户头像', 2, 'com.ruoyi.system.controller.SysProfileController.avatar()', 'POST', 1, 'kokor', NULL, '/user/profile/avatar', '192.168.0.102', '', '', '{"msg":"操作成功","imgUrl":"http://127.0.0.1:9300/statics/2023/09/28/blob_20230928155904A001.png","code":200}', 0, NULL, '2023-09-28 15:59:04', NULL),
	(1230, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '192.168.0.102', '', '{"appIcon":"a","appOffenState":"0","appShowState":"0","children":[],"component":"module/newFriend/index","createBy":"admin","createTime":"2023-09-21 20:37:39","icon":"jdang","isCache":"0","isFrame":"1","menuId":2035,"menuName":"添加好友","menuType":"C","orderNum":8,"params":{},"parentId":0,"path":"newFriend","remark":"","status":"0","updateBy":"admin","updateTime":"2023-09-27 15:32:23","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-28 16:43:06', NULL),
	(1231, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '192.168.0.102', '', '{"appIcon":"a","appOffenState":"0","appShowState":"0","children":[],"component":"module/newFriend/index","createBy":"admin","createTime":"2023-09-21 20:37:39","icon":"qq","isCache":"0","isFrame":"1","menuId":2035,"menuName":"添加好友","menuType":"C","orderNum":8,"params":{},"parentId":0,"path":"newFriend","remark":"","status":"0","updateBy":"admin","updateTime":"2023-09-28 16:43:06","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-28 16:43:20', NULL),
	(1232, '菜单管理', 1, 'com.ruoyi.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/menu', '192.168.0.102', '', '{"appIcon":"1","appOffenState":"0","appShowState":"0","children":[],"component":"module/friendManage/index","createBy":"admin","icon":"people","isCache":"0","isFrame":"1","menuName":"好友管理","menuType":"C","orderNum":9,"params":{},"parentId":0,"path":"friends","status":"0","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-28 16:44:21', NULL),
	(1233, '角色管理', 2, 'com.ruoyi.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/role', '192.168.0.102', '', '{"admin":false,"createTime":"2023-01-27 09:09:05","dataScope":"2","delFlag":"0","deptCheckStrictly":true,"flag":false,"menuCheckStrictly":true,"menuIds":[2031,2035,2036],"params":{},"remark":"普通角色","roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0","updateBy":"admin"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-28 16:44:43', NULL),
	(1234, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/fm/friend', '8.8.8.8', '', '{"friendId":1,"friendName":"管理员","id":4,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-28 22:24:07', NULL),
	(1235, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/fm/friend', '8.8.8.8', '', '{"friendId":1,"friendName":"管理员","id":5,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-28 22:24:52', NULL),
	(1236, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":1,"friendName":"管理员","id":1,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-28 22:57:50', NULL),
	(1237, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'admin', NULL, '/fm/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"开发人员","id":2,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-28 22:58:17', NULL),
	(1238, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'admin', NULL, '/fm/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":3,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-28 23:01:19', NULL),
	(1239, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":4,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-28 23:09:48', NULL),
	(1240, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/fm/friend', '8.8.8.8', '', '{"friendId":1,"friendName":"管理员","id":5,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-28 23:10:09', NULL),
	(1241, '用户管理', 1, 'com.ruoyi.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '8.8.8.8', '', '{"admin":false,"deptId":100,"nickName":"摆烂子","params":{},"postIds":[2],"roleIds":[2],"status":"0","userName":"kokor"}', '{"msg":"新增用户\'kokor\'失败，登录账号已存在","code":500}', 0, NULL, '2023-09-28 23:41:20', NULL),
	(1242, '用户管理', 1, 'com.ruoyi.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '8.8.8.8', '', '{"admin":false,"deptId":100,"nickName":"摆烂子","params":{},"postIds":[2],"roleIds":[2],"status":"0","userName":"kokor"}', '{"msg":"新增用户\'kokor\'失败，登录账号已存在","code":500}', 0, NULL, '2023-09-28 23:42:33', NULL),
	(1243, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":6,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 16:22:29', NULL),
	(1244, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":7,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 16:24:49', NULL),
	(1245, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 16:28:01', NULL),
	(1246, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 16:28:34', NULL),
	(1247, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 16:29:32', NULL),
	(1248, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 16:30:15', NULL),
	(1249, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 16:33:06', NULL),
	(1250, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 16:34:30', NULL),
	(1251, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/nf/friend', '192.168.0.102', '', '{"friendId":1,"friendName":"","id":1,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 16:37:11', NULL),
	(1252, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'admin', NULL, '/fm/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":2,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 16:38:19', NULL),
	(1253, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 16:42:00', NULL),
	(1254, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":2,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 16:42:24', NULL),
	(1255, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":3,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 16:42:50', NULL),
	(1256, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 16:48:05', NULL),
	(1257, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 16:49:33', NULL),
	(1258, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 16:55:50', NULL),
	(1259, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 16:57:16', NULL),
	(1260, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 17:00:00', NULL),
	(1261, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 17:01:04', NULL),
	(1262, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/fm/friend', '192.168.0.102', '', '{"friendId":1,"friendName":"","id":2,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 17:04:53', NULL),
	(1263, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 17:13:08', NULL),
	(1264, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 17:14:11', NULL),
	(1265, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 17:17:22', NULL),
	(1266, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 17:17:46', NULL),
	(1267, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 17:18:04', NULL),
	(1268, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 20:36:51', NULL),
	(1269, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":6,"friendName":"","id":2,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 20:36:59', NULL),
	(1270, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 20:37:16', NULL),
	(1271, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":6,"friendName":"","id":2,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 20:37:21', NULL),
	(1272, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/fm/friend', '192.168.0.102', '', '{"friendId":1,"friendName":"","id":3,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 20:37:37', NULL),
	(1273, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":1,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 20:51:08', NULL),
	(1274, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/nf/friend', '192.168.0.104', '', '{"friendId":1,"friendName":"","id":1,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 20:53:16', NULL),
	(1275, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":2,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 20:57:59', NULL),
	(1276, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/nf/friend', '192.168.0.104', '', '{"friendId":1,"friendName":"","id":3,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 20:59:33', NULL),
	(1277, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":4,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 20:59:44', NULL),
	(1278, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":5,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 21:03:10', NULL),
	(1279, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/nf/friend', '192.168.0.104', '', '{"friendId":1,"friendName":"","id":6,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 21:04:02', NULL),
	(1280, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":7,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 21:04:14', NULL),
	(1281, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":8,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 21:04:26', NULL),
	(1282, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/nf/friend', '192.168.0.104', '', '{"friendId":1,"friendName":"","id":9,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 21:05:06', NULL),
	(1283, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":10,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 21:05:13', NULL),
	(1284, '用户管理', 1, 'com.ruoyi.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '8.8.8.8', '', '{"admin":false,"avatar":"http://192.168.0.104:9300/statics/2023/09/17/blob_20230917200314A001.png","createBy":"admin","nickName":"123","params":{},"postIds":[2],"roleIds":[2],"status":"0","userId":7,"userName":"kkk"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 21:11:03', NULL),
	(1285, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":11,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 21:13:15', NULL),
	(1286, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/fm/friend', '192.168.0.104', '', '{"friendId":1,"friendName":"","id":12,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 21:13:26', NULL),
	(1287, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":13,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 21:13:58', NULL),
	(1288, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/fm/friend', '192.168.0.104', '', '{"friendId":1,"friendName":"","id":14,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 21:14:03', NULL),
	(1289, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":15,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 21:14:36', NULL),
	(1290, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/fm/friend', '192.168.0.104', '', '{"friendId":1,"friendName":"","id":16,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 21:14:43', NULL),
	(1291, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":17,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 21:21:04', NULL),
	(1292, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/fm/friend', '192.168.0.104', '', '{"friendId":1,"friendName":"","id":18,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 21:21:11', NULL),
	(1293, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":3,"friendName":"","id":19,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 21:51:19', NULL),
	(1294, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'wanghongda', NULL, '/fm/friend', '192.168.0.104', '', '{"friendId":1,"friendName":"","id":20,"params":{},"userId":3}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 21:51:22', NULL),
	(1295, '好友备注', 2, 'com.ruoyi.project.module.friendManage.FMChatFriendController.changeName()', 'PUT', 1, 'admin', NULL, '/fm/friend/noteName', '8.8.8.8', '', '{"friendId":3,"friendName":"","params":{},"userId":1}', NULL, 0, NULL, '2023-09-29 22:40:13', NULL),
	(1296, '好友备注', 2, 'com.ruoyi.project.module.friendManage.FMChatFriendController.changeName()', 'PUT', 1, 'admin', NULL, '/fm/friend/noteName', '8.8.8.8', '', '{"friendId":3,"friendName":"","params":{},"userId":1}', NULL, 0, NULL, '2023-09-29 22:40:19', NULL),
	(1297, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"123","chatTime":"2023-09-29","id":1,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 22:54:27', NULL),
	(1298, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"123","chatTime":"2023-09-29","id":1,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 23:20:11', NULL),
	(1299, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"456","chatTime":"2023-09-29","id":2,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 23:20:15', NULL),
	(1300, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"789","chatTime":"2023-09-29","id":3,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 23:39:25', NULL),
	(1301, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"<strong>789</strong>","chatTime":"2023-09-29","id":4,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 23:40:02', NULL),
	(1302, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"<em>你好</em>","chatTime":"2023-09-29","id":5,"params":{},"receiveId":3,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 23:41:03', NULL),
	(1303, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":21,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 23:44:56', NULL),
	(1304, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/fm/friend', '192.168.0.104', '', '{"friendId":1,"friendName":"管理员","id":22,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 23:45:07', NULL),
	(1305, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"谢谢","chatTime":"2023-09-29","id":6,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 23:57:40', NULL),
	(1306, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"<strong>跳转</strong>测试","chatTime":"2023-09-29","id":7,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-29 23:59:21', NULL),
	(1307, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"洞洞","chatTime":"2023-09-30","id":8,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:01:30', NULL),
	(1308, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"啊？","chatTime":"2023-09-30","id":9,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:01:58', NULL),
	(1309, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"去","chatTime":"2023-09-30","id":10,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:02:36', NULL),
	(1310, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"为什么没有提醒","chatTime":"2023-09-30","id":11,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:03:21', NULL),
	(1311, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"？怎么两个还冲突啊","chatTime":"2023-09-30","id":12,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:03:57', NULL),
	(1312, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"太神奇了","chatTime":"2023-09-30","id":13,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:04:10', NULL),
	(1313, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"离开","chatTime":"2023-09-30","id":14,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:05:05', NULL),
	(1314, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"不太明白","chatTime":"2023-09-30","id":15,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:05:24', NULL),
	(1315, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"123","chatTime":"2023-09-30","id":16,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:08:02', NULL),
	(1316, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"444","chatTime":"2023-09-30","id":17,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:08:09', NULL),
	(1317, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"看一下route","chatTime":"2023-09-30","id":18,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:09:06', NULL),
	(1318, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"试一下","chatTime":"2023-09-30","id":19,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:11:01', NULL),
	(1319, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"再试一下","chatTime":"2023-09-30","id":20,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:11:23', NULL),
	(1320, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"啊？","chatTime":"2023-09-30","id":21,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:17:45', NULL),
	(1321, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"神奇吧","chatTime":"2023-09-30","id":22,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:18:16', NULL),
	(1322, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"来看看啊","chatTime":"2023-09-30","id":23,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:18:44', NULL),
	(1323, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"这不是完了","chatTime":"2023-09-30","id":24,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:19:25', NULL),
	(1324, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"绷","chatTime":"2023-09-30","id":25,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:20:08', NULL),
	(1325, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"绷一下","chatTime":"2023-09-30","id":26,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:20:38', NULL),
	(1326, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"烦死了","chatTime":"2023-09-30","id":27,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:21:07', NULL),
	(1327, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"睡觉了","chatTime":"2023-09-30","id":28,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:22:08', NULL),
	(1328, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"睡不着了","chatTime":"2023-09-30","id":29,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:23:27', NULL),
	(1329, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"这下应该没问题了吧","chatTime":"2023-09-30","id":30,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:23:42', NULL),
	(1330, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"烦","chatTime":"2023-09-30","id":31,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:25:36', NULL),
	(1331, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"睡觉去了","chatTime":"2023-09-30","id":32,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:38:53', NULL),
	(1332, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"好","chatTime":"2023-09-30","id":33,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:39:35', NULL),
	(1333, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"晚安","chatTime":"2023-09-30","id":34,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:40:29', NULL),
	(1334, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"睡觉","chatTime":"2023-09-30","id":35,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:42:30', NULL),
	(1335, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"晚安","chatTime":"2023-09-30","id":36,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:43:57', NULL),
	(1336, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"啊？","chatTime":"2023-09-30","id":37,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:44:04', NULL),
	(1337, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"这不对吧","chatTime":"2023-09-30","id":38,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:44:19', NULL),
	(1338, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"睡不着了呀","chatTime":"2023-09-30","id":39,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:45:17', NULL),
	(1339, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"确实","chatTime":"2023-09-30","id":40,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:46:05', NULL),
	(1340, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"神奇","chatTime":"2023-09-30","id":41,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:46:41', NULL),
	(1341, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"神奇","chatTime":"2023-09-30","id":42,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:47:12', NULL),
	(1342, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"1","chatTime":"2023-09-30","id":43,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:47:25', NULL),
	(1343, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"1","chatTime":"2023-09-30","id":44,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:47:50', NULL),
	(1344, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"服了","chatTime":"2023-09-30","id":45,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:48:31', NULL),
	(1345, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"这下呢","chatTime":"2023-09-30","id":46,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:50:52', NULL),
	(1346, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"好了吗？","chatTime":"2023-09-30","id":47,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:51:05', NULL),
	(1347, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'wangtianchi', NULL, '/nf/friend', '192.168.0.104', '', '{"friendId":1,"friendName":"","id":23,"params":{},"userId":6}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:52:00', NULL),
	(1348, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'admin', NULL, '/fm/friend', '8.8.8.8', '', '{"friendId":6,"friendName":"","id":24,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:52:07', NULL),
	(1349, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'wangtianchi', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"111","chatTime":"2023-09-30","id":48,"params":{},"receiveId":1,"userId":6}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:52:18', NULL),
	(1350, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'wangtianchi', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"来看一下","chatTime":"2023-09-30","id":49,"params":{},"receiveId":1,"userId":6}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:56:25', NULL),
	(1351, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'wangtianchi', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"111","chatTime":"2023-09-30","id":50,"params":{},"receiveId":1,"userId":6}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:57:12', NULL),
	(1352, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'wangtianchi', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"111","chatTime":"2023-09-30","id":51,"params":{},"receiveId":1,"userId":6}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:57:18', NULL),
	(1353, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'wangtianchi', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"123","chatTime":"2023-09-30","id":52,"params":{},"receiveId":1,"userId":6}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:58:03', NULL),
	(1354, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'wangtianchi', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"123","chatTime":"2023-09-30","id":53,"params":{},"receiveId":1,"userId":6}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:59:19', NULL),
	(1355, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'wangtianchi', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"123","chatTime":"2023-09-30","id":54,"params":{},"receiveId":1,"userId":6}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 00:59:25', NULL),
	(1356, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'wangtianchi', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"333","chatTime":"2023-09-30","id":55,"params":{},"receiveId":1,"userId":6}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 01:02:17', NULL),
	(1357, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'wangtianchi', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"456","chatTime":"2023-09-30","id":56,"params":{},"receiveId":1,"userId":6}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 01:03:26', NULL),
	(1358, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'wangtianchi', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"6","chatTime":"2023-09-30","id":57,"params":{},"receiveId":1,"userId":6}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 01:04:19', NULL),
	(1359, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'wangtianchi', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"123","chatTime":"2023-09-30","id":58,"params":{},"receiveId":1,"userId":6}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 01:07:10', NULL),
	(1360, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'wangtianchi', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"能不能睡啊","chatTime":"2023-09-30","id":59,"params":{},"receiveId":1,"userId":6}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 01:10:30', NULL),
	(1361, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'wangtianchi', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"最后一搏了","chatTime":"2023-09-30","id":60,"params":{},"receiveId":1,"userId":6}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 01:14:11', NULL),
	(1362, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"成功了！","chatTime":"2023-09-30","id":61,"params":{},"receiveId":6,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 01:14:19', NULL),
	(1363, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"我们是冠军！","chatTime":"2023-09-30","id":62,"params":{},"receiveId":6,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 01:14:26', NULL),
	(1364, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"太强了","chatTime":"2023-09-30","id":63,"params":{},"receiveId":6,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 01:15:01', NULL),
	(1365, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"对吧","chatTime":"2023-09-30","id":64,"params":{},"receiveId":6,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 01:15:07', NULL),
	(1366, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'wangtianchi', NULL, '/cp/history', '192.168.0.104', '', '{"chatContent":"太对了，可以睡觉去了","chatTime":"2023-09-30","id":65,"params":{},"receiveId":1,"userId":6}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 01:16:36', NULL),
	(1367, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"是的","chatTime":"2023-09-30","id":66,"params":{},"receiveId":6,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 01:16:42', NULL),
	(1368, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '127.0.0.1', '', '{"chatContent":"1","chatTime":"2023-09-30","id":67,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 11:39:05', NULL),
	(1369, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '192.168.0.102', '', '{"admin":false,"avatar":"http://192.168.0.104:9300/statics/2023/09/28/blob_20230928155904A001.png","createBy":"admin","createTime":"2023-09-21 15:48:04","delFlag":"0","dept":{"ancestors":"0","children":[],"deptId":100,"deptName":"暗焰幻境","leader":"","orderNum":0,"params":{},"parentId":0,"status":"0"},"deptId":100,"email":"1030651863@qq.com","loginIp":"","nickName":"心心","params":{},"phonenumber":"19805185621","postIds":[3,2],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"1","status":"0","updateBy":"admin","userId":5,"userName":"kokor"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 13:37:42', NULL),
	(1370, '用户头像', 2, 'com.ruoyi.system.controller.SysProfileController.avatar()', 'POST', 1, 'kokor', NULL, '/user/profile/avatar', '192.168.0.102', '', '', '{"msg":"操作成功","imgUrl":"http://127.0.0.1:9300/statics/2023/09/30/1696053209463_20230930135416A001.png","code":200}', 0, NULL, '2023-09-30 13:54:16', NULL),
	(1371, '用户头像', 2, 'com.ruoyi.system.controller.SysProfileController.avatar()', 'POST', 1, 'kokor', NULL, '/user/profile/avatar', '192.168.0.102', '', '', '{"msg":"操作成功","imgUrl":"http://127.0.0.1:9300/statics/2023/09/30/blob_20230930135612A002.png","code":200}', 0, NULL, '2023-09-30 13:56:12', NULL),
	(1372, '用户头像', 2, 'com.ruoyi.system.controller.SysProfileController.avatar()', 'POST', 1, 'kokor', NULL, '/user/profile/avatar', '192.168.0.102', '', '', '{"msg":"操作成功","imgUrl":"http://127.0.0.1:9300/statics/2023/09/30/blob_20230930135742A003.png","code":200}', 0, NULL, '2023-09-30 13:57:42', NULL),
	(1373, '用户头像', 2, 'com.ruoyi.system.controller.SysProfileController.avatar()', 'POST', 1, 'kokor', NULL, '/user/profile/avatar', '192.168.0.102', '', '', '{"msg":"操作成功","imgUrl":"http://127.0.0.1:9300/statics/2023/09/30/blob_20230930135835A004.png","code":200}', 0, NULL, '2023-09-30 13:58:35', NULL),
	(1374, '用户头像', 2, 'com.ruoyi.system.controller.SysProfileController.avatar()', 'POST', 1, 'kokor', NULL, '/user/profile/avatar', '192.168.0.102', '', '', '{"msg":"操作成功","imgUrl":"http://192.168.0.104:9300/statics/2023/09/30/blob_20230930140322A005.png","code":200}', 0, NULL, '2023-09-30 14:03:23', NULL),
	(1375, '用户头像', 2, 'com.ruoyi.system.controller.SysProfileController.avatar()', 'POST', 1, 'kokor', NULL, '/user/profile/avatar', '192.168.0.102', '', '', '{"msg":"操作成功","imgUrl":"http://192.168.0.104:9300/statics/2023/09/30/1696053840017_20230930140445A006.png","code":200}', 0, NULL, '2023-09-30 14:04:45', NULL),
	(1376, '用户头像', 2, 'com.ruoyi.system.controller.SysProfileController.avatar()', 'POST', 1, 'kokor', NULL, '/user/profile/avatar', '192.168.0.102', '', '', '{"msg":"操作成功","imgUrl":"http://192.168.0.104:9300/statics/2023/09/30/1696053854051_20230930140459A007.png","code":200}', 0, NULL, '2023-09-30 14:04:59', NULL),
	(1377, '用户头像', 2, 'com.ruoyi.system.controller.SysProfileController.avatar()', 'POST', 1, 'kokor', NULL, '/user/profile/avatar', '192.168.0.102', '', '', '{"msg":"操作成功","imgUrl":"http://192.168.0.104:9300/statics/2023/09/30/blob_20230930140536A008.png","code":200}', 0, NULL, '2023-09-30 14:05:36', NULL),
	(1378, '用户头像', 2, 'com.ruoyi.system.controller.SysProfileController.avatar()', 'POST', 1, 'kokor', NULL, '/user/profile/avatar', '192.168.0.105', '', '', '{"msg":"操作成功","imgUrl":"http://192.168.0.104:9300/statics/2023/09/30/16960540612780_20230930140741A009.png","code":200}', 0, NULL, '2023-09-30 14:07:41', NULL),
	(1379, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.0.102', '', '{"chatContent":"说话","chatTime":"2023-09-30","id":68,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 14:09:06', NULL),
	(1380, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.0.102', '', '{"chatContent":"<strong>加粗</strong>","chatTime":"2023-09-30","id":69,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 14:09:51', NULL),
	(1381, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.0.102', '', '{"chatContent":"<em>1</em>","chatTime":"2023-09-30","id":70,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 14:11:45', NULL),
	(1382, '用户头像', 2, 'com.ruoyi.system.controller.SysProfileController.avatar()', 'POST', 1, 'kokor', NULL, '/user/profile/avatar', '192.168.1.103', '', '', '{"msg":"操作成功","imgUrl":"http://192.168.1.106:9300/statics/2023/09/30/1696078902316_20230930210144A001.png","code":200}', 0, NULL, '2023-09-30 21:01:44', NULL),
	(1383, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '8.8.8.8', '', '{"appIcon":"1","appOffenState":"0","appShowState":"0","children":[],"component":"module/friendManage/index","createBy":"admin","createTime":"2023-09-28 16:44:21","icon":"qq","isCache":"0","isFrame":"1","menuId":2036,"menuName":"好友管理","menuType":"C","orderNum":9,"params":{},"parentId":0,"path":"friends","remark":"","status":"0","updateBy":"admin","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 21:36:34', NULL),
	(1384, '菜单管理', 2, 'com.ruoyi.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/menu', '8.8.8.8', '', '{"appIcon":"a","appOffenState":"0","appShowState":"0","children":[],"component":"module/newFriend/index","createBy":"admin","createTime":"2023-09-21 20:37:39","icon":"search","isCache":"0","isFrame":"1","menuId":2035,"menuName":"添加好友","menuType":"C","orderNum":8,"params":{},"parentId":0,"path":"newFriend","remark":"","status":"0","updateBy":"admin","updateTime":"2023-09-28 16:43:20","visible":"0"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-09-30 21:37:02', NULL),
	(1385, '好友备注', 2, 'com.ruoyi.project.module.friendManage.FMChatFriendController.changeName()', 'PUT', 1, 'kokor', NULL, '/fm/friend/noteName', '192.168.1.103', '', '{"friendId":1,"friendName":"","params":{},"userId":5}', NULL, 0, NULL, '2023-10-01 01:19:09', NULL),
	(1386, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/fm/friend', '192.168.1.103', '', '{"friendId":6,"friendName":"","id":27,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 01:42:04', NULL),
	(1387, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/nf/friend', '192.168.1.103', '', '{"friendId":6,"friendName":"","id":28,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 02:15:54', NULL),
	(1388, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/nf/friend', '192.168.1.103', '', '{"friendId":6,"friendName":"","id":29,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 02:16:20', NULL),
	(1389, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'wangtianchi', NULL, '/fm/friend', '192.168.1.106', '', '{"friendId":5,"friendName":"","id":30,"params":{},"userId":6}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 02:17:01', NULL),
	(1390, '好友备注', 2, 'com.ruoyi.project.module.friendManage.FMChatFriendController.changeName()', 'PUT', 1, 'kokor', NULL, '/fm/friend/noteName', '192.168.1.103', '', '{"friendId":6,"friendName":"","params":{},"userId":5}', NULL, 0, NULL, '2023-10-01 02:17:18', NULL),
	(1391, '好友备注', 2, 'com.ruoyi.project.module.friendManage.FMChatFriendController.changeName()', 'PUT', 1, 'kokor', NULL, '/fm/friend/noteName', '192.168.1.103', '', '{"friendId":6,"friendName":"","params":{},"userId":5}', NULL, 0, NULL, '2023-10-01 02:17:33', NULL),
	(1392, '好友备注', 2, 'com.ruoyi.project.module.friendManage.FMChatFriendController.changeName()', 'PUT', 1, 'wangtianchi', NULL, '/fm/friend/noteName', '192.168.1.106', '', '{"friendId":5,"friendName":"","params":{},"userId":6}', NULL, 0, NULL, '2023-10-01 02:18:12', NULL),
	(1393, '好友备注', 2, 'com.ruoyi.project.module.friendManage.FMChatFriendController.changeName()', 'PUT', 1, 'kokor', NULL, '/fm/friend/noteName', '192.168.1.103', '', '{"friendId":6,"friendName":"","params":{},"userId":5}', NULL, 0, NULL, '2023-10-01 02:19:04', NULL),
	(1394, '好友备注', 2, 'com.ruoyi.project.module.friendManage.FMChatFriendController.changeName()', 'PUT', 1, 'wangtianchi', NULL, '/fm/friend/noteName', '192.168.1.106', '', '{"friendId":5,"friendName":"","params":{},"userId":6}', NULL, 0, NULL, '2023-10-01 02:19:58', NULL),
	(1395, '好友备注', 2, 'com.ruoyi.project.module.friendManage.FMChatFriendController.changeName()', 'PUT', 1, 'wangtianchi', NULL, '/fm/friend/noteName', '192.168.1.106', '', '{"friendId":5,"friendName":"","params":{},"userId":6}', NULL, 0, NULL, '2023-10-01 02:21:49', NULL),
	(1396, '好友备注', 2, 'com.ruoyi.project.module.friendManage.FMChatFriendController.changeName()', 'PUT', 1, 'kokor', NULL, '/fm/friend/noteName', '192.168.1.103', '', '{"friendId":6,"friendName":"","params":{},"userId":5}', NULL, 0, NULL, '2023-10-01 02:22:13', NULL),
	(1397, '好友备注', 2, 'com.ruoyi.project.module.friendManage.FMChatFriendController.changeName()', 'PUT', 1, 'kokor', NULL, '/fm/friend/noteName', '192.168.1.103', '', '{"friendId":1,"friendName":"","params":{},"userId":5}', NULL, 0, NULL, '2023-10-01 02:22:26', NULL),
	(1398, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/nf/friend', '192.168.1.103', '', '{"friendId":6,"friendName":"摆","id":31,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 02:23:24', NULL),
	(1399, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'wangtianchi', NULL, '/fm/friend', '192.168.1.106', '', '{"friendId":5,"friendName":"","id":32,"params":{},"userId":6}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 02:23:29', NULL),
	(1400, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"123","chatTime":"2023-10-01","id":71,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 18:06:25', NULL),
	(1401, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.105', '', '{"chatContent":"111","chatTime":"2023-10-01","id":72,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 18:06:55', NULL),
	(1402, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"465","chatTime":"2023-10-01","id":73,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 18:07:11', NULL),
	(1403, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.105', '', '{"chatContent":"123","chatTime":"2023-10-01","id":74,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 18:07:21', NULL),
	(1404, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.105', '', '{"chatContent":"111","chatTime":"2023-10-01","id":75,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 18:09:22', NULL),
	(1405, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"777","chatTime":"2023-10-01","id":76,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 18:09:26', NULL),
	(1406, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"8","chatTime":"2023-10-01","id":77,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 18:09:38', NULL),
	(1407, '用户管理', 1, 'com.ruoyi.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '8.8.8.8', '', '{"admin":false,"avatar":"http://192.168.1.106:9300/statics/2023/09/17/blob_20230917200314A001.png","createBy":"admin","deptId":100,"nickName":"摆烂子","params":{},"postIds":[2],"roleIds":[2],"status":"0","userId":7,"userName":"yn"}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'7-2\' for key \'PRIMARY\'\r\n### The error may exist in file [D:\\IdeaWorkspace\\ChatRoom\\ruoyi-modules\\ruoyi-system\\target\\classes\\mapper\\system\\SysUserRoleMapper.xml]\r\n### The error may involve defaultParameterMap\r\n### The error occurred while setting parameters\r\n### SQL: insert into sys_user_role(user_id, role_id) values         (?,?)\r\n### Cause: java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'7-2\' for key \'PRIMARY\'\n; Duplicate entry \'7-2\' for key \'PRIMARY\'; nested exception is java.sql.SQLIntegrityConstraintViolationException: Duplicate entry \'7-2\' for key \'PRIMARY\'', '2023-10-01 19:03:51', NULL),
	(1408, '用户管理', 1, 'com.ruoyi.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/user', '8.8.8.8', '', '{"admin":false,"avatar":"http://192.168.1.106:9300/statics/2023/09/17/blob_20230917200314A001.png","createBy":"admin","nickName":"摆","params":{},"postIds":[],"roleIds":[],"status":"0","userId":8,"userName":"yn"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 19:05:27', NULL),
	(1409, '用户管理', 2, 'com.ruoyi.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/user', '8.8.8.8', '', '{"admin":false,"avatar":"http://192.168.1.106:9300/statics/2023/09/17/blob_20230917200314A001.png","createBy":"admin","createTime":"2023-10-01 19:05:27","delFlag":"0","deptId":100,"email":"","loginIp":"","nickName":"摆烂子","params":{},"phonenumber":"","postIds":[2],"roleIds":[2],"roles":[{"admin":false,"dataScope":"2","deptCheckStrictly":false,"flag":false,"menuCheckStrictly":false,"params":{},"roleId":2,"roleKey":"common","roleName":"普通角色","roleSort":2,"status":"0"}],"sex":"0","status":"0","updateBy":"admin","userId":8,"userName":"yn"}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 19:05:51', NULL),
	(1410, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'wangtianchi', NULL, '/nf/friend', '192.168.1.103', '', '{"friendId":8,"friendName":"","id":23,"params":{},"userId":6}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 19:06:42', NULL),
	(1411, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'yn', NULL, '/fm/friend', '192.168.1.103', '', '{"friendId":6,"friendName":"","id":24,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 19:07:15', NULL),
	(1412, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '192.168.1.103', '', '{"friendId":5,"friendName":"","id":25,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 21:12:18', NULL),
	(1413, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/fm/friend', '192.168.1.103', '', '{"friendId":8,"friendName":"","id":26,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 21:13:00', NULL),
	(1414, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'yn', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"1","chatTime":"2023-10-01","id":78,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 21:26:41', NULL),
	(1415, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'yn', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"3","chatTime":"2023-10-01","id":79,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 21:26:45', NULL),
	(1416, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'yn', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"567","chatTime":"2023-10-01","id":80,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 21:27:08', NULL),
	(1417, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'yn', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"345","chatTime":"2023-10-01","id":81,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 21:27:11', NULL),
	(1418, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'yn', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"123","chatTime":"2023-10-01","id":82,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 21:27:36', NULL),
	(1419, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'yn', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"123","chatTime":"2023-10-01","id":83,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 21:27:39', NULL),
	(1420, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'yn', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"111","chatTime":"2023-10-01","id":84,"params":{},"receiveId":5,"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 21:29:27', NULL),
	(1421, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'yn', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"啊？不用清空？","chatTime":"2023-10-01","id":85,"params":{},"receiveId":5,"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 21:35:45', NULL),
	(1422, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'yn', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"真好","chatTime":"2023-10-01","id":86,"params":{},"receiveId":5,"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 21:36:24', NULL),
	(1423, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.103', '', '{"chatContent":"太棒了","chatTime":"2023-10-01","id":87,"params":{},"receiveId":8,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 21:37:25', NULL),
	(1424, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.103', '', '{"chatContent":"完了，它不会动","chatTime":"2023-10-01","id":88,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 21:40:29', NULL),
	(1425, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"哈哈哈哈","chatTime":"2023-10-01","id":89,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 22:01:11', NULL),
	(1426, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'yn', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"看看","chatTime":"2023-10-01","id":90,"params":{},"receiveId":5,"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 22:32:12', NULL),
	(1427, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.103', '', '{"chatContent":"不好使啊","chatTime":"2023-10-01","id":91,"params":{},"receiveId":8,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 22:33:32', NULL),
	(1428, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"1","chatTime":"2023-10-01","id":92,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 22:37:17', NULL),
	(1429, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"2","chatTime":"2023-10-01","id":93,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 22:40:00', NULL),
	(1430, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"3","chatTime":"2023-10-01","id":94,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 22:40:12', NULL),
	(1431, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"5","chatTime":"2023-10-01","id":95,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 22:40:20', NULL),
	(1432, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"6","chatTime":"2023-10-01","id":96,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 22:40:34', NULL),
	(1433, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"7","chatTime":"2023-10-01","id":97,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 22:40:38', NULL),
	(1434, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"8","chatTime":"2023-10-01","id":98,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 22:41:56', NULL),
	(1435, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.103', '', '{"chatContent":"9","chatTime":"2023-10-01","id":99,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 22:42:02', NULL),
	(1436, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.103', '', '{"chatContent":"我","chatTime":"2023-10-01","id":100,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 22:44:40', NULL),
	(1437, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"好怪啊","chatTime":"2023-10-01","id":101,"params":{},"receiveId":8,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 22:49:46', NULL),
	(1438, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"1","chatTime":"2023-10-01","id":102,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 22:53:07', NULL),
	(1439, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"1","chatTime":"2023-10-01","id":103,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 22:53:18', NULL),
	(1440, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"1","chatTime":"2023-10-01","id":104,"params":{},"receiveId":8,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 22:53:28', NULL),
	(1441, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"1","chatTime":"2023-10-01","id":105,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 22:56:24', NULL),
	(1442, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"1","chatTime":"2023-10-01","id":106,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 22:56:33', NULL),
	(1443, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"1","chatTime":"2023-10-01","id":107,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 22:57:23', NULL),
	(1444, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"1","chatTime":"2023-10-01","id":108,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 22:59:46', NULL),
	(1445, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"啊哈哈哈哈","chatTime":"2023-10-01","id":109,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 23:02:10', NULL),
	(1446, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":27,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 23:04:04', NULL),
	(1447, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":28,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 23:24:05', NULL),
	(1448, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":29,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 23:27:20', NULL),
	(1449, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":30,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 23:29:10', NULL),
	(1450, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"呀哈","chatTime":"2023-10-01","id":110,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 23:30:06', NULL),
	(1451, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.103', '', '{"chatContent":"测试","chatTime":"2023-10-01","id":111,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 23:47:38', NULL),
	(1452, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.103', '', '{"chatContent":"2","chatTime":"2023-10-01","id":112,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 23:49:20', NULL),
	(1453, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.103', '', '{"chatContent":"好","chatTime":"2023-10-01","id":113,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 23:50:30', NULL),
	(1454, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.103', '', '{"chatContent":"7","chatTime":"2023-10-01","id":114,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 23:51:34', NULL),
	(1455, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.103', '', '{"chatContent":"啊","chatTime":"2023-10-01","id":115,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 23:54:05', NULL),
	(1456, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"太可怕了","chatTime":"2023-10-01","id":116,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 23:54:16', NULL),
	(1457, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"你就说是不是吧","chatTime":"2023-10-01","id":117,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 23:54:30', NULL),
	(1458, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.103', '', '{"chatContent":"确实","chatTime":"2023-10-01","id":118,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-01 23:54:40', NULL),
	(1459, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":31,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:00:30', NULL),
	(1460, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"只","chatTime":"2023-10-02","id":119,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:00:56', NULL),
	(1461, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"只","chatTime":"2023-10-02","id":120,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:01:33', NULL),
	(1462, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":32,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:05:58', NULL),
	(1463, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"我","chatTime":"2023-10-02","id":121,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:06:05', NULL),
	(1464, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '192.168.1.106', '', '{"friendId":8,"friendName":"","id":33,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:10:03', NULL),
	(1465, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '192.168.1.106', '', '{"friendId":8,"friendName":"","id":34,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:10:55', NULL),
	(1466, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":1,"friendName":"","id":35,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:11:55', NULL),
	(1467, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '192.168.1.106', '', '{"friendId":8,"friendName":"","id":36,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:12:32', NULL),
	(1468, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '192.168.1.106', '', '{"friendId":8,"friendName":"","id":37,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:12:48', NULL),
	(1469, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '192.168.1.106', '', '{"friendId":8,"friendName":"","id":38,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:13:51', NULL),
	(1470, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '192.168.1.106', '', '{"friendId":8,"friendName":"","id":39,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:16:15', NULL),
	(1471, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '192.168.1.106', '', '{"friendId":8,"friendName":"","id":40,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:16:46', NULL),
	(1472, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '192.168.1.106', '', '{"friendId":8,"friendName":"","id":41,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:17:20', NULL),
	(1473, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '192.168.1.106', '', '{"friendId":8,"friendName":"","id":42,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:18:15', NULL),
	(1474, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '192.168.1.106', '', '{"friendId":8,"friendName":"","id":43,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:19:21', NULL),
	(1475, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":1,"friendName":"","id":44,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:19:37', NULL),
	(1476, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'admin', NULL, '/fm/friend', '192.168.1.106', '', '{"friendId":8,"friendName":"","id":45,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:19:55', NULL),
	(1477, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"呀哈","chatTime":"2023-10-02","id":122,"params":{},"receiveId":8,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:20:05', NULL),
	(1478, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '192.168.1.106', '', '{"friendId":8,"friendName":"","id":46,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:22:24', NULL),
	(1479, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'admin', NULL, '/nf/friend', '192.168.1.106', '', '{"friendId":8,"friendName":"","id":47,"params":{},"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:23:07', NULL),
	(1480, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":1,"friendName":"","id":48,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:27:03', NULL),
	(1481, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":1,"friendName":"","id":49,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:27:32', NULL),
	(1482, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"0","chatTime":"2023-10-02","id":123,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:34:14', NULL),
	(1483, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"0","chatTime":"2023-10-02","id":124,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:34:18', NULL),
	(1484, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":50,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:34:59', NULL),
	(1485, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":1,"friendName":"","id":51,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:35:39', NULL),
	(1486, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":1,"friendName":"","id":52,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:36:16', NULL),
	(1487, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":1,"friendName":"","id":53,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:36:57', NULL),
	(1488, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'admin', NULL, '/cp/history', '192.168.1.106', '', '{"chatContent":"1","chatTime":"2023-10-02","id":125,"params":{},"receiveId":5,"userId":1}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:38:08', NULL),
	(1489, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":54,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:38:16', NULL),
	(1490, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":1,"friendName":"","id":55,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:38:34', NULL),
	(1491, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":56,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:38:42', NULL),
	(1492, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":57,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:39:18', NULL),
	(1493, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":58,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:39:28', NULL),
	(1494, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":59,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:39:38', NULL),
	(1495, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":60,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:39:49', NULL),
	(1496, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":61,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:42:48', NULL),
	(1497, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":1,"friendName":"","id":62,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:43:01', NULL),
	(1498, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":63,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:43:35', NULL),
	(1499, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":1,"friendName":"","id":64,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:43:41', NULL),
	(1500, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":65,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:44:19', NULL),
	(1501, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":1,"friendName":"","id":66,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:44:23', NULL),
	(1502, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":67,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:46:16', NULL),
	(1503, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":1,"friendName":"","id":68,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:46:43', NULL),
	(1504, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":69,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:47:04', NULL),
	(1505, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":1,"friendName":"","id":70,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:47:23', NULL),
	(1506, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":1,"friendName":"","id":71,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:47:34', NULL),
	(1507, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":72,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:49:23', NULL),
	(1508, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":73,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:49:58', NULL),
	(1509, '好友关系', 1, 'com.ruoyi.project.module.friendManage.FMChatFriendController.add()', 'POST', 1, 'kokor', NULL, '/fm/friend', '192.168.1.103', '', '{"friendId":8,"friendName":"","id":74,"params":{},"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:50:01', NULL),
	(1510, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'yn', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"1","chatTime":"2023-10-02","id":126,"params":{},"receiveId":5,"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:50:09', NULL),
	(1511, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'yn', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"1","chatTime":"2023-10-02","id":127,"params":{},"receiveId":5,"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:50:16', NULL),
	(1512, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'yn', NULL, '/cp/history', '8.8.8.8', '', '{"chatContent":"6","chatTime":"2023-10-02","id":128,"params":{},"receiveId":5,"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:50:28', NULL),
	(1513, '好友关系', 1, 'com.ruoyi.project.module.newFriend.NFChatFriendController.add()', 'POST', 1, 'yn', NULL, '/nf/friend', '8.8.8.8', '', '{"friendId":5,"friendName":"","id":75,"params":{},"userId":8}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:56:25', NULL),
	(1514, '聊天记录', 1, 'com.ruoyi.project.module.chatPage.CPChatHistoryController.add()', 'POST', 1, 'kokor', NULL, '/cp/history', '192.168.1.103', '', '{"chatContent":"烦","chatTime":"2023-10-02","id":129,"params":{},"receiveId":1,"userId":5}', '{"msg":"操作成功","code":200}', 0, NULL, '2023-10-02 00:56:45', NULL);
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;


-- Dumping structure for table chatroom.sys_post
CREATE TABLE IF NOT EXISTS `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';

-- Dumping data for table chatroom.sys_post: ~4 rows (approximately)
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
REPLACE INTO `sys_post` (`post_id`, `post_code`, `post_name`, `post_sort`, `status`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, 'administrator', '管理员', 1, '0', 'admin', '2023-01-27 09:09:05', 'admin', '2023-09-17 20:06:55', ''),
	(2, 'programmer', '开发人员', 2, '0', 'admin', '2023-01-27 09:09:05', 'admin', '2023-09-17 21:02:48', ''),
	(3, 'friend', '露娜的朋友', 3, '0', 'admin', '2023-01-27 09:09:05', 'admin', '2023-09-17 21:06:46', ''),
	(4, 'user', '普通用户', 4, '0', 'admin', '2023-01-27 09:09:05', 'admin', '2023-09-17 21:06:56', '');
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;


-- Dumping structure for table chatroom.sys_role
CREATE TABLE IF NOT EXISTS `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';

-- Dumping data for table chatroom.sys_role: ~2 rows (approximately)
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
REPLACE INTO `sys_role` (`role_id`, `role_name`, `role_key`, `role_sort`, `data_scope`, `menu_check_strictly`, `dept_check_strictly`, `status`, `del_flag`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2023-01-27 09:09:05', '', NULL, '超级管理员'),
	(2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2023-01-27 09:09:05', 'admin', '2023-09-28 16:44:43', '普通角色');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;


-- Dumping structure for table chatroom.sys_role_dept
CREATE TABLE IF NOT EXISTS `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';

-- Dumping data for table chatroom.sys_role_dept: ~1 rows (approximately)
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
REPLACE INTO `sys_role_dept` (`role_id`, `dept_id`) VALUES
	(2, 100);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;


-- Dumping structure for table chatroom.sys_role_menu
CREATE TABLE IF NOT EXISTS `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';

-- Dumping data for table chatroom.sys_role_menu: ~3 rows (approximately)
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
REPLACE INTO `sys_role_menu` (`role_id`, `menu_id`) VALUES
	(2, 2031),
	(2, 2035),
	(2, 2036);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;


-- Dumping structure for table chatroom.sys_user
CREATE TABLE IF NOT EXISTS `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='用户信息表';

-- Dumping data for table chatroom.sys_user: ~7 rows (approximately)
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
REPLACE INTO `sys_user` (`user_id`, `dept_id`, `user_name`, `nick_name`, `user_type`, `email`, `phonenumber`, `sex`, `avatar`, `password`, `status`, `del_flag`, `login_ip`, `login_date`, `create_by`, `create_time`, `update_by`, `update_time`, `remark`) VALUES
	(1, 100, 'admin', '露娜', '00', 'rika_66612@qq.com', '18914765621', '1', 'http://192.168.1.106:9300/statics/2023/09/17/blob_20230917200314A001.png', '$2a$10$CfxhCvGfVNck/piP37LuG.vsudtI/2SU9B9IQtlsiNnyTTX5HJBa2', '0', '0', '127.0.0.1', '2023-01-27 09:09:05', 'admin', '2023-01-27 09:09:05', '', '2023-09-28 16:28:42', '管理员'),
	(2, 100, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', 'http://127.0.0.1:9300/statics/2023/09/17/blob_20230917200314A001.png', '$2a$10$itKuHcmA4pcKvwftKMWE9estME5IZUC.AtDPCkUjoo9kKqE0zC3PO', '0', '2', '127.0.0.1', '2023-01-27 09:09:05', 'admin', '2023-01-27 09:09:05', 'admin', '2023-03-28 16:58:43', '测试员'),
	(3, 100, 'wanghongda', '小盆友就应该多学习', '00', '', '', '0', 'http://192.168.1.106:9300/statics/2023/09/17/blob_20230917200314A001.png', '$2a$10$GQy8iULESYsC6d7YizSUbeFljcjUlmY3tQKjBYPA.RSXCMk6xQzAK', '0', '0', '', NULL, 'admin', '2023-09-19 13:19:35', 'admin', '2023-09-28 16:28:42', NULL),
	(4, 100, 'liujiawen', '邻家天使大人', '00', '', '', '1', 'http://192.168.1.106:9300/statics/2023/09/17/blob_20230917200314A001.png', '$2a$10$JZD7xwhsdgzEJPvb2xrSjenA4SZTILmoSU4WX/4ZrA7ZXGZ1NxQCO', '0', '0', '', NULL, 'admin', '2023-09-21 15:47:10', 'admin', '2023-09-28 16:28:42', NULL),
	(5, 100, 'kokor', '心心', '00', '1030651863@qq.com', '19805185621', '1', 'http://192.168.1.106:9300/statics/2023/09/30/1696078902316_20230930210144A001.png', '$2a$10$QLw1dGyKeyEe0xE9X4rRFu15qtn.Kbt6.rRYlQ2QzlsiPL8uJDwQS', '0', '0', '', NULL, 'admin', '2023-09-21 15:48:04', 'admin', '2023-09-30 13:37:41', NULL),
	(6, 100, 'wangtianchi', '蓝若赐名的绝绝子', '00', '', '', '0', 'http://192.168.1.106:9300/statics/2023/09/17/blob_20230917200314A001.png', '$2a$10$VOmUkgE4ZtN3JHxM64uwnOkJ/A416QghJZr/Z/2v9U/WhZpXVMRmW', '0', '0', '', NULL, 'admin', '2023-09-21 15:49:35', 'admin', '2023-09-28 16:28:42', NULL),
	(8, 100, 'yn', '摆烂子', '00', '', '', '0', 'http://192.168.1.106:9300/statics/2023/09/17/blob_20230917200314A001.png', '$2a$10$98EaqFuzAiKmLC6Ru.I6YejQeXh45Yq5lrVMfka0NDdSOpXdV5vV.', '0', '0', '', NULL, 'admin', '2023-10-01 19:05:27', 'admin', '2023-10-01 19:05:51', NULL);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;


-- Dumping structure for table chatroom.sys_user_post
CREATE TABLE IF NOT EXISTS `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';

-- Dumping data for table chatroom.sys_user_post: ~6 rows (approximately)
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
REPLACE INTO `sys_user_post` (`user_id`, `post_id`) VALUES
	(3, 3),
	(4, 3),
	(5, 2),
	(5, 3),
	(6, 3),
	(8, 2);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;


-- Dumping structure for table chatroom.sys_user_role
CREATE TABLE IF NOT EXISTS `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';

-- Dumping data for table chatroom.sys_user_role: ~5 rows (approximately)
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
REPLACE INTO `sys_user_role` (`user_id`, `role_id`) VALUES
	(3, 2),
	(4, 2),
	(5, 2),
	(6, 2),
	(7, 2),
	(8, 2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;


-- Dumping structure for table chatroom.yh_application_counts
CREATE TABLE IF NOT EXISTS `yh_application_counts` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `USER_ID` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `USERNAME` varchar(100) DEFAULT NULL COMMENT '用户名',
  `MENU_ID` bigint(20) DEFAULT NULL COMMENT '应用ID',
  `MENUNAME` varchar(100) DEFAULT NULL COMMENT '应用名',
  `FREQUENCY` int(11) DEFAULT NULL COMMENT '使用次数',
  `CREATE_BY` varchar(64) DEFAULT NULL COMMENT '创建者',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(64) DEFAULT NULL COMMENT '更新者',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
  `NOTE1` varchar(1000) DEFAULT NULL COMMENT '备注1',
  `NOTE2` varchar(1000) DEFAULT NULL COMMENT '备注2',
  `NOTE3` varchar(1000) DEFAULT NULL COMMENT '备注3',
  `NOTE4` varchar(1000) DEFAULT NULL COMMENT '备注4',
  `NOTE5` varchar(1000) DEFAULT NULL COMMENT '备注5',
  `NOTE6` varchar(1000) DEFAULT NULL COMMENT '备注6',
  `NOTE7` varchar(1000) DEFAULT NULL COMMENT '备注7',
  `NOTE8` varchar(1000) DEFAULT NULL COMMENT '备注8',
  `NOTE9` varchar(1000) DEFAULT NULL COMMENT '备注9',
  `NOTE10` varchar(1000) DEFAULT NULL COMMENT '备注10',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='应用日志统计表';

-- Dumping data for table chatroom.yh_application_counts: ~39 rows (approximately)
/*!40000 ALTER TABLE `yh_application_counts` DISABLE KEYS */;
REPLACE INTO `yh_application_counts` (`ID`, `USER_ID`, `USERNAME`, `MENU_ID`, `MENUNAME`, `FREQUENCY`, `CREATE_BY`, `CREATE_TIME`, `UPDATE_BY`, `UPDATE_TIME`, `REMARK`, `NOTE1`, `NOTE2`, `NOTE3`, `NOTE4`, `NOTE5`, `NOTE6`, `NOTE7`, `NOTE8`, `NOTE9`, `NOTE10`) VALUES
	(1, 1, 'admin', 1088, '电话记录', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, 1, 'admin', 115, '代码生成', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, 1, 'admin', 100, '用户管理', 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, 1, 'admin', 101, '角色管理', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, 1, 'admin', 110, '定时任务', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, 1, 'admin', 2033, '接诊列表', 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(7, 1, 'admin', 109, '在线用户', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, 1, 'admin', 2034, '医生接诊', 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, 1, 'admin', 2032, '病历', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(10, 1, 'admin', 102, '菜单管理', 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(11, 1, 'admin', 2030, '消息列表', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(12, 1, 'admin', 103, '部门管理', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(13, 1, 'admin', 2010, '查询多表', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(14, 1, 'admin', 104, '岗位管理', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(15, 1, 'admin', 2037, '开台', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(16, 1, 'admin', 2038, '商品点单', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(17, 1, 'admin', 2039, '客房点单', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(18, 1, 'admin', 2040, '搓澡排队', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(19, 1, 'admin', 2041, '买单', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(20, 1, 'admin', 2036, '首页', 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(21, 1, 'admin', 2001, '基本信息', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(22, 1, 'admin', 2132, '吧台账单', 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(23, 1, 'admin', 2144, '人员基础信息', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(24, 1, 'admin', 2150, '消费详细', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(25, 1, 'admin', 2174, '搓澡排号', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(26, 1, 'admin', 2156, '项目信息', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(27, 1, 'admin', 2162, '房间基础信息', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(28, 1, 'admin', 2168, '手牌基础信息', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(29, 1, 'admin', 105, '字典管理', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(30, 1, 'admin', 2186, '吧台首页', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(31, 1, 'admin', 2187, '鞋吧主页', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(32, 1, 'admin', 2200, '鞋吧查询弹窗', 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(33, 1, 'admin', 2195, '结账', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(34, 1, 'admin', 2138, '点餐信息暂存', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(35, 1, 'admin', 2199, '点单', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(36, 1, 'admin', 2196, '排号', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(37, 1, 'admin', 2267, '急诊分诊', 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(38, 1, 'admin', 2243, '时间过程', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(39, 1, 'admin', 2420, '基本健康信息', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `yh_application_counts` ENABLE KEYS */;


-- Dumping structure for table chatroom.yh_content
CREATE TABLE IF NOT EXISTS `yh_content` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `NOTICE_TYPE` char(1) DEFAULT NULL COMMENT '公告类别',
  `NOTICE_TITLE` varchar(1000) DEFAULT NULL COMMENT '公告标题',
  `NOTICE_CONTENT` mediumtext COMMENT '公告内容',
  `NOTICE_STATUS` char(1) DEFAULT NULL COMMENT '公告状态',
  `PICTURE_URL` varchar(100) DEFAULT NULL COMMENT '图片路径',
  `SOURCES_URL` varchar(100) DEFAULT NULL COMMENT '材料路径',
  `RELEASE_TIME` datetime DEFAULT NULL COMMENT '发布时间',
  `PARTICIPANTS` varchar(100) DEFAULT NULL COMMENT '参与人员',
  `VIEWS_TIMES` varchar(100) DEFAULT NULL COMMENT '浏览次数',
  `CONTENT_COLUMN` char(1) DEFAULT NULL COMMENT '栏目',
  `HAVE_EXPERIENCE` char(1) DEFAULT NULL COMMENT '是否有心得体会',
  `EXPERIENCE_CONTENT` mediumtext COMMENT '心得体会内容',
  `FILE_NUM` varchar(100) DEFAULT NULL COMMENT '文件号',
  `USER_ID` bigint(20) DEFAULT NULL COMMENT '用户ID',
  `DEPT_ID` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `NOTICE_ID` bigint(20) DEFAULT NULL COMMENT '公告ID',
  `DOCUMENT_NO` varchar(100) DEFAULT NULL COMMENT '文号',
  `IMPLEMENTATION_TIME` datetime DEFAULT NULL COMMENT '实施时间',
  `SECURITY` char(1) DEFAULT NULL COMMENT 'M级',
  `YEARS_LIMIT` varchar(100) DEFAULT NULL COMMENT '年限',
  `CREATE_BY` varchar(64) DEFAULT NULL COMMENT '创建者',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(64) DEFAULT NULL COMMENT '更新者',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `REMARK` varchar(500) DEFAULT NULL COMMENT '备注',
  `NOTE1` varchar(1000) DEFAULT NULL COMMENT '备注1',
  `NOTE2` varchar(1000) DEFAULT NULL COMMENT '备注2',
  `NOTE3` varchar(1000) DEFAULT NULL COMMENT '备注3',
  `NOTE4` varchar(1000) DEFAULT NULL COMMENT '备注4',
  `NOTE5` varchar(1000) DEFAULT NULL COMMENT '备注5',
  `NOTE6` varchar(1000) DEFAULT NULL COMMENT '备注6',
  `NOTE7` varchar(1000) DEFAULT NULL COMMENT '备注7',
  `NOTE8` varchar(1000) DEFAULT NULL COMMENT '备注8',
  `NOTE9` varchar(1000) DEFAULT NULL COMMENT '备注9',
  `NOTE10` varchar(1000) DEFAULT NULL COMMENT '备注10',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='内容公告发布表';

-- Dumping data for table chatroom.yh_content: ~2 rows (approximately)
/*!40000 ALTER TABLE `yh_content` DISABLE KEYS */;
REPLACE INTO `yh_content` (`ID`, `NOTICE_TYPE`, `NOTICE_TITLE`, `NOTICE_CONTENT`, `NOTICE_STATUS`, `PICTURE_URL`, `SOURCES_URL`, `RELEASE_TIME`, `PARTICIPANTS`, `VIEWS_TIMES`, `CONTENT_COLUMN`, `HAVE_EXPERIENCE`, `EXPERIENCE_CONTENT`, `FILE_NUM`, `USER_ID`, `DEPT_ID`, `NOTICE_ID`, `DOCUMENT_NO`, `IMPLEMENTATION_TIME`, `SECURITY`, `YEARS_LIMIT`, `CREATE_BY`, `CREATE_TIME`, `UPDATE_BY`, `UPDATE_TIME`, `REMARK`, `NOTE1`, `NOTE2`, `NOTE3`, `NOTE4`, `NOTE5`, `NOTE6`, `NOTE7`, `NOTE8`, `NOTE9`, `NOTE10`) VALUES
	(2, '2', '555', '5555', '1', NULL, NULL, '2023-02-15 15:10:28', NULL, NULL, '1', NULL, NULL, NULL, 1, 102, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-15 15:10:28', NULL, NULL, NULL, NULL, '/profile/upload/77e851b3bc4215fcf5cfd1638ecbfdf_20230215151024A003.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, '2', 'pdf', '566', '1', NULL, NULL, '2023-02-15 15:12:20', NULL, NULL, '2', NULL, NULL, NULL, 1, 102, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-15 15:12:20', NULL, NULL, NULL, '/profile/upload/A Survey of Graph Neural Networks for Social_20230215151217A004.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `yh_content` ENABLE KEYS */;


-- Dumping structure for table chatroom.yh_msg_inner
CREATE TABLE IF NOT EXISTS `yh_msg_inner` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `MSG_TITLE` varchar(200) DEFAULT NULL COMMENT '消息标题',
  `CONTENT_LEVEL` char(1) DEFAULT NULL COMMENT '内容级别',
  `CONTENT_TYPE` char(1) DEFAULT NULL COMMENT '内容类型',
  `MSG_CONTENT` mediumtext COMMENT '消息内容',
  `RECEIVE_TYPE` char(1) DEFAULT NULL COMMENT '接受者类型',
  `RECEIVE_CODES` varchar(100) DEFAULT NULL COMMENT '接受者字符串',
  `RECEIVE_NAMES` varchar(100) DEFAULT NULL COMMENT '接受者名称字符串',
  `SEND_USER_CODE` varchar(100) DEFAULT NULL COMMENT '发送者用户编码',
  `SEND_USER_NAME` varchar(100) DEFAULT NULL COMMENT '发送者用户姓名',
  `SEND_DATE` datetime DEFAULT NULL COMMENT '发送时间',
  `IS_ATTAC` char(1) DEFAULT NULL COMMENT '是否有附件',
  `NOTIFY_TYPES` varchar(100) DEFAULT NULL COMMENT '通知类型',
  `STATUS` char(1) DEFAULT NULL COMMENT '状态',
  `CREATE_BY` varchar(64) DEFAULT NULL COMMENT '创建者',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(64) DEFAULT NULL COMMENT '更新者',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `NOTE` varchar(500) DEFAULT NULL COMMENT '备注',
  `NOTE1` varchar(1000) DEFAULT NULL COMMENT '备注1',
  `NOTE2` varchar(1000) DEFAULT NULL COMMENT '备注2',
  `NOTE3` varchar(1000) DEFAULT NULL COMMENT '备注3',
  `NOTE4` varchar(1000) DEFAULT NULL COMMENT '备注4',
  `NOTE5` varchar(1000) DEFAULT NULL COMMENT '备注5',
  `NOTE6` varchar(1000) DEFAULT NULL COMMENT '备注6',
  `NOTE7` varchar(1000) DEFAULT NULL COMMENT '备注7',
  `NOTE8` varchar(1000) DEFAULT NULL COMMENT '备注8',
  `NOTE9` varchar(1000) DEFAULT NULL COMMENT '备注9',
  `NOTE10` varchar(1000) DEFAULT NULL COMMENT '备注10',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='内部消息表';

-- Dumping data for table chatroom.yh_msg_inner: ~41 rows (approximately)
/*!40000 ALTER TABLE `yh_msg_inner` DISABLE KEYS */;
REPLACE INTO `yh_msg_inner` (`ID`, `MSG_TITLE`, `CONTENT_LEVEL`, `CONTENT_TYPE`, `MSG_CONTENT`, `RECEIVE_TYPE`, `RECEIVE_CODES`, `RECEIVE_NAMES`, `SEND_USER_CODE`, `SEND_USER_NAME`, `SEND_DATE`, `IS_ATTAC`, `NOTIFY_TYPES`, `STATUS`, `CREATE_BY`, `CREATE_TIME`, `UPDATE_BY`, `UPDATE_TIME`, `NOTE`, `NOTE1`, `NOTE2`, `NOTE3`, `NOTE4`, `NOTE5`, `NOTE6`, `NOTE7`, `NOTE8`, `NOTE9`, `NOTE10`) VALUES
	(1, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 15:33:17', NULL, NULL, NULL, NULL, '2023-03-28 15:33:17', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 15:34:16', NULL, NULL, NULL, NULL, '2023-03-28 15:34:16', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 15:35:07', NULL, NULL, NULL, NULL, '2023-03-28 15:35:07', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 15:36:16', NULL, NULL, NULL, NULL, '2023-03-28 15:36:16', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 16:32:18', NULL, NULL, NULL, NULL, '2023-03-28 16:32:18', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 16:32:57', NULL, NULL, NULL, NULL, '2023-03-28 16:32:57', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(7, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 16:35:57', NULL, NULL, NULL, NULL, '2023-03-28 16:35:57', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 16:36:35', NULL, NULL, NULL, NULL, '2023-03-28 16:36:35', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:01:00', NULL, NULL, NULL, NULL, '2023-03-28 17:01:00', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(10, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:01:15', NULL, NULL, NULL, NULL, '2023-03-28 17:01:15', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(11, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:01:19', NULL, NULL, NULL, NULL, '2023-03-28 17:01:19', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(12, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:01:21', NULL, NULL, NULL, NULL, '2023-03-28 17:01:21', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(13, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:01:23', NULL, NULL, NULL, NULL, '2023-03-28 17:01:23', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(14, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:02:31', NULL, NULL, NULL, NULL, '2023-03-28 17:02:31', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(15, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:03:04', NULL, NULL, NULL, NULL, '2023-03-28 17:03:04', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(16, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:03:38', NULL, NULL, NULL, NULL, '2023-03-28 17:03:38', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(17, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:04:07', NULL, NULL, NULL, NULL, '2023-03-28 17:04:07', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(18, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:04:56', NULL, NULL, NULL, NULL, '2023-03-28 17:04:56', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(19, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:07:13', NULL, NULL, NULL, NULL, '2023-03-28 17:07:13', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(20, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:07:25', NULL, NULL, NULL, NULL, '2023-03-28 17:07:25', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(21, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:07:29', NULL, NULL, NULL, NULL, '2023-03-28 17:07:29', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(22, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:07:33', NULL, NULL, NULL, NULL, '2023-03-28 17:07:33', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(23, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:07:43', NULL, NULL, NULL, NULL, '2023-03-28 17:07:43', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(24, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:23:54', NULL, NULL, NULL, NULL, '2023-03-28 17:23:54', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(25, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:24:13', NULL, NULL, NULL, NULL, '2023-03-28 17:24:13', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(26, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:24:23', NULL, NULL, NULL, NULL, '2023-03-28 17:24:23', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(27, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:26:49', NULL, NULL, NULL, NULL, '2023-03-28 17:26:49', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(28, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:28:06', NULL, NULL, NULL, NULL, '2023-03-28 17:28:06', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(29, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:31:23', NULL, NULL, NULL, NULL, '2023-03-28 17:31:23', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(30, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:32:37', NULL, NULL, NULL, NULL, '2023-03-28 17:32:37', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(31, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:34:12', NULL, NULL, NULL, NULL, '2023-03-28 17:34:12', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(32, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:34:47', NULL, NULL, NULL, NULL, '2023-03-28 17:34:47', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(33, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:35:24', NULL, NULL, NULL, NULL, '2023-03-28 17:35:24', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(34, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:38:18', NULL, NULL, NULL, NULL, '2023-03-28 17:38:18', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(35, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:38:24', NULL, NULL, NULL, NULL, '2023-03-28 17:38:24', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(36, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:41:00', NULL, NULL, NULL, NULL, '2023-03-28 17:41:00', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(37, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:41:00', NULL, NULL, NULL, NULL, '2023-03-28 17:41:00', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(38, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:41:50', NULL, NULL, NULL, NULL, '2023-03-28 17:41:50', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(39, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:43:48', NULL, NULL, NULL, NULL, '2023-03-28 17:43:48', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(40, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-28 17:43:58', NULL, NULL, NULL, NULL, '2023-03-28 17:43:58', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(41, '这里写标题，必填', NULL, '1', '这里写内容，必填', NULL, NULL, NULL, NULL, '这里写发送者名字，填用户名就行，必填', '2023-03-30 07:55:43', NULL, NULL, NULL, NULL, '2023-03-30 07:55:43', NULL, NULL, NULL, '这里填写发送者的昵称，对表的user表的nick_name，必填', '这里填写你业务的相对url，如/notice/noticelist，必填', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `yh_msg_inner` ENABLE KEYS */;


-- Dumping structure for table chatroom.yh_msg_record
CREATE TABLE IF NOT EXISTS `yh_msg_record` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `MSG_INNER_ID` varchar(255) DEFAULT NULL COMMENT '所属消息',
  `RECEIVE_USER_CODE` varchar(255) DEFAULT NULL COMMENT '接受者用户编码',
  `RECEIVE_USER_NAME` varchar(255) DEFAULT NULL COMMENT '接受者用户姓名',
  `READ_STATUS` char(1) DEFAULT NULL COMMENT '读取状态',
  `READ_DATE` datetime DEFAULT NULL COMMENT '阅读时间',
  `IS_STAR` char(1) DEFAULT NULL COMMENT '是否标星',
  `CREATE_BY` varchar(64) DEFAULT NULL COMMENT '创建者',
  `CREATE_TIME` datetime DEFAULT NULL COMMENT '创建时间',
  `UPDATE_BY` varchar(64) DEFAULT NULL COMMENT '更新者',
  `UPDATE_TIME` datetime DEFAULT NULL COMMENT '更新时间',
  `NOTE` varchar(500) DEFAULT NULL COMMENT '备注',
  `NOTE1` varchar(1000) DEFAULT NULL COMMENT '备注1',
  `NOTE2` varchar(1000) DEFAULT NULL COMMENT '备注2',
  `NOTE3` varchar(1000) DEFAULT NULL COMMENT '备注3',
  `NOTE4` varchar(1000) DEFAULT NULL COMMENT '备注4',
  `NOTE5` varchar(1000) DEFAULT NULL COMMENT '备注5',
  `NOTE6` varchar(1000) DEFAULT NULL COMMENT '备注6',
  `NOTE7` varchar(1000) DEFAULT NULL COMMENT '备注7',
  `NOTE8` varchar(1000) DEFAULT NULL COMMENT '备注8',
  `NOTE9` varchar(1000) DEFAULT NULL COMMENT '备注9',
  `NOTE10` varchar(1000) DEFAULT NULL COMMENT '备注10',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='内部消息发送记录表';

-- Dumping data for table chatroom.yh_msg_record: ~82 rows (approximately)
/*!40000 ALTER TABLE `yh_msg_record` DISABLE KEYS */;
REPLACE INTO `yh_msg_record` (`ID`, `MSG_INNER_ID`, `RECEIVE_USER_CODE`, `RECEIVE_USER_NAME`, `READ_STATUS`, `READ_DATE`, `IS_STAR`, `CREATE_BY`, `CREATE_TIME`, `UPDATE_BY`, `UPDATE_TIME`, `NOTE`, `NOTE1`, `NOTE2`, `NOTE3`, `NOTE4`, `NOTE5`, `NOTE6`, `NOTE7`, `NOTE8`, `NOTE9`, `NOTE10`) VALUES
	(1, '1', NULL, 'admin', '1', '2023-03-28 15:34:31', NULL, NULL, '2023-03-28 15:33:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(2, '1', NULL, 'juzhang', '0', NULL, NULL, NULL, '2023-03-28 15:33:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, '2', NULL, 'admin', '1', '2023-03-28 15:34:36', NULL, NULL, '2023-03-28 15:34:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, '2', NULL, 'juzhang', '0', NULL, NULL, NULL, '2023-03-28 15:34:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, '3', NULL, 'admin', '1', '2023-03-28 15:35:47', NULL, NULL, '2023-03-28 15:35:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, '3', NULL, 'juzhang', '0', NULL, NULL, NULL, '2023-03-28 15:35:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(7, '4', NULL, 'admin', '1', '2023-03-28 15:47:41', NULL, NULL, '2023-03-28 15:36:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, '4', NULL, 'juzhang', '0', NULL, NULL, NULL, '2023-03-28 15:36:16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, '5', NULL, 'admin', '1', '2023-03-28 16:36:57', NULL, NULL, '2023-03-28 16:32:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(10, '5', NULL, 'juzhang', '0', NULL, NULL, NULL, '2023-03-28 16:32:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(11, '6', NULL, 'admin', '1', '2023-03-28 16:37:00', NULL, NULL, '2023-03-28 16:32:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(12, '6', NULL, 'juzhang', '0', NULL, NULL, NULL, '2023-03-28 16:32:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(13, '7', NULL, 'admin', '1', '2023-03-28 16:37:01', NULL, NULL, '2023-03-28 16:35:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(14, '7', NULL, 'juzhang', '0', NULL, NULL, NULL, '2023-03-28 16:35:57', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(15, '8', NULL, 'admin', '1', '2023-03-28 16:37:03', NULL, NULL, '2023-03-28 16:36:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(16, '8', NULL, 'juzhang', '0', NULL, NULL, NULL, '2023-03-28 16:36:35', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(17, '9', NULL, 'admin', '1', '2023-03-29 08:21:18', NULL, NULL, '2023-03-28 17:01:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(18, '9', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:01:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(19, '10', NULL, 'admin', '1', '2023-03-29 08:21:20', NULL, NULL, '2023-03-28 17:01:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(20, '10', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:01:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(21, '11', NULL, 'admin', '1', '2023-03-29 08:21:22', NULL, NULL, '2023-03-28 17:01:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(22, '11', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:01:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(23, '12', NULL, 'admin', '1', '2023-03-29 08:21:24', NULL, NULL, '2023-03-28 17:01:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(24, '12', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:01:21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(25, '13', NULL, 'admin', '1', '2023-03-29 08:21:27', NULL, NULL, '2023-03-28 17:01:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(26, '13', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:01:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(27, '14', NULL, 'admin', '1', '2023-03-29 08:21:29', NULL, NULL, '2023-03-28 17:02:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(28, '14', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:02:31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(29, '15', NULL, 'admin', '1', '2023-03-29 08:21:31', NULL, NULL, '2023-03-28 17:03:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(30, '15', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:03:04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(31, '16', NULL, 'admin', '1', '2023-03-29 08:21:32', NULL, NULL, '2023-03-28 17:03:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(32, '16', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:03:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(33, '17', NULL, 'admin', '1', '2023-03-29 08:21:34', NULL, NULL, '2023-03-28 17:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(34, '17', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:04:07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(35, '18', NULL, 'admin', '1', '2023-03-29 08:21:38', NULL, NULL, '2023-03-28 17:04:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(36, '18', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:04:56', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(37, '19', NULL, 'admin', '1', '2023-03-29 08:21:42', NULL, NULL, '2023-03-28 17:07:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(38, '19', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:07:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(39, '20', NULL, 'admin', '1', '2023-03-29 08:21:44', NULL, NULL, '2023-03-28 17:07:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(40, '20', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:07:25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(41, '21', NULL, 'admin', '1', '2023-03-29 08:21:45', NULL, NULL, '2023-03-28 17:07:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(42, '21', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:07:29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(43, '22', NULL, 'admin', '1', '2023-03-29 08:21:47', NULL, NULL, '2023-03-28 17:07:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(44, '22', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:07:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(45, '23', NULL, 'admin', '1', '2023-03-29 08:24:40', NULL, NULL, '2023-03-28 17:07:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(46, '23', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:07:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(47, '24', NULL, 'admin', '1', '2023-03-29 08:24:42', NULL, NULL, '2023-03-28 17:23:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(48, '24', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:23:54', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(49, '25', NULL, 'admin', '1', '2023-03-29 08:24:44', NULL, NULL, '2023-03-28 17:24:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(50, '25', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:24:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(51, '26', NULL, 'admin', '1', '2023-03-29 08:24:46', NULL, NULL, '2023-03-28 17:24:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(52, '26', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:24:23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(53, '27', NULL, 'admin', '1', '2023-03-29 08:24:47', NULL, NULL, '2023-03-28 17:26:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(54, '27', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:26:49', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(55, '28', NULL, 'admin', '1', '2023-03-29 08:24:49', NULL, NULL, '2023-03-28 17:28:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(56, '28', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:28:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(57, '29', NULL, 'admin', '1', '2023-03-29 08:24:51', NULL, NULL, '2023-03-28 17:31:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(58, '29', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:31:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(59, '30', NULL, 'admin', '1', '2023-03-29 08:24:52', NULL, NULL, '2023-03-28 17:32:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(60, '30', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:32:37', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(61, '31', NULL, 'admin', '1', '2023-03-29 08:24:54', NULL, NULL, '2023-03-28 17:34:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(62, '31', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:34:12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(63, '32', NULL, 'admin', '1', '2023-03-29 08:24:56', NULL, NULL, '2023-03-28 17:34:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(64, '32', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:34:47', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(65, '33', NULL, 'admin', '1', '2023-03-29 08:24:57', NULL, NULL, '2023-03-28 17:35:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(66, '33', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:35:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(67, '34', NULL, 'admin', '1', '2023-03-29 08:24:59', NULL, NULL, '2023-03-28 17:38:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(68, '34', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:38:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(69, '35', NULL, 'admin', '1', '2023-03-29 08:25:00', NULL, NULL, '2023-03-28 17:38:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(70, '35', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:38:24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(71, '36', NULL, 'admin', '1', '2023-03-29 08:25:02', NULL, NULL, '2023-03-28 17:41:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(72, '36', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:41:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(73, '37', NULL, 'admin', '1', '2023-03-29 08:25:03', NULL, NULL, '2023-03-28 17:41:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(74, '37', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:41:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(75, '38', NULL, 'admin', '1', '2023-03-29 08:25:05', NULL, NULL, '2023-03-28 17:41:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(76, '38', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:41:50', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(77, '39', NULL, 'admin', '1', '2023-03-29 08:25:06', NULL, NULL, '2023-03-28 17:43:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(78, '39', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:43:48', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(79, '40', NULL, 'admin', '1', '2023-03-29 08:25:08', NULL, NULL, '2023-03-28 17:43:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(80, '40', NULL, 'ry', '0', NULL, NULL, NULL, '2023-03-28 17:43:58', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(81, '41', NULL, 'admin', '1', '2023-03-30 08:03:30', NULL, NULL, '2023-03-30 07:55:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(82, '41', NULL, 'juzhang', '0', NULL, NULL, NULL, '2023-03-30 07:55:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `yh_msg_record` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
