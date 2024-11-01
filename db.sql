/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - kehuguanlixitong
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kehuguanlixitong` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `kehuguanlixitong`;

/*Table structure for table `chuqin` */

DROP TABLE IF EXISTS `chuqin`;

CREATE TABLE `chuqin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `today` varchar(200) DEFAULT NULL COMMENT '打卡日期',
  `on_time` timestamp NULL DEFAULT NULL COMMENT '上班打卡时间',
  `down_time` timestamp NULL DEFAULT NULL COMMENT '下班打卡时间',
  `chuqin_types` int(11) DEFAULT NULL COMMENT '打卡类型  ',
  `overtimeNumber` int(11) DEFAULT NULL COMMENT '加班时间(小时)',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='考勤';

/*Data for the table `chuqin` */

insert  into `chuqin`(`id`,`yonghu_id`,`today`,`on_time`,`down_time`,`chuqin_types`,`overtimeNumber`,`create_time`) values (1,1,'2021-03-15','2021-03-15 10:24:53',NULL,6,NULL,'2021-03-15 10:24:53'),(3,2,'2021-03-15',NULL,'2021-03-15 10:32:38',2,NULL,NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字   ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-13 21:14:51'),(2,'sex_types','性别',2,'女',NULL,'2021-03-13 21:14:51'),(3,'politics_types','政治面貌',1,'群众',NULL,'2021-03-13 21:14:51'),(4,'politics_types','政治面貌',2,'党员',NULL,'2021-03-13 21:14:51'),(5,'diqu_types','地区',1,'广东珠三角地区',NULL,'2021-03-13 21:14:51'),(6,'diqu_types','地区',2,'粤东地区',NULL,'2021-03-13 21:14:52'),(7,'diqu_types','地区',3,'粤西地区',NULL,'2021-03-13 21:14:52'),(8,'diqu_types','地区',4,'粤北地区',NULL,'2021-03-13 21:14:52'),(9,'biaoqian_types','标签',1,'吝啬',NULL,'2021-03-13 21:14:52'),(10,'biaoqian_types','标签',2,'大方',NULL,'2021-03-13 21:14:52'),(11,'biaoqian_types','标签',3,'事情多',NULL,'2021-03-13 21:14:52'),(12,'biaoqian_types','标签',4,'有钱',NULL,'2021-03-13 21:14:52'),(13,'biaoqian_types','标签',5,'穷鬼',NULL,'2021-03-13 21:14:52'),(14,'chuqin_types','打卡类型',1,'正常打卡',NULL,'2021-03-13 21:14:52'),(15,'chuqin_types','打卡类型',2,'未打上班卡',NULL,'2021-03-13 21:14:52'),(16,'chuqin_types','打卡类型',3,'未打下班卡',NULL,'2021-03-13 21:14:52'),(17,'chuqin_types','打卡类型',4,'缺勤',NULL,'2021-03-13 21:14:52'),(18,'chuqin_types','打卡类型',5,'加班',NULL,'2021-03-13 21:14:52'),(19,'chuqin_types','打卡类型',6,'迟到',NULL,'2021-03-13 21:14:52'),(20,'chuqin_types','打卡类型',7,'早退',NULL,'2021-03-13 21:14:52'),(23,'biaoqian_types','标签',6,'标签6',NULL,'2021-03-15 11:26:52'),(24,'diqu_types','地区',5,'撒  ',NULL,'2021-03-15 11:28:20');

/*Table structure for table `kehu` */

DROP TABLE IF EXISTS `kehu`;

CREATE TABLE `kehu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别   ',
  `my_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `birthplace` varchar(200) DEFAULT NULL COMMENT '地址',
  `kehu_content` varchar(200) DEFAULT NULL COMMENT '备注',
  `diqu_types` int(11) DEFAULT NULL COMMENT '地区',
  `biaoqian_types` int(11) DEFAULT NULL COMMENT '标签   ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='客户';

/*Data for the table `kehu` */

insert  into `kehu`(`id`,`name`,`phone`,`youxiang`,`id_number`,`sex_types`,`my_photo`,`nation`,`politics_types`,`birthplace`,`kehu_content`,`diqu_types`,`biaoqian_types`,`insert_time`,`create_time`) values (1,'张毅','17703789991','22@.com','410224199610232011',2,'http://localhost:8080/kehuguanlixitong/file/download?fileName=1615642059515.jpg','汉',1,'审犯罪','用户 张毅的备注\r\n',4,5,'2021-03-13 21:28:28','2021-03-13 21:28:28'),(2,'张二','17703789992','2@qq.com','410224199610232012',2,'http://localhost:8080/kehuguanlixitong/file/download?fileName=1615642212046.jpg','汉',1,'浙江杭州','张二的备注\r\n',4,5,'2021-03-13 21:30:28','2021-03-13 21:30:28'),(3,'张三','17703789993','8787@qq.com','410224199610232013',2,'http://localhost:8080/kehuguanlixitong/file/download?fileName=1615642261783.jpg','维吾尔族',2,'河南郑州','张三的备注\r\n',2,4,'2021-03-13 21:31:57','2021-03-13 21:31:57'),(4,'张四','17703789994','87@qq.com','410224199610232014',1,'http://localhost:8080/kehuguanlixitong/file/download?fileName=1615642506852.jpg','苗族',2,'河南洛阳','张思的备注\r\n',3,3,'2021-03-13 21:35:54','2021-03-13 21:35:54'),(5,'张五','17703789995','22@qq.com','410224199610232015',2,'http://localhost:8080/kehuguanlixitong/file/download?fileName=1615778676403.jpg','汉',1,'浙江温州','客户张五的详情\r\n',3,3,'2021-03-15 11:25:24','2021-03-15 11:25:24'),(6,'张6','17703789996','22@qq.com','410224199610232016',2,'http://localhost:8080/kehuguanlixitong/file/download?fileName=1615778936946.jpg','汉',2,'河南开封1','张六的备注\r\n',5,6,'2021-03-15 11:29:17','2021-03-15 11:29:17');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','kmdt08x4x7fuua0wnsfcv3uojzjhexwl','2021-03-13 21:19:51','2021-03-15 12:22:20'),(2,1,'a1','yonghu','用户','ymvc5sige52l9pz5ur5uchahcnf5sbf0','2021-03-13 21:38:44','2021-03-15 12:31:01'),(3,2,'a2','yonghu','用户','3tci4ed98h0nfs33ij98y2sy3mr6lom7','2021-03-15 10:25:26','2021-03-15 11:32:21');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题 Search',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` longtext COMMENT '内容',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`neirong`,`riqi`) values (1,'2021-03-13 21:14:51','日常公告','日常公告','公告信息','2021-03-13 21:14:51'),(2,'2021-03-13 21:14:51','紧急公告','紧急公告','公告信息','2021-03-13 21:14:51'),(4,'2021-03-15 11:26:21','撒啊','紧急公告','3..3344','2021-03-15 11:26:21');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别  ',
  `my_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `birthplace` varchar(200) DEFAULT NULL COMMENT '籍贯',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`name`,`phone`,`id_number`,`sex_types`,`my_photo`,`nation`,`politics_types`,`birthplace`,`create_time`) values (1,'a1','123456','a1','17703789991','410224199610232011',2,'http://localhost:8080/kehuguanlixitong/file/download?fileName=1615641626055.jpg','汉',1,'北京','2021-03-13 21:20:32'),(2,'a2','123456','a2','17703789992','410224199610232012',2,'http://localhost:8080/kehuguanlixitong/file/download?fileName=1615641652339.jpg','汉',2,'审犯罪','2021-03-13 21:20:56'),(3,'a3','123456','a3','17703789993','410224199610232013',1,'http://localhost:8080/kehuguanlixitong/file/download?fileName=1615641679529.jpg','汉',1,'审犯罪','2021-03-13 21:21:25'),(4,'a4','123456','张4','17703789994','410224199610232014',2,'http://localhost:8080/kehuguanlixitong/file/download?fileName=1615778600684.jpg','汉',1,'浙江杭州','2021-03-15 11:23:53');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
