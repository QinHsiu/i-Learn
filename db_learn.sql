# Host: localhost  (Version: 5.5.53)
# Date: 2020-07-02 07:58:27
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "il_active"
#

DROP TABLE IF EXISTS `il_active`;
CREATE TABLE `il_active` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '标题',
  `thumb` varchar(255) DEFAULT NULL COMMENT '缩略图',
  `picture` varchar(255) DEFAULT NULL COMMENT '图片',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `content` text COMMENT '内容',
  `author` varchar(40) NOT NULL COMMENT '作者',
  `addtime` date DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

#
# Data for table "il_active"
#

/*!40000 ALTER TABLE `il_active` DISABLE KEYS */;
INSERT INTO `il_active` VALUES (7,'C++','','language','language++','Q','1999-01-01','2017-09-01'),(8,'Qt','NULL','language','language++','Today is very nice!','QinHsiu','2017-09-01'),(9,'QinHsiu的博客','/Public/Upload/2020-05-06/thumb_5eb2b42545501.png','/Public/Upload/2020-05-06/5eb2b42545501.png','QQ','          QQ              ','Q','2020-05-06'),(10,'关于我们','/Public/Upload/2020-05-06/thumb_5eb2b4d5de14c.png','/Public/Upload/2020-05-06/5eb2b4d5de14c.png','QQ','                        QQ','QQ','2020-05-06'),(11,'Qin','/Public/Upload/2020-05-06/thumb_5eb2b759a9210.png','/Public/Upload/2020-05-06/5eb2b759a9210.png','1213','        12313                ','qw','2020-05-06'),(12,'QinHsiu',NULL,NULL,'123','          123123              ','QW','2020-05-06'),(13,'电子商务项目实战代码','/Public/Upload/2020-05-06/thumb_5eb2b9f80011b.png','/Public/Upload/2020-05-06/5eb2b9f80011b.png','123456','    123                    ','QW','2020-05-06'),(14,'12','/Public/Upload/2020-05-06/thumb_5eb2bbf5c3b91.png','/Public/Upload/2020-05-06/5eb2bbf5c3b91.png','123','            123            ','123','2020-05-06'),(15,'123123','2020-05-06/thumb_5eb2bc8e39465.png','/Public/Upload/2020-05-06/5eb2bc8e39465.png','1231231','        313                ','123','2020-05-06'),(18,'ZB的日常','2020-05-08/thumb_5eb54ca08eeab.png','/Public/Upload/2020-05-08/5eb54ca08eeab.png','123','123','ZB','2020-05-08'),(20,'QQ','2020-06-21/thumb_5eef5be76ef45.png','/Public/Upload/2020-06-21/5eef5be76ef45.png','QQQQ','Hello We','T2','2020-06-21');
/*!40000 ALTER TABLE `il_active` ENABLE KEYS */;

#
# Structure for table "il_email"
#

DROP TABLE IF EXISTS `il_email`;
CREATE TABLE `il_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) NOT NULL COMMENT '发送者ID',
  `to_id` int(11) NOT NULL COMMENT '接收者ID',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `file` varchar(255) DEFAULT NULL COMMENT '文件',
  `hasfile` smallint(1) DEFAULT '0' COMMENT '是否有附件',
  `filename` varchar(255) DEFAULT NULL COMMENT '文件原始名',
  `content` text COMMENT '内容',
  `addtime` date DEFAULT NULL COMMENT '添加时间',
  `isread` smallint(1) DEFAULT '0' COMMENT '是否已读',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Data for table "il_email"
#

/*!40000 ALTER TABLE `il_email` DISABLE KEYS */;
INSERT INTO `il_email` VALUES (1,2,4,'QinHsiu的博客','/Public/Upload/2020-05-05/5eb0ee1249ecd.png',1,'屏幕截图(486).png','12','2020-05-05',1),(3,1,5,'办理VIP成功','/Public/Upload/2020-05-09/5eb6a73040e64.txt',1,'hosts.txt','I-Learn欢迎你！','2020-05-09',1),(4,3,1,'辞职信','/Public/Upload/2020-05-09/5eb6aa39bd68d.txt',1,'hosts.txt','裸辞！','2020-05-09',0),(5,4,3,'一起辞职','/Public/Upload/2020-05-09/5eb6ab14520fe.txt',1,'hosts.txt','裸辞！！！！','2020-05-09',0),(6,2,1,'cizhi1','/Public/Upload/2020-05-09/5eb6b700a5825.txt',1,'hosts.txt','cizhi','2020-05-09',0),(7,6,5,'Q','/Public/Upload/2020-06-08/5ede24b507000.txt',1,'hosts.txt','Q','2020-06-08',1),(8,5,1,'关于我们','/Public/Upload/2020-06-21/5eef5c4081795.txt',1,'hosts.txt','Heell I-Learn','2020-06-21',0),(9,5,9,'Bioa','/Public/Upload/2020-07-01/5efc596e1f355.txt',1,'hosts.txt','hello','2020-07-01',0),(10,2,1,'QQQQQ','/Public/Upload/2020-07-01/5efc5ab161ced.txt',1,'hosts.txt','QQ','2020-07-01',0);
/*!40000 ALTER TABLE `il_email` ENABLE KEYS */;

#
# Structure for table "il_notice"
#

DROP TABLE IF EXISTS `il_notice`;
CREATE TABLE `il_notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL COMMENT '公文标题',
  `filepath` varchar(255) DEFAULT NULL COMMENT '附件存储路径',
  `filename` varchar(255) DEFAULT NULL COMMENT '附件原名',
  `hasfile` smallint(1) DEFAULT '0' COMMENT '是否存在附件',
  `content` text COMMENT '公文内容',
  `author` varchar(40) NOT NULL COMMENT '作者',
  `addtime` date DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "il_notice"
