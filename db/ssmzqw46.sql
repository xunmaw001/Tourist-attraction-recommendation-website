-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmzqw46
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609739400819 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (81,'2021-01-04 03:13:48',1,1,'提问1','回复1',1),(82,'2021-01-04 03:13:48',2,2,'提问2','回复2',2),(83,'2021-01-04 03:13:48',3,3,'提问3','回复3',3),(84,'2021-01-04 03:13:48',4,4,'提问4','回复4',4),(85,'2021-01-04 03:13:48',5,5,'提问5','回复5',5),(86,'2021-01-04 03:13:48',6,6,'提问6','回复6',6),(1609730476520,'2021-01-04 03:21:16',1609730137212,NULL,'电饭锅地方花港饭店很反感',NULL,0),(1609730786740,'2021-01-04 03:26:26',1609730137212,1,NULL,'发多少刚发的广东佛山规定',0),(1609739016171,'2021-01-04 05:43:35',1609730137212,NULL,'发过的回防高地花港饭店',NULL,0),(1609739400818,'2021-01-04 05:49:59',1609730137212,1,NULL,'对方过后梵蒂冈和豆腐干回复大概回复',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmzqw46/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmzqw46/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmzqw46/upload/picture3.jpg'),(6,'homepage',NULL),(7,'首页轮播图上传的地方','http://localhost:8080/ssmzqw46/upload/1609730823451.jpg'),(8,'首页轮播图上传的地方','http://localhost:8080/ssmzqw46/upload/1609739426971.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjingdianxinxi`
--

DROP TABLE IF EXISTS `discussjingdianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609738890740 DEFAULT CHARSET=utf8 COMMENT='景点信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjingdianxinxi`
--

LOCK TABLES `discussjingdianxinxi` WRITE;
/*!40000 ALTER TABLE `discussjingdianxinxi` DISABLE KEYS */;
INSERT INTO `discussjingdianxinxi` VALUES (121,'2021-01-04 03:13:48',1,1,'评论内容1','回复内容1'),(122,'2021-01-04 03:13:48',2,2,'评论内容2','回复内容2'),(123,'2021-01-04 03:13:48',3,3,'评论内容3','回复内容3'),(124,'2021-01-04 03:13:48',4,4,'评论内容4','回复内容4'),(125,'2021-01-04 03:13:48',5,5,'评论内容5','回复内容5'),(126,'2021-01-04 03:13:48',6,6,'评论内容6','回复内容6'),(1609738890739,'2021-01-04 05:41:30',1609730297791,1609730137212,'fd dfsh发给很反感结果符合就很过分',NULL);
/*!40000 ALTER TABLE `discussjingdianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discussjiudianxinxi`
--

DROP TABLE IF EXISTS `discussjiudianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discussjiudianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609738929914 DEFAULT CHARSET=utf8 COMMENT='酒店信息评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discussjiudianxinxi`
--

LOCK TABLES `discussjiudianxinxi` WRITE;
/*!40000 ALTER TABLE `discussjiudianxinxi` DISABLE KEYS */;
INSERT INTO `discussjiudianxinxi` VALUES (131,'2021-01-04 03:13:48',1,1,'评论内容1','回复内容1'),(132,'2021-01-04 03:13:48',2,2,'评论内容2','回复内容2'),(133,'2021-01-04 03:13:48',3,3,'评论内容3','回复内容3'),(134,'2021-01-04 03:13:48',4,4,'评论内容4','回复内容4'),(135,'2021-01-04 03:13:48',5,5,'评论内容5','回复内容5'),(136,'2021-01-04 03:13:48',6,6,'评论内容6','回复内容6'),(1609738929913,'2021-01-04 05:42:09',1609730336471,1609730137212,'对方过后刚发的回防高地回防高地',NULL);
/*!40000 ALTER TABLE `discussjiudianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609738950656 DEFAULT CHARSET=utf8 COMMENT='论坛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (91,'2021-01-04 03:13:48','帖子标题1','帖子内容1',1,1,'用户名1','开放'),(92,'2021-01-04 03:13:48','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(93,'2021-01-04 03:13:48','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(94,'2021-01-04 03:13:48','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(95,'2021-01-04 03:13:48','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(96,'2021-01-04 03:13:48','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1609730463617,'2021-01-04 03:21:03','放到很反感很反感回防高地很过分','<p>请输入 恢复规划法规回防高地很反感回复的内容</p>',0,1609730137212,'123','开放'),(1609738950655,'2021-01-04 05:42:30','梵蒂冈恢复规划发过的回防高地','<p>发多少花港饭店回复股东会刚发的花港饭店回防高地</p>',0,1609730137212,'123','开放');
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingdianfenlei`
--

DROP TABLE IF EXISTS `jingdianfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingdianfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianleixing` varchar(200) DEFAULT NULL COMMENT '景点类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609739207449 DEFAULT CHARSET=utf8 COMMENT='景点分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingdianfenlei`
--

LOCK TABLES `jingdianfenlei` WRITE;
/*!40000 ALTER TABLE `jingdianfenlei` DISABLE KEYS */;
INSERT INTO `jingdianfenlei` VALUES (11,'2021-01-04 03:13:48','景点类型1'),(12,'2021-01-04 03:13:48','景点类型2'),(13,'2021-01-04 03:13:48','景点类型3'),(14,'2021-01-04 03:13:48','景点类型4'),(15,'2021-01-04 03:13:48','景点类型5'),(16,'2021-01-04 03:13:48','景点类型6'),(1609730580695,'2021-01-04 03:23:00','景点类型7'),(1609739207448,'2021-01-04 05:46:47','景点类型8');
/*!40000 ALTER TABLE `jingdianfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingdiangoupiao`
--

DROP TABLE IF EXISTS `jingdiangoupiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingdiangoupiao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianbianhao` varchar(200) DEFAULT NULL COMMENT '景点编号',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `piaojia` varchar(200) DEFAULT NULL COMMENT '票价',
  `goumaishuliang` varchar(200) DEFAULT NULL COMMENT '购买数量',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609738877403 DEFAULT CHARSET=utf8 COMMENT='景点购票';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingdiangoupiao`
--

LOCK TABLES `jingdiangoupiao` WRITE;
/*!40000 ALTER TABLE `jingdiangoupiao` DISABLE KEYS */;
INSERT INTO `jingdiangoupiao` VALUES (31,'2021-01-04 03:13:48','景点编号1','景点名称1','票价1','购买数量1','总价格1','账号1','姓名1','020-89819991','未支付'),(32,'2021-01-04 03:13:48','景点编号2','景点名称2','票价2','购买数量2','总价格2','账号2','姓名2','020-89819992','未支付'),(33,'2021-01-04 03:13:48','景点编号3','景点名称3','票价3','购买数量3','总价格3','账号3','姓名3','020-89819993','未支付'),(34,'2021-01-04 03:13:48','景点编号4','景点名称4','票价4','购买数量4','总价格4','账号4','姓名4','020-89819994','未支付'),(35,'2021-01-04 03:13:48','景点编号5','景点名称5','票价5','购买数量5','总价格5','账号5','姓名5','020-89819995','未支付'),(36,'2021-01-04 03:13:48','景点编号6','景点名称6','票价6','购买数量6','总价格6','账号6','姓名6','020-89819996','未支付'),(1609730409702,'2021-01-04 03:20:09','1609730267491','福建土楼','180','2','360','123','发发','13455667766','已支付'),(1609738877402,'2021-01-04 05:41:16','1609730267491','福建土楼','180','2','360','123','发发','13455654455','已支付');
/*!40000 ALTER TABLE `jingdiangoupiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jingdianxinxi`
--

DROP TABLE IF EXISTS `jingdianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jingdianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jingdianbianhao` varchar(200) DEFAULT NULL COMMENT '景点编号',
  `jingdianmingcheng` varchar(200) DEFAULT NULL COMMENT '景点名称',
  `jingdianleixing` varchar(200) DEFAULT NULL COMMENT '景点类型',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `kaifangshijian` varchar(200) DEFAULT NULL COMMENT '开放时间',
  `piaojia` varchar(200) DEFAULT NULL COMMENT '票价',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `jingdianjieshao` longtext COMMENT '景点介绍',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jingdianbianhao` (`jingdianbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1609739261592 DEFAULT CHARSET=utf8 COMMENT='景点信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jingdianxinxi`
--

LOCK TABLES `jingdianxinxi` WRITE;
/*!40000 ALTER TABLE `jingdianxinxi` DISABLE KEYS */;
INSERT INTO `jingdianxinxi` VALUES (21,'2021-01-04 03:13:48','景点编号1','景点名称1','景点类型1','http://localhost:8080/ssmzqw46/upload/jingdianxinxi_tupian1.jpg','开放时间1','票价1','地址1','景点介绍1',1,1),(22,'2021-01-04 03:13:48','景点编号2','景点名称2','景点类型2','http://localhost:8080/ssmzqw46/upload/jingdianxinxi_tupian2.jpg','开放时间2','票价2','地址2','景点介绍2',2,2),(23,'2021-01-04 03:13:48','景点编号3','景点名称3','景点类型3','http://localhost:8080/ssmzqw46/upload/jingdianxinxi_tupian3.jpg','开放时间3','票价3','地址3','景点介绍3',3,3),(24,'2021-01-04 03:13:48','景点编号4','景点名称4','景点类型4','http://localhost:8080/ssmzqw46/upload/jingdianxinxi_tupian4.jpg','开放时间4','票价4','地址4','景点介绍4',4,4),(25,'2021-01-04 03:13:48','景点编号5','景点名称5','景点类型5','http://localhost:8080/ssmzqw46/upload/jingdianxinxi_tupian5.jpg','开放时间5','票价5','地址5','景点介绍5',5,5),(26,'2021-01-04 03:13:48','景点编号6','景点名称6','景点类型6','http://localhost:8080/ssmzqw46/upload/jingdianxinxi_tupian6.jpg','开放时间6','票价6','地址6','景点介绍6',6,6),(1609730297791,'2021-01-04 03:18:16','1609730267491','福建土楼','景点类型1','http://localhost:8080/ssmzqw46/upload/1609730273137.jpg','8:00-18:00','180','士大夫刚发的很反感hgf','<p> 几个号高考后即可回家</p><p>发给法规环境规划讲话稿规范金刚护法几个号<img src=\"http://localhost:8080/ssmzqw46/upload/1609730295020.jpg\"></p>',1,1),(1609730642496,'2021-01-04 03:24:01','1609730595872','鼓浪屿','景点类型3','http://localhost:8080/ssmzqw46/upload/1609730602479.jpeg','全天','50','福建省厦门市鼓浪屿','<p>梵蒂冈回防高地回防高地回防高地回防高地回防高地</p><p>第三方工会发的回防高地很反感很反感很反感很反感很反感</p><p><img src=\"http://localhost:8080/ssmzqw46/upload/1609730640658.jpeg\"></p>',0,0),(1609739261591,'2021-01-04 05:47:41','1609739221953','电饭锅交付给金刚护法','景点类型7','http://localhost:8080/ssmzqw46/upload/1609739230829.jpg','全天','288','福建省手打发送到广东佛山花港饭店','<p>梵蒂冈回防高地和规范化法国动画发过的回防高地</p><p><img src=\"http://localhost:8080/ssmzqw46/upload/1609739258870.jpg\"></p>',0,0);
/*!40000 ALTER TABLE `jingdianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiudianfenlei`
--

DROP TABLE IF EXISTS `jiudianfenlei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiudianfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiudianleixing` varchar(200) DEFAULT NULL COMMENT '酒店类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609739284791 DEFAULT CHARSET=utf8 COMMENT='酒店分类';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiudianfenlei`
--

LOCK TABLES `jiudianfenlei` WRITE;
/*!40000 ALTER TABLE `jiudianfenlei` DISABLE KEYS */;
INSERT INTO `jiudianfenlei` VALUES (41,'2021-01-04 03:13:48','酒店类型1'),(42,'2021-01-04 03:13:48','酒店类型2'),(43,'2021-01-04 03:13:48','酒店类型3'),(44,'2021-01-04 03:13:48','酒店类型4'),(45,'2021-01-04 03:13:48','酒店类型5'),(46,'2021-01-04 03:13:48','酒店类型6'),(1609730664238,'2021-01-04 03:24:24','商务酒店'),(1609739284778,'2021-01-04 05:48:04','星级酒店'),(1609739284790,'2021-01-04 05:48:04','星级酒店');
/*!40000 ALTER TABLE `jiudianfenlei` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiudianxinxi`
--

DROP TABLE IF EXISTS `jiudianxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiudianxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiudianbianhao` varchar(200) DEFAULT NULL COMMENT '酒店编号',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `jiudianleixing` varchar(200) DEFAULT NULL COMMENT '酒店类型',
  `fangxing` varchar(200) DEFAULT NULL COMMENT '房型',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `jiudianjieshao` longtext COMMENT '酒店介绍',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiudianbianhao` (`jiudianbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1609739322715 DEFAULT CHARSET=utf8 COMMENT='酒店信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiudianxinxi`
--

LOCK TABLES `jiudianxinxi` WRITE;
/*!40000 ALTER TABLE `jiudianxinxi` DISABLE KEYS */;
INSERT INTO `jiudianxinxi` VALUES (51,'2021-01-04 03:13:48','酒店编号1','酒店名称1','酒店类型1','房型1','价格1','http://localhost:8080/ssmzqw46/upload/jiudianxinxi_tupian1.jpg','酒店介绍1'),(52,'2021-01-04 03:13:48','酒店编号2','酒店名称2','酒店类型2','房型2','价格2','http://localhost:8080/ssmzqw46/upload/jiudianxinxi_tupian2.jpg','酒店介绍2'),(53,'2021-01-04 03:13:48','酒店编号3','酒店名称3','酒店类型3','房型3','价格3','http://localhost:8080/ssmzqw46/upload/jiudianxinxi_tupian3.jpg','酒店介绍3'),(54,'2021-01-04 03:13:48','酒店编号4','酒店名称4','酒店类型4','房型4','价格4','http://localhost:8080/ssmzqw46/upload/jiudianxinxi_tupian4.jpg','酒店介绍4'),(55,'2021-01-04 03:13:48','酒店编号5','酒店名称5','酒店类型5','房型5','价格5','http://localhost:8080/ssmzqw46/upload/jiudianxinxi_tupian5.jpg','酒店介绍5'),(56,'2021-01-04 03:13:48','酒店编号6','酒店名称6','酒店类型6','房型6','价格6','http://localhost:8080/ssmzqw46/upload/jiudianxinxi_tupian6.jpg','酒店介绍6'),(1609730336471,'2021-01-04 03:18:55','1609730313008','美好大酒店','酒店类型1','大床房','188','http://localhost:8080/ssmzqw46/upload/1609730324264.jpg','<p>地方很反感结果符合金刚护法几个号交付给鸡飞狗叫法国动画</p><p>第三方回复股东会发过的很反感很反感很反感回防高地</p><p>电风扇很反感回防高地很反感</p>'),(1609730708083,'2021-01-04 03:25:07','1609730680643','苍生大酒店','商务酒店','单人房','199','http://localhost:8080/ssmzqw46/upload/1609730701044.jpg','<p>点事给对方回防高地很反感很过分几个号几个号</p><p>第三方给对方食发鬼hfg</p>'),(1609739322714,'2021-01-04 05:48:42','1609739298551','美丽大酒店','商务酒店','套房','188','http://localhost:8080/ssmzqw46/upload/1609739317938.jpg','<p>第三方很反感和豆腐干很过分讲话稿</p><p><br></p>');
/*!40000 ALTER TABLE `jiudianxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiudianyuding`
--

DROP TABLE IF EXISTS `jiudianyuding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiudianyuding` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiudianbianhao` varchar(200) DEFAULT NULL COMMENT '酒店编号',
  `jiudianmingcheng` varchar(200) DEFAULT NULL COMMENT '酒店名称',
  `fangxing` varchar(200) DEFAULT NULL COMMENT '房型',
  `jiage` varchar(200) DEFAULT NULL COMMENT '价格',
  `yudingtianshu` varchar(200) DEFAULT NULL COMMENT '预订天数',
  `zongjiage` varchar(200) DEFAULT NULL COMMENT '总价格',
  `ruzhuriqi` date DEFAULT NULL COMMENT '入住日期',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609738921883 DEFAULT CHARSET=utf8 COMMENT='酒店预订';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiudianyuding`
--

LOCK TABLES `jiudianyuding` WRITE;
/*!40000 ALTER TABLE `jiudianyuding` DISABLE KEYS */;
INSERT INTO `jiudianyuding` VALUES (61,'2021-01-04 03:13:48','酒店编号1','酒店名称1','房型1','价格1','预订天数1','总价格1','2021-01-04','账号1','姓名1','020-89819991','未支付'),(62,'2021-01-04 03:13:48','酒店编号2','酒店名称2','房型2','价格2','预订天数2','总价格2','2021-01-04','账号2','姓名2','020-89819992','未支付'),(63,'2021-01-04 03:13:48','酒店编号3','酒店名称3','房型3','价格3','预订天数3','总价格3','2021-01-04','账号3','姓名3','020-89819993','未支付'),(64,'2021-01-04 03:13:48','酒店编号4','酒店名称4','房型4','价格4','预订天数4','总价格4','2021-01-04','账号4','姓名4','020-89819994','未支付'),(65,'2021-01-04 03:13:48','酒店编号5','酒店名称5','房型5','价格5','预订天数5','总价格5','2021-01-04','账号5','姓名5','020-89819995','未支付'),(66,'2021-01-04 03:13:48','酒店编号6','酒店名称6','房型6','价格6','预订天数6','总价格6','2021-01-04','账号6','姓名6','020-89819996','未支付'),(1609730435317,'2021-01-04 03:20:34','1609730313008','美好大酒店','大床房','188','1','188','2021-01-04','123','发发','13433221122','已支付'),(1609738921882,'2021-01-04 05:42:01','1609730313008','美好大酒店','大床房','188','1','188','2021-01-04','123','发发','13566776655','已支付');
/*!40000 ALTER TABLE `jiudianyuding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609739378013 DEFAULT CHARSET=utf8 COMMENT='旅游资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (111,'2021-01-04 03:13:48','标题1','http://localhost:8080/ssmzqw46/upload/news_picture1.jpg','内容1'),(112,'2021-01-04 03:13:48','标题2','http://localhost:8080/ssmzqw46/upload/news_picture2.jpg','内容2'),(113,'2021-01-04 03:13:48','标题3','http://localhost:8080/ssmzqw46/upload/news_picture3.jpg','内容3'),(114,'2021-01-04 03:13:48','标题4','http://localhost:8080/ssmzqw46/upload/news_picture4.jpg','内容4'),(115,'2021-01-04 03:13:48','标题5','http://localhost:8080/ssmzqw46/upload/news_picture5.jpg','内容5'),(116,'2021-01-04 03:13:48','标题6','http://localhost:8080/ssmzqw46/upload/news_picture6.jpg','内容6'),(1609730759602,'2021-01-04 03:25:59','福建景点推荐，你不得催过的阿萨德发多少积分多少','http://localhost:8080/ssmzqw46/upload/1609730752666.jpg','<p>第三方刚发的上官府邸很反感很反感金刚护法</p><p>发更多回复大概回防高地很反感</p>'),(1609739378012,'2021-01-04 05:49:37','福建旅游。你不得不知道的事广东佛山刚发的','http://localhost:8080/ssmzqw46/upload/1609739371522.jpg','<p>割发代首换个地方施工方工号巨化股份结果符合结果符合</p><p><br></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1609738931183 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1609730440190,'2021-01-04 03:20:39',1609730137212,1609730336471,'jiudianxinxi','美好大酒店','http://localhost:8080/ssmzqw46/upload/1609730324264.jpg'),(1609730447308,'2021-01-04 03:20:46',1609730137212,1609730297791,'jingdianxinxi','福建土楼','http://localhost:8080/ssmzqw46/upload/1609730273137.jpg'),(1609738894852,'2021-01-04 05:41:34',1609730137212,1609730297791,'jingdianxinxi','福建土楼','http://localhost:8080/ssmzqw46/upload/1609730273137.jpg'),(1609738931182,'2021-01-04 05:42:10',1609730137212,1609730336471,'jiudianxinxi','美好大酒店','http://localhost:8080/ssmzqw46/upload/1609730324264.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1609730137212,'123','yonghu','用户','5tvoiksfx3mmfkix1d94qb1kbz761sqc','2021-01-04 03:15:43','2021-01-04 06:39:03'),(2,1,'abo','users','管理员','5mobr4qieignvkozwv3omev3k23enr8o','2021-01-04 03:17:08','2021-01-04 06:46:29'),(3,1609739468273,'567','yonghu','用户','g8ugt9lkpk85c3cdolj2dqnn5tgn7lo1','2021-01-04 05:51:17','2021-01-04 06:51:17');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-04 03:13:48');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `beizhu` longtext COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1609739468274 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (71,'2021-01-04 03:13:48','用户1','123456','姓名1','男','13823888881','773890001@qq.com','440300199101010001','http://localhost:8080/ssmzqw46/upload/yonghu_zhaopian1.jpg','备注1'),(72,'2021-01-04 03:13:48','用户2','123456','姓名2','男','13823888882','773890002@qq.com','440300199202020002','http://localhost:8080/ssmzqw46/upload/yonghu_zhaopian2.jpg','备注2'),(73,'2021-01-04 03:13:48','用户3','123456','姓名3','男','13823888883','773890003@qq.com','440300199303030003','http://localhost:8080/ssmzqw46/upload/yonghu_zhaopian3.jpg','备注3'),(74,'2021-01-04 03:13:48','用户4','123456','姓名4','男','13823888884','773890004@qq.com','440300199404040004','http://localhost:8080/ssmzqw46/upload/yonghu_zhaopian4.jpg','备注4'),(75,'2021-01-04 03:13:48','用户5','123456','姓名5','男','13823888885','773890005@qq.com','440300199505050005','http://localhost:8080/ssmzqw46/upload/yonghu_zhaopian5.jpg','备注5'),(76,'2021-01-04 03:13:48','用户6','123456','姓名6','男','13823888886','773890006@qq.com','440300199606060006','http://localhost:8080/ssmzqw46/upload/yonghu_zhaopian6.jpg','备注6'),(1609730137212,'2021-01-04 03:15:37','123','123','发发','男','13455665544','34534@qq.com','123234543456654567','http://localhost:8080/ssmzqw46/upload/1609738994942.jpg',''),(1609731008410,'2021-01-04 03:30:08','234','234','地方',NULL,'13455667766','22323423@qq.com','223344554433445544',NULL,NULL),(1609739468273,'2021-01-04 05:51:08','567','567','发股份',NULL,'13566778899','34534534@qq.com','334455667788776677',NULL,NULL);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-04 16:58:40
