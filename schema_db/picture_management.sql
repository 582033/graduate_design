-- MySQL dump 10.13  Distrib 5.5.28, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: picture_management
-- ------------------------------------------------------
-- Server version	5.5.28-0ubuntu0.12.10.2

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `category_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(128) DEFAULT NULL COMMENT '类别名称',
  `status` tinyint(4) DEFAULT '1' COMMENT '类别状态;0禁用,1启用',
  PRIMARY KEY (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'生活随想',1),(2,'动漫美图',1);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pictures`
--

DROP TABLE IF EXISTS `pictures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pictures` (
  `id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(128) DEFAULT NULL,
  `topic_id` mediumint(9) NOT NULL COMMENT '所属专辑id',
  `status` tinyint(4) DEFAULT '1' COMMENT '图片是否可见',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pictures`
--

LOCK TABLES `pictures` WRITE;
/*!40000 ALTER TABLE `pictures` DISABLE KEYS */;
INSERT INTO `pictures` VALUES (1,'http://himg2.huanqiu.com/attachment2010/120608/zip1339117300/1339117300_0.jpg',1,1),(2,'http://lerlop.com/wp-content/gallery/minyoung-seokyun-wedding/image-0001.jpg',2,1),(3,'http://lerlop.com/wp-content/gallery/minyoung-seokyun-wedding/image-0002.jpg',2,1),(4,'http://lerlop.com/wp-content/gallery/minyoung-seokyun-wedding/image-0003.jpg',2,1),(5,'http://lerlop.com/wp-content/gallery/minyoung-seokyun-wedding/image-0004.jpg',2,1),(6,'http://lerlop.com/wp-content/gallery/minyoung-seokyun-wedding/image-0005.jpg',2,1),(7,'http://lerlop.com/wp-content/gallery/minyoung-seokyun-wedding/image-0006.jpg',2,1),(8,'http://lerlop.com/wp-content/gallery/minyoung-seokyun-wedding/image-0007.jpg',2,1),(9,'http://lerlop.com/wp-content/gallery/minyoung-seokyun-wedding/image-0008.jpg',2,1),(10,'http://lerlop.com/wp-content/gallery/minyoung-seokyun-wedding/image-0009.jpg',2,1),(11,'http://lerlop.com/wp-content/gallery/minyoung-seokyun-wedding/image-00010.jpg',2,1),(12,'http://lerlop.com/wp-content/gallery/minyoung-seokyun-wedding/image-00011.jpg',2,1),(13,'http://lerlop.com/wp-content/gallery/minyoung-seokyun-wedding/image-00012.jpg',2,1),(14,'http://lerlop.com/wp-content/gallery/switzerland-berner-oberland/image-0001.jpg',3,1),(15,'http://lerlop.com/wp-content/gallery/switzerland-berner-oberland/image-0002.jpg',3,1),(16,'http://lerlop.com/wp-content/gallery/switzerland-berner-oberland/image-0003.jpg',3,1),(17,'http://lerlop.com/wp-content/gallery/switzerland-berner-oberland/image-0004.jpg',3,1),(18,'http://lerlop.com/wp-content/gallery/switzerland-berner-oberland/image-0005.jpg',3,1),(19,'http://lerlop.com/wp-content/gallery/switzerland-berner-oberland/image-0006.jpg',3,1),(20,'http://lerlop.com/wp-content/gallery/switzerland-berner-oberland/image-0007.jpg',3,1),(21,'http://lerlop.com/wp-content/gallery/switzerland-berner-oberland/image-0008.jpg',3,1),(22,'http://lerlop.com/wp-content/gallery/switzerland-berner-oberland/image-0009.jpg',3,1),(23,'http://lerlop.com/wp-content/gallery/cinque-terre-italy/image-0001.jpg',4,1),(24,'http://lerlop.com/wp-content/gallery/cinque-terre-italy/image-0002.jpg',4,1),(25,'http://lerlop.com/wp-content/gallery/cinque-terre-italy/image-0003.jpg',4,1),(26,'http://lerlop.com/wp-content/gallery/cinque-terre-italy/image-0004.jpg',4,1),(27,'http://lerlop.com/wp-content/gallery/cinque-terre-italy/image-0005.jpg',4,1),(28,'http://lerlop.com/wp-content/gallery/cinque-terre-italy/image-0006.jpg',4,1),(29,'http://lerlop.com/wp-content/gallery/cinque-terre-italy/image-0007.jpg',4,1),(30,'http://lerlop.com/wp-content/gallery/cinque-terre-italy/image-0008.jpg',4,1),(31,'http://lerlop.com/wp-content/gallery/cinque-terre-italy/image-0009.jpg',4,1),(32,'http://lerlop.com/wp-content/gallery/cinque-terre-italy/image-00010.jpg',4,1),(33,'http://lerlop.com/wp-content/gallery/cinque-terre-italy/image-00011.jpg',4,1),(34,'http://lerlop.com/wp-content/gallery/cinque-terre-italy/image-00012.jpg',4,1),(35,'http://lerlop.com/wp-content/gallery/cinque-terre-italy/image-00013.jpg',4,1);
/*!40000 ALTER TABLE `pictures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_version`
--

DROP TABLE IF EXISTS `schema_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_version` (
  `when` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `key` varchar(128) NOT NULL,
  `extra` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_version`
--

LOCK TABLES `schema_version` WRITE;
/*!40000 ALTER TABLE `schema_version` DISABLE KEYS */;
INSERT INTO `schema_version` VALUES ('2013-03-24 03:27:13','001','category table add status field');
/*!40000 ALTER TABLE `schema_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topics`
--

DROP TABLE IF EXISTS `topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topics` (
  `topic_id` mediumint(9) NOT NULL AUTO_INCREMENT,
  `category_id` mediumint(9) NOT NULL COMMENT '图片类别的id',
  `cover` mediumint(9) NOT NULL COMMENT '封面,对应pictures的ID',
  `name` varchar(128) DEFAULT NULL,
  `intro` text,
  `status` tinyint(4) DEFAULT '1' COMMENT '是否显示此专题',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topics`
--

LOCK TABLES `topics` WRITE;
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` VALUES (1,1,1,'马自达美女','瞧瞧这双美腿',1,'2013-03-23 05:00:35'),(2,1,2,'MINYOUNG & SEOKYUN WEDDING','As mentioned in an earlier post, Minyoung and I went to college together. We did the engagement shoot in Georgetown, Washington, DC. The wedding was in the Philadelphia metro area. The church had just recently completed a renovation and we were lucky enough to be the first wedding in the brand new sanctuary. One lesson learned from this trip was to never drive through downtown Philly unless there is absolute need. I thought I would stop by China town and get some lunch there. I took me almost 90 minutes to get through 40+ traffic lights on a Sunday morning.',1,'2013-03-23 05:38:10'),(3,1,14,'SWITZERLAND: BERNER OBERLAND,GIMMELWALD, INTERLAKEN','Heading to Gimmelwald, our train from Paris Gare de l’Est to Interlake OST, Switzerland (via Basel SBB) was schedule for an 8:24 departure. We woke up really tired because of lack of sleep (didn’t get back to hotel until midnight). We showered, finished packing and went down the restaurant for breakfast buffet. We stuffed as much as we could down our throats in 15 minutes before catching a metro to the train station. Arriving at the station a bit early gave us time to rest. We got on a TGV train and found ourselves sitting cross a young American couple. Don’t remember if I have already mentioned this, but throughout the entire trip we saw, heard and ran into Americans everywhere. Recession? What recession? Right? I would say a lot of them were exchange students and family with kids. Anyway, we were so glad that our seats faced the direction that the train was heading. We absolute hate facing the opposite direction.',1,'2013-03-23 07:36:52'),(4,2,23,'CINQUE TERRE, ITALY','After very little sleep on an overnight train from Switzerland, we arrived at Firenze Campo di Marte station in Firenze or Florence at around 6:30-7:00. The train we wanted to take to Vernazza was scheduled for a 7:27 departure but we didn’t have tickets yet. Having not money at all, I was a quest to find an ATM. Normally every train station has at least one ATM machine. However, based on my observations, small stations in Italy don’t have one. I first tried to ask a lady in cafe for directions but she gave me this WTF look and said something in Italian that my brain couldn’t process. Luckily, the owner of the newsstand spoke English and told me I could find an ATM on the next block. By that time, my next train to Vernazza was scheduled to arrive in 20 minutes so I ran to the ATM machine. That one block turned out to be a huge block. Got there, tried to withdraw €500 but the machine declined saying it exceeded the bank’s limit. I was like Whao? because we were able to withdraw €500 twice in Paris without any issues. I then tried 400, 350, 300 and it still wouldn’t let me withdraw. As time was pressing, right at that moment I was pretty pissed off at Italy for not giving me a warm welcome. Then for one last time I tried withdrawing €250 and it worked.Â Got the money, ran back to the station, bought tickets. The staff at the counter gave me another WTF look when I asked for tickets to Vernazza. He was like what Vernazza? A few seconds after he had collected his thoughts, he typed Vernazza into his tiny low-tech computer, pressed a few keys and boom! it dispensed two tickets. I should have clapped when that happened but didn’t. Cost me €8 per ticket. The train arrived a few minutes after we got the tickets. It was a regional/local train so no reservation was needed. The train was so packed when we got on but luckily we found a seat for two. The ride took over 3 melting hot hours. Driving would take about 2:15 minutes according to Google Maps. Again the train was so crowded, and as it went on its route more and more people got on. Eventually there were no seats left on the train and people started standing in the aisle, in front of restrooms, etc. Some people kept walking up and down the train to find seats. The train didn’t have air conditioning, the windows were somehow locked, and people were sweating like they were water hoses. What wasn’t pleasant about it was when somebody with an odor problem walked past, man… let me tell you, I just wanted to pass out because of the after smell and how long it lasted. Anyway, I’m not saying that’s bad. It’s just how the locals roll. Nevertheless, I loved the experience.',1,'2013-03-23 07:41:54');
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(12) NOT NULL COMMENT '后台用户名',
  `passwd` varchar(60) NOT NULL COMMENT '后台用户密码',
  `status` tinyint(4) DEFAULT '1' COMMENT '用户状态;0禁用,1启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','21232f297a57a5a743894a0e4a801fc3',1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-31 10:36:39