#

/*!40000 ALTER TABLE `il_notice` DISABLE KEYS */;
INSERT INTO `il_notice` VALUES (2,'通知01','/Public/Upload/2020-05-09/5eb69f48ad4d0.sql','移动办公自动化系统.sql',1,'第一份通知','QinHsiu','2020-05-09'),(4,'I-Learn','/Public/Upload/2020-06-21/5eef5cef98a2e.sql','移动办公自动化系统.sql',1,'I-Earn','ZSX','2020-06-21'),(5,'QQQQ','/Public/Upload/2020-07-01/5efc59e9783b8.sql','移动办公自动化系统.sql',1,'QQQ','ZSX','2020-07-01'),(6,'QQQQQQ','/Public/Upload/2020-07-01/5efc5b2719140.png','屏幕截图(665).png',1,'hello','QinHsiu','2020-07-01');
/*!40000 ALTER TABLE `il_notice` ENABLE KEYS */;

#
# Structure for table "il_user"
#

DROP TABLE IF EXISTS `il_user`;
CREATE TABLE `il_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` char(32) NOT NULL,
  `truename` varchar(40) DEFAULT NULL,
  `nickname` varchar(50) DEFAULT NULL,
  `sex` varchar(10) NOT NULL,
  `birthday` date NOT NULL,
  `tel` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `addtime` date DEFAULT NULL,
  `role_id` int(11) DEFAULT '3',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `tel` (`tel`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

#
# Data for table "il_user"
#

/*!40000 ALTER TABLE `il_user` DISABLE KEYS */;
INSERT INTO `il_user` VALUES (1,'QinHsiu','root','QXY','Qxy','boy','1999-01-01','13594359171','179928370@qq.com','2020-06-21',0),(2,'ZSX','123456','ZSX','ZSX','boy','1999-01-01','13594359170','2278552@qq.com','2017-09-01',1),(3,'ZB','123456','ZB','ZB','boy','1999-01-01','16602','2354234234@qq.com','2020-05-06',1),(4,'YZD','123456','YZD','YZD','boy','1999-01-01','13594359177','2278552852@qq.com','2017-09-01',1),(5,'T2','123456','T2','t2','boy','1999-01-01','1359435912','2278552858@qq.com','2020-05-09',2),(6,'T3','QQQQQ','T3','t3','boy','1999-01-01','12412515','124124@qq.com','2020-07-01',2),(9,'Q','root','QinHisu','QinHSou','boy','2017-02-01','13594359111','1233@qq.com','2020-06-21',2),(11,'Qin','123456','QinHhH','QinHSiu','boy','2017-05-06','112234234','2244@qq.com','2020-06-21',3),(12,'QQQQ','123124124','12414','12414124','boy','2017-05-06','12412412414','124142qq.com','2020-07-01',3),(13,'QinHsu1','124124214','权限','124142','boy','2017-05-05','12414455','1241242qq.com','2020-07-01',3);
/*!40000 ALTER TABLE `il_user` ENABLE KEYS */;
