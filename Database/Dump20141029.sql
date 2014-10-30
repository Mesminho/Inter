CREATE DATABASE  IF NOT EXISTS `inter` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `inter`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: 192.168.147.129    Database: inter
-- ------------------------------------------------------
-- Server version	5.5.38-0+wheezy1

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
-- Table structure for table `alt_alternativas`
--

DROP TABLE IF EXISTS `alt_alternativas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `alt_alternativas` (
  `alt_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `alt_alternativa` varchar(100) NOT NULL,
  `alt_peso` double NOT NULL,
  `per_codigo` int(11) NOT NULL,
  PRIMARY KEY (`alt_codigo`),
  KEY `fk_alt_alternativas_per_perguntas1_idx` (`per_codigo`),
  CONSTRAINT `fk_alt_alternativas_per_perguntas1` FOREIGN KEY (`per_codigo`) REFERENCES `per_perguntas` (`per_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alt_alternativas`
--

LOCK TABLES `alt_alternativas` WRITE;
/*!40000 ALTER TABLE `alt_alternativas` DISABLE KEYS */;
INSERT INTO `alt_alternativas` VALUES (1,'Você não deveria perguntar isso!',35,29),(2,'Sim, muito chato!',30,15),(3,'Lagostas são legais!',36,31),(4,'Sim, muito chato!',25,49),(5,'Você não deveria perguntar isso!',37,33),(6,'Pode ser com limão!',27,21),(7,'Mas e o que acontece?!',31,36),(8,'Bah!',2,31),(9,'Sim, muito chato!',16,31),(10,'Pode ser com limão!',18,13),(11,'Pode ser com limão!',13,15),(12,'Sim, muito chato!',28,10),(13,'Mas e o que acontece?!',7,17),(14,'Pode ser com limão!',19,41),(15,'Sim, muito chato!',41,4),(16,'Lagostas são legais!',37,22),(17,'Pode ser com limão!',9,21),(18,'ok, vamos la!',7,37),(19,'Sim, muito chato!',42,9),(20,'ok, vamos la!',18,16),(21,'Você não deveria perguntar isso!',23,36),(22,'Pode ser com limão!',21,19),(23,'Bah!',17,25),(24,'Pode ser com limão!',47,48),(25,'Sim, muito chato!',40,27),(26,'Mas e o que acontece?!',44,5),(27,'Sim, muito chato!',14,15),(28,'DotA!',7,20),(29,'Lagostas são legais!',19,41),(30,'Mas e o que acontece?!',21,36),(31,'Bah!',31,4),(32,'Mas e o que acontece?!',43,40),(33,'ok, vamos la!',17,47),(34,'Pode ser com limão!',31,17),(35,'Lagostas são legais!',11,28),(36,'Pode ser com limão!',9,3),(37,'Sim, muito chato!',19,7),(38,'Pode ser com limão!',45,16),(39,'ok, vamos la!',36,2),(40,'Mas e o que acontece?!',43,5),(41,'DotA!',15,9),(42,'Pode ser com limão!',21,8),(43,'Mas e o que acontece?!',29,18),(44,'Mas e o que acontece?!',22,33),(45,'Você não deveria perguntar isso!',14,42),(46,'Lagostas são legais!',41,39),(47,'Sim, muito chato!',9,24),(48,'Pode ser com limão!',24,24),(49,'Bah!',30,42),(50,'Sim, muito chato!',40,47),(51,'Bah!',28,7),(52,'Você não deveria perguntar isso!',1,26),(53,'Mas e o que acontece?!',11,85),(54,'Pode ser com limão!',33,48),(55,'Bah!',1,9),(56,'DotA!',16,86),(57,'Pode ser com limão!',19,56),(58,'Sim, muito chato!',3,35),(59,'DotA!',11,51),(60,'Bah!',34,71),(61,'Lagostas são legais!',45,67),(62,'Sim, muito chato!',19,78),(63,'Sim, muito chato!',31,17),(64,'Você não deveria perguntar isso!',47,99),(65,'Bah!',36,19),(66,'Pode ser com limão!',6,43),(67,'Mas e o que acontece?!',30,50),(68,'ok, vamos la!',30,27),(69,'Sim, muito chato!',41,94),(70,'Pode ser com limão!',50,58),(71,'Pode ser com limão!',23,92),(72,'Sim, muito chato!',32,30),(73,'DotA!',22,95),(74,'DotA!',7,96),(75,'Lagostas são legais!',48,9),(76,'ok, vamos la!',20,87),(77,'Mas e o que acontece?!',43,14),(78,'Bah!',37,2),(79,'Mas e o que acontece?!',47,17),(80,'Lagostas são legais!',27,50),(81,'Mas e o que acontece?!',8,42),(82,'ok, vamos la!',49,50),(83,'Você não deveria perguntar isso!',38,29),(84,'Mas e o que acontece?!',44,43),(85,'Sim, muito chato!',18,13),(86,'DotA!',32,55),(87,'ok, vamos la!',33,84),(88,'Você não deveria perguntar isso!',47,37),(89,'Pode ser com limão!',25,93),(90,'Sim, muito chato!',28,75),(91,'Pode ser com limão!',16,21),(92,'Lagostas são legais!',4,11),(93,'Sim, muito chato!',16,55),(94,'ok, vamos la!',2,58),(95,'Você não deveria perguntar isso!',32,78),(96,'Você não deveria perguntar isso!',46,38),(97,'Lagostas são legais!',16,73),(98,'Lagostas são legais!',42,78),(99,'ok, vamos la!',21,42),(100,'Pode ser com limão!',0,32),(101,'Mas e o que acontece?!',29,146),(102,'DotA!',13,19),(103,'Lagostas são legais!',10,20),(104,'Pode ser com limão!',32,25),(105,'ok, vamos la!',11,132),(106,'Mas e o que acontece?!',46,95),(107,'Sim, muito chato!',19,1),(108,'Pode ser com limão!',22,130),(109,'Pode ser com limão!',47,103),(110,'Mas e o que acontece?!',1,2),(111,'Mas e o que acontece?!',27,18),(112,'DotA!',45,65),(113,'Sim, muito chato!',6,23),(114,'Lagostas são legais!',4,19),(115,'Bah!',36,94),(116,'ok, vamos la!',14,45),(117,'Pode ser com limão!',0,109),(118,'Pode ser com limão!',16,110),(119,'Sim, muito chato!',19,21),(120,'Lagostas são legais!',49,16),(121,'ok, vamos la!',35,11),(122,'ok, vamos la!',13,75),(123,'Você não deveria perguntar isso!',28,66),(124,'ok, vamos la!',13,39),(125,'Mas e o que acontece?!',3,110),(126,'Mas e o que acontece?!',47,22),(127,'Pode ser com limão!',2,84),(128,'Sim, muito chato!',28,144),(129,'ok, vamos la!',34,118),(130,'Lagostas são legais!',30,143),(131,'DotA!',18,6),(132,'Sim, muito chato!',24,141),(133,'Pode ser com limão!',46,12),(134,'Mas e o que acontece?!',9,129),(135,'DotA!',36,50),(136,'Sim, muito chato!',43,68),(137,'DotA!',26,29),(138,'Sim, muito chato!',41,89),(139,'Sim, muito chato!',28,123),(140,'Sim, muito chato!',4,146),(141,'DotA!',30,40),(142,'DotA!',1,109),(143,'Sim, muito chato!',25,111),(144,'Pode ser com limão!',16,57),(145,'Sim, muito chato!',45,45),(146,'Bah!',20,2),(147,'Sim, muito chato!',28,75),(148,'Bah!',3,123),(149,'Pode ser com limão!',49,62),(150,'DotA!',9,109),(151,'asdasd',12,151),(152,'asdasda',12,151),(153,'Atibaia',12,152),(154,'Atibaia',12,152),(155,'teste alternativa',12,153),(156,'teste alter 2',13,153);
/*!40000 ALTER TABLE `alt_alternativas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `alt_view`
--

DROP TABLE IF EXISTS `alt_view`;
/*!50001 DROP VIEW IF EXISTS `alt_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `alt_view` (
  `alt_codigo` tinyint NOT NULL,
  `alt_alternativa` tinyint NOT NULL,
  `alt_peso` tinyint NOT NULL,
  `per_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `cla_classificacoes`
--

DROP TABLE IF EXISTS `cla_classificacoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cla_classificacoes` (
  `cla_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `cla_pontosMax` double NOT NULL,
  `cla_descricao` text NOT NULL,
  `cla_nome` varchar(60) NOT NULL,
  PRIMARY KEY (`cla_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cla_classificacoes`
--

LOCK TABLES `cla_classificacoes` WRITE;
/*!40000 ALTER TABLE `cla_classificacoes` DISABLE KEYS */;
INSERT INTO `cla_classificacoes` VALUES (1,44,'Decriçosa','Armanda'),(2,33,'Decriçosa','Hortensia'),(3,74,'Chalakakaka kasdukekmn klsdfdglkdf','Stephnie'),(4,80,'HUEHUEHUEHUEHUE BRBRBR','Hortensia'),(5,83,'Decriçosa','Lucy'),(6,90,'Decriçosa','Don'),(7,80,'Decriçosa','Elwood'),(8,76,'Chalakakaka kasdukekmn klsdfdglkdf','Lanette'),(9,42,'Decriçosa','Elia'),(10,61,'Chulapakiaksidajsk','Zandra'),(11,62,'Gabriel vagal, muito vagal','Mia'),(12,16,'Decriçosa','Shirly'),(13,76,'Butanonipoid propatrinasdçlk askd','Yon'),(14,48,'Butanonipoid propatrinasdçlk askd','Carry'),(15,2,'Decriçosa','Delfina'),(16,82,'Decriçosa','Dinorah'),(17,70,'Minadirisadjasdwuihdashdasdhakshdk','Xenia'),(18,78,'Minadirisadjasdwuihdashdasdhakshdk','Alishia'),(19,22,'HUEHUEHUEHUEHUE BRBRBR','Marlen'),(20,3,'Decriçosa','Antoine'),(21,41,'Chalakakaka kasdukekmn klsdfdglkdf','Gigi'),(22,81,'Decriçosa','Sammie'),(23,3,'Decriçosa','Blair'),(24,45,'Decriçosa','Nilsa'),(25,73,'Decriçosa','Maryrose'),(26,0,'Decriçosa','Carmella'),(27,16,'Butanonipoid propatrinasdçlk askd','Latina'),(28,66,'Decriçosa','Alexa'),(29,43,'Decriçosa','Leisha'),(30,63,'Decriçosa','Rosa'),(31,23,'Chalakakaka kasdukekmn klsdfdglkdf','Rudy'),(32,27,'Decriçosa','Saturnina'),(33,83,'Minadirisadjasdwuihdashdasdhakshdk','Abram'),(34,18,'Minadirisadjasdwuihdashdasdhakshdk','Gregory'),(35,52,'Chulapakiaksidajsk','Georgina'),(36,99,'Decriçosa','Caterina'),(37,38,'Gabriel vagal, muito vagal','Cameron'),(38,58,'Gabriel vagal, muito vagal','Demetrius'),(39,59,'Minadirisadjasdwuihdashdasdhakshdk','Mindi'),(40,25,'Gabriel vagal, muito vagal','An'),(41,1,'Decriçosa','Layla'),(42,54,'Decriçosa','Meta'),(43,26,'Minadirisadjasdwuihdashdasdhakshdk','Glendora'),(44,62,'Decriçosa','Evelia'),(45,48,'Chulapakiaksidajsk','Jaimee'),(46,8,'Decriçosa','Jeni'),(47,13,'Decriçosa','Melia'),(48,18,'Decriçosa','Evelin'),(49,8,'Gabriel vagal, muito vagal','Jacalyn'),(50,28,'Minadirisadjasdwuihdashdasdhakshdk','Cameron'),(51,81,'HUEHUEHUEHUEHUE BRBRBR','Nelson'),(52,88,'Chalakakaka kasdukekmn klsdfdglkdf','Abdul'),(53,30,'Decriçosa','Kyla'),(54,48,'Decriçosa','Glenna'),(55,55,'Chulapakiaksidajsk','Armando'),(56,40,'Decriçosa','Margorie'),(57,18,'Chulapakiaksidajsk','Arlyne'),(58,23,'Butanonipoid propatrinasdçlk askd','Man'),(59,75,'Chulapakiaksidajsk','Harold'),(60,16,'Decriçosa','Maxima'),(61,34,'Chulapakiaksidajsk','Alysia'),(62,78,'Gabriel vagal, muito vagal','Celinda'),(63,30,'Chalakakaka kasdukekmn klsdfdglkdf','Svetlana'),(64,82,'HUEHUEHUEHUEHUE BRBRBR','Dominic'),(65,90,'HUEHUEHUEHUEHUE BRBRBR','Elke'),(66,43,'Decriçosa','Ruthe'),(67,71,'Gabriel vagal, muito vagal','Glory'),(68,21,'Gabriel vagal, muito vagal','Margarito'),(69,75,'Gabriel vagal, muito vagal','Vertie'),(70,81,'Chulapakiaksidajsk','Hanh'),(71,60,'Decriçosa','Maryalice'),(72,83,'Decriçosa','Jerrell'),(73,65,'Chulapakiaksidajsk','Shaquana'),(74,79,'Decriçosa','Aundrea'),(75,25,'Decriçosa','Rueben'),(76,12,'Decriçosa','Wilmer'),(77,66,'Gabriel vagal, muito vagal','Toccara'),(78,65,'Butanonipoid propatrinasdçlk askd','Gennie'),(79,44,'Decriçosa','Marinda'),(80,7,'Decriçosa','Eliseo'),(81,40,'Minadirisadjasdwuihdashdasdhakshdk','Mercedez'),(82,11,'Decriçosa','Rich'),(83,81,'Chalakakaka kasdukekmn klsdfdglkdf','Marlene'),(84,79,'Gabriel vagal, muito vagal','Julieann'),(85,13,'Decriçosa','Soon'),(86,37,'Gabriel vagal, muito vagal','Beata'),(87,80,'Minadirisadjasdwuihdashdasdhakshdk','Kaylene'),(88,92,'Decriçosa','Dudley'),(89,91,'Decriçosa','Idella'),(90,7,'Gabriel vagal, muito vagal','Bobbi'),(91,57,'Chalakakaka kasdukekmn klsdfdglkdf','Vicky'),(92,94,'Gabriel vagal, muito vagal','Randolph'),(93,0,'Minadirisadjasdwuihdashdasdhakshdk','Wilfred'),(94,42,'Decriçosa','Lavelle'),(95,12,'Decriçosa','Florance'),(96,91,'Butanonipoid propatrinasdçlk askd','Britany'),(97,50,'Minadirisadjasdwuihdashdasdhakshdk','Leota'),(98,14,'HUEHUEHUEHUEHUE BRBRBR','Dino'),(99,26,'Chulapakiaksidajsk','Cory'),(100,46,'Decriçosa','Joaquin'),(101,8,'Chalakakaka kasdukekmn klsdfdglkdf','Ellis'),(102,18,'Minadirisadjasdwuihdashdasdhakshdk','Malisa'),(103,67,'Chulapakiaksidajsk','Vickie'),(104,6,'Minadirisadjasdwuihdashdasdhakshdk','Ka'),(105,34,'Decriçosa','Hedwig'),(106,0,'Chulapakiaksidajsk','Elliot'),(107,26,'Decriçosa','Irene'),(108,41,'Minadirisadjasdwuihdashdasdhakshdk','Chantay'),(109,49,'Minadirisadjasdwuihdashdasdhakshdk','Bertram'),(110,33,'Gabriel vagal, muito vagal','Deirdre'),(111,40,'Chulapakiaksidajsk','Laurene'),(112,68,'Gabriel vagal, muito vagal','Cathi'),(113,11,'Decriçosa','Darwin'),(114,5,'Chulapakiaksidajsk','Tegan'),(115,22,'Decriçosa','Bella'),(116,23,'Decriçosa','Verla'),(117,82,'Decriçosa','Olivia'),(118,79,'Chalakakaka kasdukekmn klsdfdglkdf','Genna'),(119,56,'Chulapakiaksidajsk','Eldridge'),(120,51,'Butanonipoid propatrinasdçlk askd','Milford'),(121,20,'Butanonipoid propatrinasdçlk askd','Bertha'),(122,92,'HUEHUEHUEHUEHUE BRBRBR','Ted'),(123,56,'Chalakakaka kasdukekmn klsdfdglkdf','Hilton'),(124,76,'Decriçosa','Gloria'),(125,24,'Decriçosa','Rayna'),(126,75,'Chalakakaka kasdukekmn klsdfdglkdf','Bryanna'),(127,38,'Minadirisadjasdwuihdashdasdhakshdk','Ema'),(128,70,'Decriçosa','Vonda'),(129,30,'Butanonipoid propatrinasdçlk askd','Stephaine'),(130,78,'Butanonipoid propatrinasdçlk askd','Earl'),(131,99,'Minadirisadjasdwuihdashdasdhakshdk','Sunday'),(132,18,'Decriçosa','Precious'),(133,56,'Decriçosa','Erin'),(134,95,'Gabriel vagal, muito vagal','Melynda'),(135,4,'Gabriel vagal, muito vagal','Jackqueli'),(136,75,'Decriçosa','Assunta'),(137,96,'Decriçosa','Ellamae'),(138,3,'Minadirisadjasdwuihdashdasdhakshdk','Saundra'),(139,2,'Butanonipoid propatrinasdçlk askd','Nilda'),(140,74,'Decriçosa','Humberto'),(141,2,'Minadirisadjasdwuihdashdasdhakshdk','Mark'),(142,52,'Chalakakaka kasdukekmn klsdfdglkdf','Kellee'),(143,0,'Butanonipoid propatrinasdçlk askd','Rea'),(144,22,'Chulapakiaksidajsk','Isreal'),(145,71,'Butanonipoid propatrinasdçlk askd','Flora'),(146,27,'Minadirisadjasdwuihdashdasdhakshdk','America'),(147,45,'Decriçosa','Yen'),(148,36,'Chulapakiaksidajsk','Ora'),(149,1,'HUEHUEHUEHUEHUE BRBRBR','Noella'),(150,100,'Butanonipoid propatrinasdçlk askd','Milagros'),(151,12,'','Conservador'),(152,13,'','Moderado'),(153,14,'','Agressivo'),(154,12,'','Conservador'),(155,13,'','Moderado'),(156,14,'','Agressivo'),(157,12,'','Conservador'),(158,13,'','Moderado'),(159,14,'','Agressivo');
/*!40000 ALTER TABLE `cla_classificacoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `cla_view`
--

DROP TABLE IF EXISTS `cla_view`;
/*!50001 DROP VIEW IF EXISTS `cla_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `cla_view` (
  `cla_codigo` tinyint NOT NULL,
  `cla_pontosMax` tinyint NOT NULL,
  `cla_descricao` tinyint NOT NULL,
  `cla_nome` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `eve_eventos`
--

DROP TABLE IF EXISTS `eve_eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eve_eventos` (
  `eve_codigo` int(11) NOT NULL,
  `eve_nome` varchar(100) NOT NULL,
  `eve_tema` varchar(100) NOT NULL,
  `eve_inicio` datetime NOT NULL,
  `eve_fim` datetime NOT NULL,
  `eve_ativo` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`eve_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eve_eventos`
--

LOCK TABLES `eve_eventos` WRITE;
/*!40000 ALTER TABLE `eve_eventos` DISABLE KEYS */;
/*!40000 ALTER TABLE `eve_eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_logUsuarios`
--

DROP TABLE IF EXISTS `log_logUsuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_logUsuarios` (
  `log_codigo` int(11) NOT NULL,
  `log_dataCadastro` datetime NOT NULL,
  `log_dataAcesso` datetime NOT NULL,
  `eve_codigo` int(11) NOT NULL,
  `usu_codigo` int(11) NOT NULL,
  PRIMARY KEY (`log_codigo`),
  KEY `fk_log_logUsuario_eve_eventos1_idx` (`eve_codigo`),
  KEY `fk_log_logUsuario_usu_usuario1_idx` (`usu_codigo`),
  CONSTRAINT `fk_log_logUsuario_eve_eventos1` FOREIGN KEY (`eve_codigo`) REFERENCES `eve_eventos` (`eve_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_log_logUsuario_usu_usuario1` FOREIGN KEY (`usu_codigo`) REFERENCES `usu_usuarios` (`usu_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_logUsuarios`
--

LOCK TABLES `log_logUsuarios` WRITE;
/*!40000 ALTER TABLE `log_logUsuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_logUsuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mev_modelosEventos`
--

DROP TABLE IF EXISTS `mev_modelosEventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mev_modelosEventos` (
  `mod_codigo` int(11) NOT NULL,
  `eve_codigo` int(11) NOT NULL,
  PRIMARY KEY (`mod_codigo`,`eve_codigo`),
  KEY `fk_mod_modelos_has_eve_eventos_eve_eventos1_idx` (`eve_codigo`),
  KEY `fk_mod_modelos_has_eve_eventos_mod_modelos1_idx` (`mod_codigo`),
  CONSTRAINT `fk_mod_modelos_has_eve_eventos_mod_modelos1` FOREIGN KEY (`mod_codigo`) REFERENCES `mod_modelos` (`mod_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_mod_modelos_has_eve_eventos_eve_eventos1` FOREIGN KEY (`eve_codigo`) REFERENCES `eve_eventos` (`eve_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mev_modelosEventos`
--

LOCK TABLES `mev_modelosEventos` WRITE;
/*!40000 ALTER TABLE `mev_modelosEventos` DISABLE KEYS */;
/*!40000 ALTER TABLE `mev_modelosEventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `mev_view`
--

DROP TABLE IF EXISTS `mev_view`;
/*!50001 DROP VIEW IF EXISTS `mev_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `mev_view` (
  `mod_codigo` tinyint NOT NULL,
  `eve_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `moc_modeloClassificacao`
--

DROP TABLE IF EXISTS `moc_modeloClassificacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moc_modeloClassificacao` (
  `mod_codigo` int(11) NOT NULL,
  `cla_codigo` int(11) NOT NULL,
  PRIMARY KEY (`mod_codigo`,`cla_codigo`),
  KEY `fk_mod_modelos_has_cla_classificacoes_cla_classificacoes1_idx` (`cla_codigo`),
  KEY `fk_mod_modelos_has_cla_classificacoes_mod_modelos1_idx` (`mod_codigo`),
  CONSTRAINT `fk_mod_modelos_has_cla_classificacoes_mod_modelos1` FOREIGN KEY (`mod_codigo`) REFERENCES `mod_modelos` (`mod_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_mod_modelos_has_cla_classificacoes_cla_classificacoes1` FOREIGN KEY (`cla_codigo`) REFERENCES `cla_classificacoes` (`cla_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moc_modeloClassificacao`
--

LOCK TABLES `moc_modeloClassificacao` WRITE;
/*!40000 ALTER TABLE `moc_modeloClassificacao` DISABLE KEYS */;
INSERT INTO `moc_modeloClassificacao` VALUES (10,1),(37,1),(44,1),(44,2),(1,3),(2,3),(22,3),(38,3),(11,4),(23,4),(30,4),(37,4),(35,5),(42,5),(49,5),(50,5),(59,5),(21,6),(36,6),(50,6),(2,8),(17,8),(18,8),(5,9),(12,10),(19,10),(22,11),(27,12),(16,13),(37,13),(2,14),(45,14),(51,14),(92,14),(111,14),(23,15),(2,16),(15,16),(47,16),(73,16),(8,17),(34,17),(41,17),(37,18),(50,18),(17,19),(104,19),(142,19),(1,20),(15,20),(48,20),(54,20),(21,21),(44,22),(58,22),(88,22),(36,23),(45,23),(70,23),(36,24),(47,26),(19,27),(90,28),(13,31),(90,31),(7,32),(8,33),(11,33),(49,33),(33,35),(38,35),(80,35),(7,36),(40,36),(46,36),(42,39),(136,40),(92,42),(53,43),(1,44),(8,45),(25,45),(27,45),(138,45),(4,46),(45,46),(59,46),(34,48),(48,49),(37,50),(29,52),(77,53),(83,54),(10,57),(50,59),(72,59),(83,59),(93,59),(2,60),(85,66),(30,67),(58,67),(49,68),(65,68),(93,68),(98,68),(52,70),(54,70),(40,73),(57,74),(97,74),(100,74),(26,78),(18,81),(35,82),(59,84),(91,85),(1,86),(47,86),(79,86),(125,87),(135,87),(42,88),(46,88),(55,89),(113,89),(10,91),(42,91),(70,93),(55,94),(75,94),(95,94),(10,95),(36,97),(69,97),(131,106),(138,106),(64,107),(17,110),(30,113),(124,120),(18,122),(5,128),(125,131),(144,131),(104,136),(82,137),(88,137),(12,138),(44,138),(120,140),(41,147),(151,151),(151,152),(151,153),(152,154),(152,155),(152,156),(153,157),(153,158),(153,159);
/*!40000 ALTER TABLE `moc_modeloClassificacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `mod_editar_view`
--

DROP TABLE IF EXISTS `mod_editar_view`;
/*!50001 DROP VIEW IF EXISTS `mod_editar_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `mod_editar_view` (
  `mod_codigo` tinyint NOT NULL,
  `mod_nome` tinyint NOT NULL,
  `mod_habilitado` tinyint NOT NULL,
  `mod_editar` tinyint NOT NULL,
  `mod_descricao` tinyint NOT NULL,
  `tim_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `mod_modelos`
--

DROP TABLE IF EXISTS `mod_modelos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mod_modelos` (
  `mod_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `mod_nome` varchar(100) NOT NULL,
  `mod_habilitado` tinyint(1) NOT NULL DEFAULT '1',
  `mod_editar` tinyint(1) NOT NULL DEFAULT '1',
  `mod_descricao` text NOT NULL,
  `tim_codigo` int(11) NOT NULL,
  PRIMARY KEY (`mod_codigo`),
  KEY `fk_mod_modelos_tim_tipoModelo1_idx` (`tim_codigo`),
  CONSTRAINT `fk_mod_modelos_tim_tipoModelo1` FOREIGN KEY (`tim_codigo`) REFERENCES `tim_tipoModelo` (`tim_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mod_modelos`
--

LOCK TABLES `mod_modelos` WRITE;
/*!40000 ALTER TABLE `mod_modelos` DISABLE KEYS */;
INSERT INTO `mod_modelos` VALUES (2,'Feronnnnnn Hayoo',0,1,'Heiheieheihie Descri',1),(4,'Alvirez',0,1,'Butanonipoid propatrinasdçlk askd',3),(5,'Balzarine',1,1,'Decriçosa',3),(7,'Galston',1,1,'Decriçosa',2),(8,'Agudelo',1,1,'Butanonipoid propatrinasdçlk askd',1),(10,'Pasaya',1,1,'Gabriel vagal, muito vagal',2),(12,'Choulnard',1,1,'Decriçosa',1),(13,'Kyseth',1,1,'Minadirisadjasdwuihdashdasdhakshdk',1),(15,'Bigusiak',1,1,'Decriçosa',1),(17,'Paolucci',1,1,'Minadirisadjasdwuihdashdasdhakshdk',1),(21,'Flueck',1,1,'HUEHUEHUEHUEHUE BRBRBR',3),(22,'Norsaganay',1,1,'HUEHUEHUEHUEHUE BRBRBR',1),(23,'Alvirez',1,1,'Decriçosa',2),(25,'Imburgia',1,1,'HUEHUEHUEHUEHUE BRBRBR',2),(26,'Deremiah',1,1,'HUEHUEHUEHUEHUE BRBRBR',1),(27,'Camon',1,1,'Chulapakiaksidajsk',1),(29,'Kitelinger',1,1,'HUEHUEHUEHUEHUE BRBRBR',3),(30,'Derenzis',1,1,'Minadirisadjasdwuihdashdasdhakshdk',3),(34,'Monrow',1,1,'Decriçosa',2),(35,'Ramsden',1,1,'Butanonipoid propatrinasdçlk askd',1),(36,'Moghadam',1,1,'Decriçosa',1),(37,'Lachiatto',1,1,'Decriçosa',3),(38,'Discher',1,1,'HUEHUEHUEHUEHUE BRBRBR',1),(40,'Chanchuan',1,1,'Decriçosa',2),(41,'Cuzzo',1,1,'Decriçosa',2),(42,'Glowinski',1,1,'Decriçosa',2),(44,'Marchesseaul',1,1,'Chalakakaka kasdukekmn klsdfdglkdf',1),(45,'Fonder',1,1,'Chalakakaka kasdukekmn klsdfdglkdf',3),(46,'Mathen',1,1,'Gabriel vagal, muito vagal',1),(47,'Fullwiler',1,1,'Decriçosa',3),(49,'Chiv',1,1,'Decriçosa',2),(51,'Vantassell',1,1,'Decriçosa',3),(52,'Tsuji',1,1,'Decriçosa',1),(53,'Lehning',1,1,'HUEHUEHUEHUEHUE BRBRBR',2),(54,'Lepetich',1,1,'Chulapakiaksidajsk',1),(55,'Baronne',1,1,'Chalakakaka kasdukekmn klsdfdglkdf',2),(58,'Ballesterous',1,1,'HUEHUEHUEHUEHUE BRBRBR',2),(59,'Lipira',1,1,'HUEHUEHUEHUEHUE BRBRBR',1),(64,'Cuzzo',1,1,'Minadirisadjasdwuihdashdasdhakshdk',3),(65,'Bajek',1,1,'HUEHUEHUEHUEHUE BRBRBR',3),(70,'Craan',1,1,'Chulapakiaksidajsk',3),(73,'Montrose',1,1,'Decriçosa',1),(75,'Covitt',1,1,'HUEHUEHUEHUEHUE BRBRBR',1),(79,'Lepetich',1,1,'HUEHUEHUEHUEHUE BRBRBR',2),(80,'Mohorovich',1,1,'Chulapakiaksidajsk',1),(82,'Bloes',1,1,'Chulapakiaksidajsk',2),(88,'Huhn',1,1,'Chalakakaka kasdukekmn klsdfdglkdf',2),(91,'Kawasaki',1,1,'Butanonipoid propatrinasdçlk askd',2),(93,'Todaro',1,1,'Chalakakaka kasdukekmn klsdfdglkdf',3),(97,'Lipira',1,1,'Decriçosa',3),(98,'Coutu',1,1,'HUEHUEHUEHUEHUE BRBRBR',2),(100,'Fullwiler',1,1,'Decriçosa',3),(111,'Littell',1,1,'Butanonipoid propatrinasdçlk askd',3),(124,'Marinko',1,1,'Chalakakaka kasdukekmn klsdfdglkdf',1),(125,'Bacman',1,1,'Butanonipoid propatrinasdçlk askd',2),(144,'Monfore',1,1,'Chalakakaka kasdukekmn klsdfdglkdf',1),(151,'asdasdaasdas',1,1,'asdasdasd',1),(152,'Atibaia',1,1,'Atibaia',1),(153,'Modelo teste',1,1,'asda',1);
/*!40000 ALTER TABLE `mod_modelos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `mod_view`
--

DROP TABLE IF EXISTS `mod_view`;
/*!50001 DROP VIEW IF EXISTS `mod_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `mod_view` (
  `mod_codigo` tinyint NOT NULL,
  `mod_nome` tinyint NOT NULL,
  `mod_habilitado` tinyint NOT NULL,
  `mod_editar` tinyint NOT NULL,
  `mod_descricao` tinyint NOT NULL,
  `tim_codigo` tinyint NOT NULL,
  `habilitado` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `per_perguntas`
--

DROP TABLE IF EXISTS `per_perguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `per_perguntas` (
  `per_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `per_pergunta` text NOT NULL,
  `mod_codigo` int(11) NOT NULL,
  PRIMARY KEY (`per_codigo`),
  KEY `fk_per_perguntas_mod_modelos1_idx` (`mod_codigo`),
  CONSTRAINT `fk_per_perguntas_mod_modelos1` FOREIGN KEY (`mod_codigo`) REFERENCES `mod_modelos` (`mod_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `per_perguntas`
--

LOCK TABLES `per_perguntas` WRITE;
/*!40000 ALTER TABLE `per_perguntas` DISABLE KEYS */;
INSERT INTO `per_perguntas` VALUES (1,'Você acha o gabriel chato?',38),(2,'Ajklasjdkljsdjl',2),(3,'Não?',31),(4,'Como vai você?',46),(5,'Você acha o gabriel chato?',45),(6,'Quantos anos tu tens?',38),(7,'Não?',8),(8,'Não?',46),(9,'Bah?',4),(10,'Como vai você?',41),(11,'Como vai você?',13),(12,'Qual sua renda?',44),(13,'Como vai você?',25),(14,'Você acha o gabriel chato?',45),(15,'Não?',37),(16,'Como vai você?',43),(17,'Se mafagafos mafagafarem, quantos mafagafos magafaram mafagafinhos mafagafados?',4),(18,'DotA ou LOL?',9),(19,'Como vai você?',4),(20,'Quantos anos tu tens?',8),(21,'Como vai você?',8),(22,'DotA ou LOL?',20),(23,'DotA ou LOL?',17),(24,'DotA ou LOL?',4),(25,'Como vai você?',44),(26,'Como vai você?',45),(27,'Como vai você?',27),(28,'Se mafagafos mafagafarem, quantos mafagafos magafaram mafagafinhos mafagafados?',45),(29,'Como vai você?',22),(30,'Como vai você?',7),(31,'Quantos anos tu tens?',9),(32,'DotA ou LOL?',3),(33,'Se mafagafos mafagafarem, quantos mafagafos magafaram mafagafinhos mafagafados?',9),(34,'Como vai você?',26),(35,'DotA ou LOL?',9),(36,'Não?',23),(37,'Qual sua renda?',22),(38,'Qual sua renda?',37),(39,'Como vai você?',2),(40,'Como vai você?',7),(41,'Você acha o gabriel chato?',35),(42,'Não?',7),(43,'Não?',49),(44,'Você acha o gabriel chato?',40),(45,'Você acha o gabriel chato?',23),(46,'Bah?',40),(47,'Como vai você?',25),(48,'Não?',29),(49,'Qual sua renda?',34),(50,'Como vai você?',27),(51,'DotA ou LOL?',52),(52,'Quantos anos tu tens?',15),(53,'Não?',10),(54,'Qual sua renda?',36),(55,'Bah?',65),(56,'Quantos anos tu tens?',93),(57,'Se mafagafos mafagafarem, quantos mafagafos magafaram mafagafinhos mafagafados?',91),(58,'Se mafagafos mafagafarem, quantos mafagafos magafaram mafagafinhos mafagafados?',10),(59,'Quantos anos tu tens?',78),(60,'Se mafagafos mafagafarem, quantos mafagafos magafaram mafagafinhos mafagafados?',30),(61,'Como vai você?',61),(62,'Como vai você?',71),(63,'Se mafagafos mafagafarem, quantos mafagafos magafaram mafagafinhos mafagafados?',82),(64,'Bah?',80),(65,'Você acha o gabriel chato?',78),(66,'Como vai você?',5),(67,'Bah?',4),(68,'Como vai você?',22),(69,'Você acha o gabriel chato?',82),(70,'Qual sua renda?',88),(71,'Como vai você?',58),(72,'Você acha o gabriel chato?',99),(73,'Você acha o gabriel chato?',10),(74,'Bah?',38),(75,'Qual sua renda?',44),(76,'Como vai você?',78),(77,'Você acha o gabriel chato?',71),(78,'Como vai você?',43),(79,'Como vai você?',53),(80,'Quantos anos tu tens?',30),(81,'Você acha o gabriel chato?',51),(82,'Como vai você?',26),(83,'Qual sua renda?',84),(84,'DotA ou LOL?',59),(85,'Você acha o gabriel chato?',62),(86,'Se mafagafos mafagafarem, quantos mafagafos magafaram mafagafinhos mafagafados?',89),(87,'Você acha o gabriel chato?',64),(88,'Quantos anos tu tens?',70),(89,'Se mafagafos mafagafarem, quantos mafagafos magafaram mafagafinhos mafagafados?',54),(90,'Qual sua renda?',8),(91,'Quantos anos tu tens?',100),(92,'DotA ou LOL?',67),(93,'Como vai você?',99),(94,'Bah?',29),(95,'Você acha o gabriel chato?',98),(96,'Bah?',73),(97,'DotA ou LOL?',14),(98,'Você acha o gabriel chato?',56),(99,'Como vai você?',14),(100,'Bah?',29),(101,'Não?',7),(102,'Qual sua renda?',64),(103,'Você acha o gabriel chato?',3),(104,'Não?',55),(105,'Como vai você?',108),(106,'Quantos anos tu tens?',68),(107,'Quantos anos tu tens?',124),(108,'DotA ou LOL?',12),(109,'Como vai você?',122),(110,'Quantos anos tu tens?',99),(111,'DotA ou LOL?',47),(112,'Bah?',132),(113,'Não?',21),(114,'Não?',46),(115,'Se mafagafos mafagafarem, quantos mafagafos magafaram mafagafinhos mafagafados?',108),(116,'Qual sua renda?',42),(117,'Quantos anos tu tens?',2),(118,'Não?',125),(119,'DotA ou LOL?',47),(120,'Você acha o gabriel chato?',93),(121,'Como vai você?',27),(122,'Como vai você?',148),(123,'Como vai você?',144),(124,'Se mafagafos mafagafarem, quantos mafagafos magafaram mafagafinhos mafagafados?',44),(125,'DotA ou LOL?',109),(126,'Não?',125),(127,'Não?',36),(128,'Como vai você?',127),(129,'DotA ou LOL?',103),(130,'Bah?',4),(131,'Qual sua renda?',30),(132,'Não?',59),(133,'Quantos anos tu tens?',79),(134,'Bah?',12),(135,'Você acha o gabriel chato?',73),(136,'Quantos anos tu tens?',32),(137,'Quantos anos tu tens?',116),(138,'Quantos anos tu tens?',97),(139,'Você acha o gabriel chato?',39),(140,'DotA ou LOL?',61),(141,'Não?',75),(142,'Como vai você?',110),(143,'Qual sua renda?',115),(144,'Bah?',118),(145,'Como vai você?',140),(146,'Como vai você?',24),(147,'Como vai você?',100),(148,'Qual sua renda?',111),(149,'Como vai você?',108),(150,'Bah?',122),(151,'asdasdasd',151),(152,'Atibaia',152),(153,'questão b',153);
/*!40000 ALTER TABLE `per_perguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `per_permissoes`
--

DROP TABLE IF EXISTS `per_permissoes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `per_permissoes` (
  `per_codigo` int(11) NOT NULL,
  `per_tipo` varchar(60) NOT NULL,
  PRIMARY KEY (`per_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `per_permissoes`
--

LOCK TABLES `per_permissoes` WRITE;
/*!40000 ALTER TABLE `per_permissoes` DISABLE KEYS */;
/*!40000 ALTER TABLE `per_permissoes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `per_view`
--

DROP TABLE IF EXISTS `per_view`;
/*!50001 DROP VIEW IF EXISTS `per_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `per_view` (
  `per_codigo` tinyint NOT NULL,
  `per_pergunta` tinyint NOT NULL,
  `mod_codigo` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `pes_pessoas`
--

DROP TABLE IF EXISTS `pes_pessoas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pes_pessoas` (
  `pes_codigo` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `pes_nome` varchar(150) NOT NULL,
  `pes_dataNascimento` date NOT NULL,
  `pes_sexo` enum('Masculino','Feminino') NOT NULL,
  `pes_email` varchar(150) NOT NULL,
  `usu_codigo` int(11) DEFAULT NULL,
  `pes_tipoPessoa` enum('Aluno','Professor','Visitante') NOT NULL,
  `pes_localTrabalho` varchar(100) NOT NULL,
  `pes_faixaSarial` double DEFAULT NULL,
  `pes_matriculaInterna` int(11) DEFAULT NULL,
  `pes_semestreAtual` int(11) DEFAULT NULL,
  `pes_cursoMatriculado` varchar(100) DEFAULT NULL,
  `pes_site` varchar(100) DEFAULT NULL,
  `pes_telefone` int(30) DEFAULT NULL,
  `pes_areaAtuacao` varchar(45) DEFAULT NULL,
  `pes_disciplina` int(11) DEFAULT NULL,
  PRIMARY KEY (`pes_codigo`),
  KEY `fk_pes_pessoas_usu_usuario1_idx` (`usu_codigo`),
  CONSTRAINT `fk_pes_pessoas_usu_usuario1` FOREIGN KEY (`usu_codigo`) REFERENCES `usu_usuarios` (`usu_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 PACK_KEYS=0;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pes_pessoas`
--

LOCK TABLES `pes_pessoas` WRITE;
/*!40000 ALTER TABLE `pes_pessoas` DISABLE KEYS */;
/*!40000 ALTER TABLE `pes_pessoas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `que_questionarios`
--

DROP TABLE IF EXISTS `que_questionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `que_questionarios` (
  `que_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `que_pontos` double DEFAULT NULL,
  `mod_codigo` int(11) DEFAULT NULL,
  `cla_codigo` int(11) DEFAULT NULL,
  `eve_codigo` int(11) NOT NULL,
  `que_inicio` datetime NOT NULL,
  `que_fim` datetime DEFAULT NULL,
  `usu_codigo` int(11) NOT NULL,
  PRIMARY KEY (`que_codigo`),
  KEY `fk_que_questionarios_mod_has_cla1_idx` (`mod_codigo`,`cla_codigo`),
  KEY `fk_que_questionarios_eve_eventos1_idx` (`eve_codigo`),
  KEY `fk_que_questionarios_usu_usuarios1_idx` (`usu_codigo`),
  CONSTRAINT `fk_que_questionarios_mod_has_cla1` FOREIGN KEY (`mod_codigo`, `cla_codigo`) REFERENCES `moc_modeloClassificacao` (`mod_codigo`, `cla_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_que_questionarios_eve_eventos1` FOREIGN KEY (`eve_codigo`) REFERENCES `eve_eventos` (`eve_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_que_questionarios_usu_usuarios1` FOREIGN KEY (`usu_codigo`) REFERENCES `usu_usuarios` (`usu_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `que_questionarios`
--

LOCK TABLES `que_questionarios` WRITE;
/*!40000 ALTER TABLE `que_questionarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `que_questionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `res_respostas`
--

DROP TABLE IF EXISTS `res_respostas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `res_respostas` (
  `res_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `que_codigo` int(11) NOT NULL,
  `alt_codigo` int(11) NOT NULL,
  PRIMARY KEY (`res_codigo`),
  KEY `fk_res_respostas_que_questionarios1_idx` (`que_codigo`),
  KEY `fk_res_respostas_alt_alternativas1_idx` (`alt_codigo`),
  CONSTRAINT `fk_res_respostas_que_questionarios1` FOREIGN KEY (`que_codigo`) REFERENCES `que_questionarios` (`que_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_res_respostas_alt_alternativas1` FOREIGN KEY (`alt_codigo`) REFERENCES `alt_alternativas` (`alt_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `res_respostas`
--

LOCK TABLES `res_respostas` WRITE;
/*!40000 ALTER TABLE `res_respostas` DISABLE KEYS */;
/*!40000 ALTER TABLE `res_respostas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tim_tipoModelo`
--

DROP TABLE IF EXISTS `tim_tipoModelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tim_tipoModelo` (
  `tim_codigo` int(11) NOT NULL AUTO_INCREMENT,
  `tim_nome` varchar(100) NOT NULL,
  PRIMARY KEY (`tim_codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tim_tipoModelo`
--

LOCK TABLES `tim_tipoModelo` WRITE;
/*!40000 ALTER TABLE `tim_tipoModelo` DISABLE KEYS */;
INSERT INTO `tim_tipoModelo` VALUES (1,'Perfil do Investidor'),(2,'Educação Financeira'),(3,'Questionário Empresárial');
/*!40000 ALTER TABLE `tim_tipoModelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tip_usuarioTipos`
--

DROP TABLE IF EXISTS `tip_usuarioTipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tip_usuarioTipos` (
  `tip_codigo` int(11) NOT NULL,
  `tip_tipo` varchar(45) NOT NULL,
  `per_codigo` int(11) NOT NULL,
  PRIMARY KEY (`tip_codigo`,`per_codigo`),
  KEY `fk_tip_usuarioTipos_per_permissoes1_idx` (`per_codigo`),
  CONSTRAINT `fk_tip_usuarioTipos_per_permissoes1` FOREIGN KEY (`per_codigo`) REFERENCES `per_permissoes` (`per_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tip_usuarioTipos`
--

LOCK TABLES `tip_usuarioTipos` WRITE;
/*!40000 ALTER TABLE `tip_usuarioTipos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tip_usuarioTipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usu_usuarios`
--

DROP TABLE IF EXISTS `usu_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usu_usuarios` (
  `usu_codigo` int(11) NOT NULL,
  `usu_usuario` varchar(255) NOT NULL,
  `usu_senha` varchar(255) NOT NULL,
  `usu_status` enum('online','offline') NOT NULL,
  `tip_codigo` int(11) NOT NULL,
  `pes_codigo` int(11) unsigned NOT NULL,
  PRIMARY KEY (`usu_codigo`),
  KEY `fk_usu_usuario_tip_usuarioTipo1_idx` (`tip_codigo`),
  KEY `fk_usu_usuario_pes_pessoas1_idx` (`pes_codigo`),
  CONSTRAINT `fk_usu_usuario_tip_usuarioTipo1` FOREIGN KEY (`tip_codigo`) REFERENCES `tip_usuarioTipos` (`tip_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_usu_usuario_pes_pessoas1` FOREIGN KEY (`pes_codigo`) REFERENCES `pes_pessoas` (`pes_codigo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usu_usuarios`
--

LOCK TABLES `usu_usuarios` WRITE;
/*!40000 ALTER TABLE `usu_usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `usu_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `alt_view`
--

/*!50001 DROP TABLE IF EXISTS `alt_view`*/;
/*!50001 DROP VIEW IF EXISTS `alt_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `alt_view` AS select `alt_alternativas`.`alt_codigo` AS `alt_codigo`,`alt_alternativas`.`alt_alternativa` AS `alt_alternativa`,`alt_alternativas`.`alt_peso` AS `alt_peso`,`alt_alternativas`.`per_codigo` AS `per_codigo` from `alt_alternativas` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `cla_view`
--

/*!50001 DROP TABLE IF EXISTS `cla_view`*/;
/*!50001 DROP VIEW IF EXISTS `cla_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `cla_view` AS select `cla_classificacoes`.`cla_codigo` AS `cla_codigo`,`cla_classificacoes`.`cla_pontosMax` AS `cla_pontosMax`,`cla_classificacoes`.`cla_descricao` AS `cla_descricao`,`cla_classificacoes`.`cla_nome` AS `cla_nome` from `cla_classificacoes` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mev_view`
--

/*!50001 DROP TABLE IF EXISTS `mev_view`*/;
/*!50001 DROP VIEW IF EXISTS `mev_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `mev_view` AS select `mev_modelosEventos`.`mod_codigo` AS `mod_codigo`,`mev_modelosEventos`.`eve_codigo` AS `eve_codigo` from `mev_modelosEventos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mod_editar_view`
--

/*!50001 DROP TABLE IF EXISTS `mod_editar_view`*/;
/*!50001 DROP VIEW IF EXISTS `mod_editar_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `mod_editar_view` AS select `mod_modelos`.`mod_codigo` AS `mod_codigo`,`mod_modelos`.`mod_nome` AS `mod_nome`,`mod_modelos`.`mod_habilitado` AS `mod_habilitado`,`mod_modelos`.`mod_editar` AS `mod_editar`,`mod_modelos`.`mod_descricao` AS `mod_descricao`,`mod_modelos`.`tim_codigo` AS `tim_codigo` from `mod_modelos` where (`mod_modelos`.`mod_editar` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mod_view`
--

/*!50001 DROP TABLE IF EXISTS `mod_view`*/;
/*!50001 DROP VIEW IF EXISTS `mod_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `mod_view` AS select `mod_modelos`.`mod_codigo` AS `mod_codigo`,`mod_modelos`.`mod_nome` AS `mod_nome`,`mod_modelos`.`mod_habilitado` AS `mod_habilitado`,`mod_modelos`.`mod_editar` AS `mod_editar`,`mod_modelos`.`mod_descricao` AS `mod_descricao`,`mod_modelos`.`tim_codigo` AS `tim_codigo`,if((`mod_modelos`.`mod_habilitado` = 0),'Desabilitado','Habilitado') AS `habilitado` from `mod_modelos` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `per_view`
--

/*!50001 DROP TABLE IF EXISTS `per_view`*/;
/*!50001 DROP VIEW IF EXISTS `per_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `per_view` AS select `per_perguntas`.`per_codigo` AS `per_codigo`,`per_perguntas`.`per_pergunta` AS `per_pergunta`,`per_perguntas`.`mod_codigo` AS `mod_codigo` from `per_perguntas` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-10-29 16:12:47
