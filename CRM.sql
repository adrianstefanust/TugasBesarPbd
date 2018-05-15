-- MySQL dump 10.16  Distrib 10.1.25-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: crm
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin1','admin1','vincent'),(2,'admin2','admin2','hengky stephen'),(3,'admin3','admin1','test');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `idCustomer` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `idLokasi` int(6) unsigned DEFAULT NULL,
  `tanggalLahir` date DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `nilaiInvestasi` int(11) DEFAULT NULL,
  `idAdmin` int(11) unsigned DEFAULT NULL,
  `tanggalMasuk` date DEFAULT NULL,
  PRIMARY KEY (`idCustomer`),
  KEY `idLokasi` (`idLokasi`),
  KEY `idAdmin` (`idAdmin`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`idLokasi`) REFERENCES `lokasi` (`idLokasi`),
  CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`idAdmin`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=524 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Evania Diggina',11,'1990-03-29','86 Sachs Points',1423216,3,'2006-09-12'),(2,'Lexine Searston1',10,'1997-02-14','59224 Jenifer Circle',18275499,1,'1999-02-06'),(3,'Janina Coombs',6,'1973-04-30','2 Hooker Avenue',40859247,2,'2004-09-03'),(4,'Lotta Yarnall',7,'1980-12-23','3 Doe Crossing Avenue',13434991,1,'1998-04-02'),(5,'Darin Sillis',13,'1981-02-26','8049 Eagle Crest Plaza',14684698,1,'2002-11-04'),(6,'Rasla BouldstridCustomerge',15,'1982-08-03','68 Mosinee Junction',8056164,2,'2013-05-25'),(7,'Cilka GowdridCustomerge',10,'1956-12-11','39965 Drewry Avenue',49514607,1,'2011-12-16'),(8,'Rudie Easun',15,'1982-08-17','070 6th Circle',48092072,3,'2004-10-10'),(9,'April Bothwell',7,'1989-07-10','360 Shoshone Plaza',33081105,1,'2002-11-21'),(10,'Cristian Cattlemull',9,'1992-05-01','562 Ohio Plaza',12173357,3,'2011-03-15'),(11,'Tabatha Caplin',6,'1988-05-27','4 Artisan Plaza',33363083,3,'2013-02-22'),(12,'Vinni Slocom',16,'1977-01-07','8335 Dovetail Drive',6193702,1,'2015-09-22'),(13,'Junina Devers',7,'1966-08-10','109 Canary Parkway',40038339,1,'2004-09-05'),(14,'Dee Skase',9,'1961-01-08','4553 Hanson Crossing',25449958,3,'2004-03-23'),(15,'Tybi Hearnden',10,'1961-05-17','661 Blaine Road',22835070,3,'2013-07-05'),(16,'Andie Fretson',9,'1960-07-16','7856 Cardinal Point',27634181,1,'2014-06-26'),(17,'Levy Bagnell',6,'1956-04-08','75 Hanson Crossing',15084076,3,'2009-02-11'),(18,'Niccolo Taphouse',7,'1964-04-20','21 Kenwood Parkway',4226268,2,'1997-03-01'),(19,'Hendrika Kahn',12,'1997-11-02','01062 Express Circle',1299712,1,'2013-04-20'),(20,'Allyn Cassedy',12,'1992-06-25','7919 Havey Park',48004958,1,'2016-07-09'),(21,'Meredeth Schermick',17,'1959-02-21','08385 Dapin Drive',5186036,3,'2006-12-26'),(22,'Lulu Fawcett',19,'1989-12-25','152 Hintze Crossing',13846420,2,'2007-10-04'),(23,'Nancy Lyste',16,'1996-02-12','1 Nobel Park',30622945,1,'1999-09-11'),(24,'Willi Cowdrey',12,'1966-01-15','4600 NorthridCustomerge Hill',7379407,3,'2004-12-27'),(25,'Cate Gerb',16,'1977-04-08','085 Canary Drive',18140401,2,'2014-10-17'),(26,'Art Toner',6,'1994-01-06','6584 Chinook Parkway',4952421,3,'2001-11-19'),(27,'Crosby Cettell',9,'1984-06-29','0 Eggendart Center',32204072,2,'2007-01-24'),(28,'Jaime Dumbreck',7,'1988-01-12','9 Blue Bill Park Crossing',46925964,1,'1998-04-27'),(29,'Chicky Hawke',18,'1998-03-24','08 Morrow Point',27493974,1,'2010-11-01'),(30,'Andee Bainbrigge',15,'2000-08-16','65238 VidCustomeron Parkway',28024630,1,'2012-10-18'),(31,'Vanny Flamank',8,'1978-11-04','4 BaysidCustomere Park',39252047,2,'2005-04-01'),(32,'Pyotr Huc',15,'1985-01-13','47729 Manufacturers Trail',46890926,2,'2016-08-21'),(33,'Hobie Kleimt',7,'1968-04-13','0 Nevada Terrace',26791041,3,'1999-09-20'),(34,'Trevar Brixey',8,'1992-10-18','657 Glendale Circle',40208481,1,'2004-03-21'),(35,'Rees Antrack',8,'1956-11-23','9 Melody Terrace',23354677,1,'2009-03-30'),(36,'Kienan McFadzean',14,'1966-12-18','50607 Marquette Crossing',21312120,2,'2007-09-28'),(37,'Theodosia Pillinger',18,'1991-09-11','31554 Barby Plaza',9862532,2,'2004-07-10'),(38,'Walt Eddies',9,'1971-12-12','2 Moose Road',37220074,1,'2012-03-07'),(39,'Rocky Casassa',15,'1977-04-24','7 WayridCustomerge Trail',35526340,2,'2000-04-25'),(40,'Cherrita Keneford',9,'1999-08-08','62 Graedel Center',32670241,1,'2009-12-28'),(41,'Kameko Westcar',13,'1974-08-25','793 Valley Edge Alley',15754759,3,'2003-04-24'),(42,'Bernardo Leyden',17,'1982-08-02','8974 Holmberg Road',21620557,2,'2009-07-28'),(43,'Bili Spackman',6,'1982-11-08','6 Ramsey Trail',20440110,2,'1998-07-18'),(44,'Llewellyn Alfonsetti',12,'1972-05-12','461 Transport Pass',45814624,3,'2006-07-19'),(45,'Hewet Minifie',15,'1999-12-12','397 Esch Plaza',46969155,3,'2014-06-04'),(46,'Delilah Rosenauer',13,'1980-08-18','68136 Ronald Regan Center',46647238,2,'2010-03-26'),(47,'Janos Pinn',17,'1964-10-28','4682 American Drive',5390554,3,'2002-08-09'),(48,'Cosetta Pinnigar',18,'1987-12-02','07 Bellgrove Street',48853958,1,'2017-02-04'),(49,'Bili Ranaghan',17,'1962-01-27','36 Nelson Avenue',48852419,3,'2009-11-15'),(50,'Nev Wolpert',11,'1985-06-15','45 Emmet Way',18630754,1,'1999-06-30'),(51,'Merilee Treuge',10,'1980-07-15','65 Grayhawk Street',25786920,2,'1998-12-22'),(52,'Nichole Levett',10,'1994-03-02','37554 Spenser Place',42636237,1,'2001-01-24'),(53,'Errick Treadway',19,'1971-03-08','840 Lindbergh Street',5297599,1,'2000-05-25'),(54,'Olimpia Fumagalli',17,'1976-10-29','756 Almo Way',21910731,1,'2004-02-29'),(55,'Carlos Wondraschek',17,'1955-11-24','68 Garrison Center',34227323,1,'2006-01-02'),(56,'Gwendolen Charville',9,'1958-06-04','169 Menomonie Point',15533980,1,'2001-02-16'),(57,'Suzy Beavis',8,'1982-04-19','5770 Dakota Way',10347826,1,'2005-01-30'),(58,'Baxy Wallhead',17,'1987-10-27','21476 Eagan Center',15093779,3,'2005-07-14'),(59,'Katti Bourthouloume',12,'1974-06-13','9 Mayer Court',48963827,1,'2003-09-21'),(60,'Daniele Axtens',15,'1985-10-11','252 Maywood Place',16905143,1,'1998-09-12'),(61,'Wilie Chupin',16,'1959-09-12','93 Havey Avenue',44242690,2,'1997-01-04'),(62,'Burgess St. Hill',16,'1995-08-30','92300 Jenifer Lane',35973236,2,'2007-02-01'),(63,'Kev Izkovicz',17,'1961-08-27','9 SouthridCustomerge Place',32850553,1,'1998-09-01'),(64,'Olly Edgcumbe',14,'1989-02-26','82810 Commercial Lane',20689607,1,'2000-02-29'),(65,'Roman Ramstead',6,'1969-03-22','85221 Loftsgordon Court',10373838,2,'2011-04-05'),(66,'Baxter Mazey',16,'1959-06-27','7926 Drewry Parkway',843259,2,'1999-06-12'),(67,'Ignatius Fear',11,'1993-12-25','25 Daystar Trail',10090421,1,'2011-09-29'),(68,'Charleen Darragon',11,'1975-06-28','463 Huxley Junction',14693828,3,'2010-08-22'),(69,'Gawen Brimming',19,'1972-02-22','7 Rowland Way',1170027,3,'2013-03-13'),(70,'Carter Cecely',16,'1963-10-27','84261 Oneill Place',42047713,3,'2003-09-14'),(71,'Frederic Winning',18,'1988-12-05','5 Shopko Parkway',6368340,3,'2003-11-25'),(72,'Bobinette Riatt',18,'1981-09-29','05779 Green RidCustomerge Center',41840970,1,'1999-12-16'),(73,'Rey Wickersham',6,'1980-03-17','60039 Pearson Hill',46660780,3,'2002-05-07'),(74,'Rip Tweedie',17,'1979-06-12','598 Ryan Avenue',42943874,3,'1997-03-11'),(75,'Glenden Bowick',10,'1962-06-18','4 Mifflin Parkway',38113462,2,'2004-06-27'),(76,'Trudie Mullins',12,'1999-01-31','40 Gale Way',26753215,1,'2000-09-03'),(77,'Simonne Hansed',13,'1999-05-01','6936 School Crossing',31119414,2,'2011-07-19'),(78,'Kendre Ravillas',16,'1987-02-08','6050 Fulton Road',16007157,2,'2011-11-05'),(79,'Sissie Brinded',11,'1993-07-16','9955 Farwell Alley',9407044,1,'2018-04-12'),(80,'Barny Reaman',7,'1996-08-30','79793 Bartelt Center',11012161,1,'2017-02-12'),(81,'SidCustomernee McConnel',7,'1994-03-09','12006 Paget Alley',23544182,2,'1998-02-11'),(82,'Ameline Aizikovitch',12,'1963-05-05','71341 SutteridCustomerge Terrace',46015532,2,'2011-02-26'),(83,'Nathaniel Seamans',9,'1998-01-08','04 Scott Terrace',27369680,1,'2000-01-07'),(84,'Carley Shilvock',6,'1957-10-30','15 Del Mar Drive',23359368,2,'2014-06-04'),(85,'Otha Scarth',15,'1975-03-04','0304 Londonderry Road',27967146,2,'1998-10-27'),(86,'Waylin Rouby',14,'1998-05-31','3 Blackbird Pass',21989619,1,'2010-06-22'),(87,'Tillie Mattke',15,'1992-06-11','89 Mccormick Center',28699347,3,'2015-07-04'),(88,'Elle Stiven',11,'1959-01-02','534 Briar Crest Pass',23423941,1,'2003-12-28'),(89,'Fanchon Lashmore',11,'1968-06-16','73 NorthridCustomerge Pass',6462990,2,'2016-11-03'),(90,'Moyra Hartin',17,'2000-11-08','36 La Follette Drive',43157224,3,'2005-01-05'),(91,'Saloma Hubbucks',19,'1979-03-26','3539 Annamark Terrace',48302125,3,'2000-01-09'),(92,'Dareen Bande',6,'1964-04-29','868 Mockingbird Hill',16511635,3,'2011-03-12'),(93,'Marney Myhan',15,'1996-08-29','538 Fallview Lane',47959247,1,'2016-03-14'),(94,'Goraud Foyle',12,'1964-01-26','9 Derek Crossing',46410320,1,'2006-04-09'),(95,'Cally Hazeley',11,'1959-05-10','83 RiversidCustomere Terrace',12680986,1,'2008-04-05'),(96,'Thalia Tankard',12,'1968-09-25','54 Lakeland Street',32179401,3,'1997-09-02'),(97,'Irvin Lorain',17,'1955-08-26','5 Linden Lane',23721811,3,'2014-01-18'),(98,'Gretel Scone',19,'1979-04-29','819 Welch Avenue',34997709,3,'1997-08-30'),(99,'Kiel Kitchen',6,'1990-12-07','4 Macpherson Hill',28133876,1,'2016-07-13'),(100,'Manfred Hedley',14,'1973-06-14','28693 Glacier Hill Park',13298480,1,'2003-11-05'),(101,'Hobey Anglish',16,'1964-02-06','18 Dayton Terrace',24244129,3,'2013-05-01'),(102,'Garret Benford',13,'1958-06-01','5 Lien Drive',32184399,1,'2008-08-18'),(103,'Suzette Colleck',11,'1965-11-13','60233 Jana Hill',32328874,2,'2016-10-07'),(104,'Sabina Layhe',18,'1957-04-21','21 Northland Way',21632828,1,'2013-09-30'),(105,'Rodina Hadfield',10,'1986-10-14','30416 Paget Junction',34559795,NULL,'2012-07-22'),(106,'Meggie Skein',15,'1990-04-17','4 Judy Lane',45515128,2,'2014-03-22'),(107,'Carole Delmonti',19,'1959-03-05','1 Center Hill',27980130,1,'2007-04-07'),(108,'Horton BridCustomerden',8,'1955-07-20','2 SheridCustomeran Terrace',6003937,3,'2006-12-21'),(109,'Sim Raith',15,'1957-06-15','371 Birchwood Crossing',15883100,1,'2010-10-27'),(110,'Vonnie Plaskitt',10,'1982-10-24','64 Burning Wood Crossing',31379010,3,'2006-07-03'),(111,'Marcy Stodd',12,'1973-05-25','141 Delladonna Terrace',1655437,3,'2010-09-15'),(112,'Mikkel Boddis',14,'1982-09-10','61244 Kim Center',21758634,1,'2017-12-28'),(113,'Margi Petrovic',11,'1967-04-01','1479 Hintze Road',39867363,1,'2005-03-19'),(114,'Leland Czajkowski',9,'1965-10-31','66 Reindahl Lane',12455599,3,'2006-02-20'),(115,'Penrod RidCustomeres',13,'1994-04-23','4848 Memorial Road',16705809,3,'2005-10-23'),(116,'Rossie Pickle',7,'1963-02-19','649 Springs Court',49079714,1,'2005-12-10'),(117,'Almire Vasyukov',8,'1991-10-09','359 Burning Wood Point',36355099,3,'2017-05-13'),(118,'Kirstin Lawrenson',19,'1999-10-18','826 Ruskin Pass',6527887,2,'2009-08-31'),(119,'Emelia Gabbetis',15,'1959-05-14','0059 Dottie Plaza',43284698,1,'2003-11-10'),(120,'Donia Kaes',8,'1964-06-18','8 Dahle Park',37571026,1,'1999-04-09'),(121,'adrian',7,'1963-02-19','unpar',30000,NULL,'2003-02-07'),(122,'adrian1',6,'1963-02-19','unpar',30000,NULL,'1998-12-20'),(123,'Dana Golden',37,'1992-08-22','P.O. Box 395, 3348 Curabitur Rd.',98291405,3,'2013-10-27'),(124,'Kane Chang',39,'1963-09-07','Ap #732-6271 Turpis. Avenue',10538928,2,'2003-09-22'),(125,'Kelly Nolan',53,'1920-06-30','Ap #584-7701 Id, Rd.',62506614,3,'2006-10-27'),(126,'Ivan Porter',31,'1943-07-26','Ap #548-6569 Libero. St.',69067752,2,'2016-04-25'),(127,'Clayton Shaw',42,'1920-04-15','Ap #384-5649 Tempor Rd.',23641023,3,'2015-09-09'),(128,'Eagan Vaughn',25,'1963-08-15','562-4885 Vitae Av.',97881071,2,'2015-12-02'),(129,'Todd Roberts',23,'1989-07-04','P.O. Box 373, 3319 Odio, Avenue',95787394,1,'2012-02-12'),(130,'Brody Morton',53,'1977-12-07','Ap #264-5736 Arcu. St.',11962246,2,'2003-08-10'),(131,'Nathan Carson',33,'1995-07-08','6504 Sed Rd.',70216379,1,'2012-12-09'),(132,'Evangeline Malone',42,'1949-08-27','P.O. Box 141, 9265 Sit Road',31654245,1,'2014-09-10'),(133,'Ivor Wiley',54,'1987-08-21','Ap #118-4113 Lorem. Rd.',36162531,2,'2006-02-04'),(134,'Silas Leonard',50,'1994-08-07','5711 A Ave',88953505,2,'2007-12-09'),(135,'Keith Mcdowell',42,'1955-09-09','P.O. Box 903, 7804 Urna. Avenue',81311656,1,'1998-01-26'),(136,'Colby Stokes',36,'1994-09-28','303 Ut St.',94085224,2,'2012-09-20'),(137,'Ramona Nichols',49,'1942-08-20','P.O. Box 407, 8681 Dolor, Street',57468560,3,'2017-02-20'),(138,'Joan Hudson',26,'1938-12-25','9908 A, St.',61768976,3,'2012-11-27'),(139,'Burton Wright',42,'1995-07-21','288-3742 Sollicitudin Road',93629726,2,'1997-09-25'),(140,'Jeremy Mercado',28,'1933-05-03','Ap #134-6442 Molestie Av.',60375274,2,'2012-09-09'),(141,'Jesse Sparks',36,'1980-03-26','P.O. Box 277, 9057 Neque Av.',86228523,2,'2017-06-26'),(142,'Lillian Pope',46,'1952-04-30','P.O. Box 476, 1292 Elit Rd.',27180258,3,'2010-11-22'),(143,'Yeo Silva',51,'1966-08-10','903-824 Magna Ave',50796748,1,'2004-02-10'),(144,'Gannon Lane',51,'1937-08-01','P.O. Box 111, 4352 Litora Rd.',5948890,1,'2008-09-12'),(145,'Lucius Burch',49,'1971-09-05','P.O. Box 635, 1966 Velit. Street',14305145,2,'2003-12-25'),(146,'Ivor Espinoza',52,'1978-02-05','7480 Enim Ave',97780806,3,'2008-06-30'),(147,'Alyssa Stephenson',51,'1941-04-30','P.O. Box 943, 8051 Integer St.',53818639,3,'2002-11-10'),(148,'Valentine Parsons',47,'1922-08-21','833-3757 Dolor. Ave',72043309,3,'2015-03-14'),(149,'Belle Leonard',32,'1983-05-14','P.O. Box 324, 9579 Interdum Av.',61950166,3,'2006-12-25'),(150,'Seth Russo',35,'1981-11-23','Ap #859-376 Aliquam Avenue',46820057,2,'2002-08-01'),(151,'Lillith Fields',46,'1991-10-20','546-6760 Auctor Av.',1465988,1,'2002-10-22'),(152,'Yoshio Pugh',33,'1924-10-24','5735 Amet Avenue',57412902,3,'2003-08-29'),(153,'Lester Brown',37,'1946-06-30','760 Fusce St.',32377372,1,'2017-02-24'),(154,'Knox Morin',34,'1937-11-03','6286 Ac St.',10954533,1,'2013-04-14'),(155,'Zephania Hinton',27,'1933-12-05','838-6417 Luctus Road',77816392,1,'2003-07-16'),(156,'Zenaida Holland',44,'1994-12-24','735-5700 Scelerisque Av.',87381580,3,'2006-11-04'),(157,'Kenneth Norris',48,'1963-12-01','391-9776 Scelerisque Rd.',47714369,3,'2013-08-21'),(158,'Thor Lara',48,'1960-05-13','Ap #414-5016 Id St.',67706113,2,'2009-07-24'),(159,'Haley Freeman',25,'1941-09-22','991-1441 Malesuada Av.',82835851,2,'2004-07-20'),(160,'Drake Macias',47,'1995-07-25','689-9739 Nisi. St.',61140984,3,'2001-03-05'),(161,'Rhiannon Quinn',54,'1995-04-30','237-3457 Dapibus Ave',52258225,2,'2018-04-26'),(162,'Sarah Moore',48,'1946-11-12','957-3763 Urna Rd.',1984689,3,'2017-01-02'),(163,'Alyssa Chandler',30,'1996-05-01','Ap #846-3969 Posuere Ave',67659279,1,'2003-03-31'),(164,'Jarrod Carter',29,'1930-06-02','P.O. Box 347, 1504 Tempus Rd.',32518097,3,'2009-03-30'),(165,'Madonna Ware',42,'1957-06-10','932-7950 Egestas Av.',46099058,3,'2006-02-03'),(166,'Claudia Sawyer',27,'1963-07-16','551-5087 Malesuada Road',32806656,3,'2010-03-31'),(167,'Nyssa Manning',30,'1958-06-13','1137 Nulla. St.',78514944,2,'2000-02-26'),(168,'Samson Patrick',54,'1946-08-20','560-4353 Donec Ave',39829202,3,'1999-01-27'),(169,'Ivory Berg',42,'1976-11-01','Ap #453-1185 Interdum. St.',94886829,1,'2010-12-30'),(170,'Lydia Shepard',48,'1930-03-10','907-1865 Nec Av.',64522435,2,'1999-11-22'),(171,'Iris Schultz',46,'1954-08-21','7419 Lobortis. Road',2007195,2,'2017-03-13'),(172,'Lawrence Huber',41,'1947-05-22','P.O. Box 405, 2656 Ornare. Rd.',68292515,2,'1998-11-24'),(173,'Orson Farmer',50,'1948-01-30','Ap #804-4259 Nulla St.',66618458,3,'2000-03-27'),(174,'Emery Poole',50,'1935-01-04','Ap #126-195 Ornare Avenue',25901370,2,'1998-12-31'),(175,'Amity Jarvis',36,'1944-12-24','820-7373 Morbi Rd.',58606736,1,'2002-02-22'),(176,'Carissa Cook',27,'1968-12-07','4107 Enim. Rd.',35803235,1,'2003-05-23'),(177,'Kimberley Allen',24,'1990-08-16','P.O. Box 298, 9722 Sit Avenue',26498026,3,'2012-12-28'),(178,'Dean Pickett',49,'1981-11-02','3246 Ligula. Road',40289274,3,'2004-06-01'),(179,'Harriet Noel',49,'1961-04-09','P.O. Box 161, 7809 Egestas. Rd.',34799011,2,'1998-01-29'),(180,'Pearl Mcintosh',36,'1981-07-26','899-9605 Lectus St.',55151794,1,'2010-07-11'),(181,'Macy Lee',34,'1993-11-24','Ap #686-1614 Malesuada Road',51849953,3,'1998-10-12'),(182,'Gareth Foreman',43,'1953-08-04','Ap #742-8879 Aliquam Rd.',46273477,1,'2008-06-14'),(183,'Devin Wheeler',48,'1951-05-21','382-1150 Sit Ave',86799430,3,'2003-01-05'),(184,'Audrey Mccoy',49,'1929-01-14','Ap #192-1356 Nunc St.',5113029,3,'2003-03-31'),(185,'Stella Dean',26,'1949-10-08','Ap #704-1860 Id St.',77509469,3,'1997-11-22'),(186,'Jared Whitfield',48,'1946-02-12','9270 Feugiat Rd.',71801001,1,'1997-03-17'),(187,'Serena Jenkins',38,'1936-05-25','Ap #120-2083 Feugiat Av.',3680275,1,'2012-08-06'),(188,'Hop Nichols',24,'1928-11-10','Ap #372-2808 Commodo Street',69150867,3,'2016-07-06'),(189,'Joan Head',29,'1944-11-06','P.O. Box 527, 6774 Elit, Street',46210310,2,'2005-05-15'),(190,'Tamara Adams',36,'1938-06-29','Ap #324-539 Dolor. Ave',93171443,3,'2005-04-24'),(191,'Rama Lane',47,'1937-07-25','P.O. Box 335, 9645 Cras Street',72209322,3,'2016-02-01'),(192,'Carlos Barnett',46,'1944-02-08','5103 Sociis St.',50082635,1,'2014-03-21'),(193,'Eliana Levy',44,'1924-01-17','Ap #356-290 Nulla St.',50113604,1,'2009-12-30'),(194,'Jin Kidd',45,'1919-11-07','871-4910 Velit. Road',41091658,1,'2003-01-25'),(195,'Shafira York',27,'1955-04-22','827-890 Maecenas Avenue',27942761,1,'2007-05-20'),(196,'Mufutau Lara',41,'1923-06-25','8722 Facilisis. St.',93901952,3,'2017-09-16'),(197,'Blaze Clayton',31,'1923-11-25','513 Sit Road',89064012,1,'2011-10-18'),(198,'Scarlet Vang',42,'1944-05-09','Ap #564-7833 Est. Av.',94724562,1,'2000-09-06'),(199,'Colton Benton',27,'1978-09-14','Ap #932-8812 Nulla Rd.',84004128,1,'1997-05-30'),(200,'Buffy Ortega',44,'1947-01-04','272-7650 Etiam St.',89653260,2,'2009-02-28'),(201,'Linda Huber',25,'1921-11-17','6327 Morbi Avenue',98591444,3,'2015-03-26'),(202,'Meredith Moody',40,'1967-04-03','594-7248 In Road',57022495,1,'2011-06-05'),(203,'Samson Cain',54,'1969-08-13','793-569 Magnis Rd.',64799409,3,'2004-11-11'),(204,'Vera Buckley',34,'1984-12-26','296-305 Magnis Street',93004654,1,'2014-07-12'),(205,'Kieran Tyson',49,'1919-10-25','5894 Ut, Avenue',75053503,1,'2009-06-23'),(206,'Mikayla Stokes',32,'1947-01-13','713-5514 Lacus. Ave',9646082,1,'2003-05-09'),(207,'Judah Mays',33,'1991-12-18','Ap #989-4315 Vel, Ave',63146587,3,'2015-12-19'),(208,'Barry Baird',23,'1990-10-01','Ap #837-4485 Enim, Rd.',1517865,3,'2002-03-06'),(209,'Plato Woodard',28,'1976-04-21','2291 Lectus. Road',59991088,1,'1997-09-17'),(210,'Russell Adams',34,'1932-01-21','7407 Rhoncus Rd.',75347803,2,'2011-05-29'),(211,'Adam Dunlap',42,'1948-12-03','Ap #998-7332 Integer Av.',57462602,2,'2010-10-21'),(212,'Jordan Holland',51,'1949-02-03','761-101 Eu St.',2176650,2,'2012-05-06'),(213,'TaShya Nash',30,'1936-06-09','1198 Arcu. St.',25623081,2,'2016-07-11'),(214,'Wilma Cabrera',39,'1979-01-26','7248 Aliquet Av.',33520512,3,'2008-03-19'),(215,'Fitzgerald Goff',54,'1952-11-02','9804 Quis, St.',50535732,3,'2008-09-26'),(216,'Alfonso Burt',52,'1943-03-23','P.O. Box 430, 2861 Et Rd.',8669334,1,'2007-05-27'),(217,'Lisandra York',35,'1956-04-17','Ap #981-5423 Fringilla Road',65449435,3,'2003-03-04'),(218,'Seth Key',30,'1965-12-18','8955 Posuere Avenue',26930779,2,'2003-03-31'),(219,'Kuame Figueroa',48,'1937-10-29','P.O. Box 436, 5366 Eget St.',80530165,1,'2006-01-18'),(220,'Lee Estes',27,'1990-05-29','673-1526 Viverra. St.',21315414,2,'2009-10-23'),(221,'Clayton Hewitt',44,'1972-05-04','P.O. Box 314, 7754 Quisque Road',49094804,3,'2005-06-19'),(222,'Ivor Ramirez',26,'1920-07-16','217-9876 Vestibulum Street',25507801,2,'2009-02-05'),(223,'Brenda Snider',42,'1944-06-07','8903 Vestibulum St.',38946406,2,'1998-07-11'),(224,'Lane Gaines',33,'1922-05-30','P.O. Box 322, 9152 Sed, St.',63950463,1,'2011-04-08'),(225,'Demetria Gillespie',28,'1938-02-04','9215 Sodales Rd.',38683909,1,'2018-01-29'),(226,'Nero Hobbs',34,'1948-06-22','198-2123 Fames Rd.',80893938,3,'2005-03-21'),(227,'Conan Dejesus',33,'1976-03-11','Ap #421-6526 Eu Rd.',28474546,2,'2010-03-28'),(228,'Adrian Camacho',39,'1927-11-22','Ap #916-5639 Aliquam St.',48879970,2,'2008-06-06'),(229,'Rashad Conner',35,'1939-04-21','5905 Penatibus Road',17555906,1,'2002-03-19'),(230,'Carla Howard',28,'1921-02-23','P.O. Box 826, 9251 Ipsum. Rd.',54094445,2,'2013-09-03'),(231,'Yael Hensley',53,'1919-12-06','P.O. Box 597, 7206 Vivamus Rd.',19412877,1,'2017-06-04'),(232,'Yoko Mann',30,'1970-08-18','Ap #475-7453 Iaculis Av.',95123900,2,'2014-09-01'),(233,'Seth Roy',52,'1981-05-20','Ap #319-836 Ultrices St.',32853112,1,'2002-06-26'),(234,'MacKenzie Mcneil',38,'1953-09-18','Ap #167-5618 Tincidunt Rd.',4643481,2,'2008-09-24'),(235,'Amery Dixon',43,'1960-06-03','3643 Tortor St.',87341261,1,'2006-04-07'),(236,'Bruno Charles',37,'1919-08-05','P.O. Box 248, 1928 Eget St.',58045535,1,'2011-06-09'),(237,'Garrett Hamilton',30,'1945-02-12','Ap #858-5821 Morbi Road',10696026,3,'2013-01-24'),(238,'Duncan Rivers',37,'1982-10-11','4842 Adipiscing. St.',23033054,3,'1999-06-24'),(239,'Todd Washington',27,'1950-02-16','6472 Ligula. Ave',55587349,1,'2009-02-08'),(240,'Nero Langley',49,'1953-07-15','617-9356 Elit Av.',66022755,3,'2003-10-21'),(241,'Vladimir Barrett',41,'1951-11-04','Ap #511-7311 Aliquam Street',70757125,2,'2000-08-20'),(242,'Curran Wise',31,'1986-02-20','Ap #341-3740 Duis Street',62861957,1,'2001-01-15'),(243,'Regan Livingston',24,'1978-11-15','P.O. Box 818, 4371 Justo. St.',56260467,3,'2010-04-11'),(244,'Tad Nolan',50,'1972-12-05','P.O. Box 127, 4100 Praesent Rd.',16150993,3,'2001-04-25'),(245,'Kirsten Bender',54,'1946-01-09','Ap #177-4848 Enim. Ave',46978366,1,'2015-04-11'),(246,'Ezekiel Garza',53,'1940-08-03','689-5668 Semper Rd.',46624720,2,'2011-03-02'),(247,'Raphael Huber',47,'1967-12-18','888-7532 Justo Ave',99862140,1,'2003-05-31'),(248,'Rina Robbins',27,'1953-09-05','Ap #646-7907 Aliquet St.',33894220,3,'2017-09-19'),(249,'Cleo Clay',40,'1966-02-23','464-1638 In Road',8390988,1,'2014-11-20'),(250,'Elmo Kerr',42,'1974-08-03','P.O. Box 971, 367 Elementum, Av.',89688805,3,'2015-04-06'),(251,'Jack Mcmahon',52,'1982-05-14','6853 Id, St.',48439579,3,'2008-07-08'),(252,'Janna Trujillo',48,'1929-12-24','Ap #761-6347 Interdum Rd.',95086124,2,'2001-03-16'),(253,'Dominic Savage',48,'1992-11-22','7481 Ornare Av.',24527089,2,'2001-01-19'),(254,'Rama Johnston',54,'1962-07-19','P.O. Box 545, 8057 Posuere Rd.',17394128,1,'2010-01-12'),(255,'Hedley Hicks',26,'1988-10-13','P.O. Box 326, 1937 Fringilla, Rd.',23817577,3,'2018-01-13'),(256,'Zelda Parsons',43,'1925-05-24','P.O. Box 437, 8441 Mi Rd.',81409170,3,'2011-08-26'),(257,'Katelyn Wyatt',37,'1920-09-05','P.O. Box 817, 967 Dui Rd.',91035341,3,'1998-08-18'),(258,'James Hatfield',38,'1962-05-06','5650 Vel, Street',48835535,3,'2005-02-05'),(259,'Noble Love',32,'1987-03-21','4795 Ipsum Ave',43859361,3,'2015-05-19'),(260,'Chelsea Sawyer',35,'1928-10-08','Ap #265-958 Dui. Street',8815644,1,'2006-03-30'),(261,'Angelica Paul',48,'1940-04-30','1604 Non Rd.',70277823,3,'2008-11-26'),(262,'Florence Sellers',54,'1956-06-28','P.O. Box 834, 2926 Venenatis Rd.',36481544,2,'1997-04-05'),(263,'Kato Hester',32,'1933-08-02','2606 Morbi Av.',21844061,1,'2001-05-26'),(264,'Keefe Joyce',24,'1927-11-28','8620 Eget St.',98150036,3,'2012-08-26'),(265,'Azalia Mccray',50,'1975-11-22','Ap #485-1731 Volutpat. Road',19131229,3,'2012-11-05'),(266,'Tamekah Dillard',41,'1970-04-16','Ap #914-4706 At Rd.',79390470,3,'2004-07-21'),(267,'Abbot Carr',36,'1961-01-08','Ap #887-8567 Lacinia Road',51397531,2,'2016-07-11'),(268,'Uriah Pollard',39,'1969-05-04','P.O. Box 159, 4756 Donec St.',72447907,3,'1999-11-29'),(269,'Christian Gilbert',47,'1961-05-24','P.O. Box 491, 8127 Urna Street',75904437,3,'2006-02-15'),(270,'Iris Cannon',32,'1963-09-08','8878 Donec Avenue',26909240,2,'1997-04-08'),(271,'Donna Erickson',51,'1993-05-19','Ap #921-664 Ligula. Rd.',1095657,3,'2004-06-05'),(272,'Hector Robles',50,'1989-03-14','P.O. Box 120, 5211 Ligula. Rd.',47599493,2,'2004-07-05'),(273,'Rana Blevins',27,'1960-07-03','P.O. Box 565, 4323 Ornare. Ave',52253249,2,'2009-09-26'),(274,'Ulysses Boyle',39,'1995-09-09','4473 Sem Street',25323480,1,'2002-05-17'),(275,'Nathan Barker',36,'1994-07-18','P.O. Box 410, 2488 Nunc St.',22483299,3,'2003-10-07'),(276,'Arden Wall',30,'1987-10-31','311-6034 Nec Avenue',1497592,2,'1997-01-14'),(277,'Bert Nunez',37,'1925-03-08','P.O. Box 352, 6475 A St.',60309073,2,'2003-04-29'),(278,'Fredericka Howell',29,'1972-05-15','401-2234 A, St.',11658147,1,'2016-09-16'),(279,'Beverly Suarez',38,'1946-06-16','424-5655 Porttitor Av.',41053150,2,'2004-11-17'),(280,'Imani Bentley',39,'1961-08-17','6734 Vel, Rd.',45793631,1,'2000-06-25'),(281,'Idola Guzman',31,'1965-04-23','997-9059 Dictum Rd.',82919074,1,'2001-08-08'),(282,'Damian Zamora',33,'1995-11-15','7424 In Road',9109800,1,'1997-11-30'),(283,'Irma Small',24,'1962-04-03','P.O. Box 685, 8056 Ligula. Rd.',78140613,1,'2012-08-02'),(284,'Kaden Lambert',27,'1921-05-05','607-1022 Cum Av.',9818565,3,'2004-04-12'),(285,'Leila Macdonald',40,'1965-03-21','727-4197 Elit, Road',70415375,1,'2015-01-18'),(286,'Rina Buck',36,'1947-03-03','P.O. Box 939, 4890 Tellus. Ave',17791627,2,'2007-05-31'),(287,'Holmes Cote',38,'1921-06-03','Ap #819-1541 Egestas Road',65185406,3,'2009-11-12'),(288,'Byron Sweet',23,'1996-02-12','P.O. Box 593, 5849 Feugiat. Avenue',89024707,1,'2004-03-08'),(289,'Astra Henderson',28,'1934-11-23','5258 Consequat Rd.',71154733,3,'1997-02-06'),(290,'Finn Nichols',49,'1968-05-20','1241 Aliquam St.',84815548,1,'2011-05-02'),(291,'George Mendez',40,'1989-04-22','971-5777 Eget, Av.',73958786,3,'2000-02-14'),(292,'Cain Monroe',49,'1932-11-09','7051 Eget St.',1750209,1,'2014-12-12'),(293,'Geoffrey Ellis',28,'1939-11-12','4653 Curabitur Street',45200164,1,'2005-02-26'),(294,'Addison Mcintosh',27,'1989-07-05','2366 Nascetur Avenue',50221575,1,'2006-01-06'),(295,'Charissa Beard',39,'1936-04-07','831-4668 Maecenas St.',1756927,1,'2011-05-11'),(296,'Benedict Irwin',35,'1939-11-18','5126 Ut Av.',29608907,2,'2000-09-07'),(297,'Shellie Hood',26,'1984-07-10','929-2578 Sem, Rd.',20586419,2,'2015-09-09'),(298,'Philip Vincent',41,'1926-02-08','Ap #304-3663 Vitae Rd.',25442755,2,'2002-12-08'),(299,'Beau Nolan',48,'1968-02-29','6692 Est St.',8709289,1,'2008-07-26'),(300,'Nero Schroeder',43,'1922-08-03','181-7697 Nullam Street',66069964,1,'1999-07-17'),(301,'Tyrone Sargent',38,'1935-11-12','Ap #258-7033 Imperdiet Road',34177102,1,'2001-06-19'),(302,'Beatrice Hayden',53,'1994-08-14','8866 Dictum St.',27462965,3,'2014-02-18'),(303,'Roth Price',30,'1947-11-22','139-545 Nulla St.',90544922,3,'1998-10-25'),(304,'Jameson Cain',49,'1923-03-19','4035 Justo St.',24200271,1,'2006-12-26'),(305,'Bradley Sanford',40,'1966-01-27','9369 Neque. Rd.',25934782,1,'2008-08-22'),(306,'Octavia Horton',35,'1981-03-06','Ap #992-1698 Dignissim Street',69745858,2,'2007-08-07'),(307,'Adam Beasley',39,'1988-06-08','863-2372 Varius Street',53661759,3,'2016-08-26'),(308,'Kirk Dalton',45,'1979-03-22','P.O. Box 705, 9863 Dignissim Street',43117027,1,'2005-11-02'),(309,'Abigail Santana',49,'1969-06-28','P.O. Box 376, 7140 Et, St.',62895817,1,'2017-06-10'),(310,'Quail Aguirre',29,'1948-07-08','Ap #539-7538 Nec, Rd.',20053677,2,'2002-03-12'),(311,'Renee Hahn',53,'1929-06-08','P.O. Box 316, 2675 Nullam St.',55380579,3,'2005-06-17'),(312,'Rogan Madden',30,'1967-07-09','7546 Pede, Street',33573927,3,'2001-01-08'),(313,'Hu Boone',47,'1974-07-21','4775 Amet, Road',72621440,3,'1999-09-29'),(314,'Forrest Wright',42,'1953-03-31','5073 Malesuada. Avenue',15694662,1,'2017-12-24'),(315,'Rowan Bishop',24,'1980-07-12','8057 Nulla. Ave',11522850,3,'2001-10-18'),(316,'Damian Witt',47,'1958-12-25','Ap #378-8646 Nibh. Rd.',11287055,1,'2000-04-30'),(317,'Thane Kirkland',24,'1943-03-07','P.O. Box 532, 9472 Varius. Av.',14941257,2,'2014-08-20'),(318,'Genevieve Salas',48,'1968-03-25','625 A St.',35890358,2,'2003-10-06'),(319,'Ryan Gould',54,'1988-03-10','689-4147 Ligula. Rd.',41176438,3,'2009-08-11'),(320,'Bert Shaw',54,'1974-10-11','P.O. Box 905, 4119 Donec St.',1908694,2,'2016-02-25'),(321,'Louis Dunn',40,'1943-11-21','385-5334 In, St.',39566242,2,'2014-09-12'),(322,'Kirestin Stephenson',28,'1922-10-25','Ap #683-5834 Pretium Rd.',49186770,3,'2009-04-14'),(323,'Urielle Cruz',54,'1957-04-20','6879 Odio. Avenue',75451072,1,'2010-03-13'),(324,'Kyle May',54,'1922-12-17','8419 Felis Road',7560809,2,'2015-06-24'),(325,'Francis Joseph',33,'1977-01-25','3871 Consectetuer, Rd.',85283676,1,'1999-04-23'),(326,'Madonna Vincent',47,'1969-11-21','P.O. Box 614, 3247 Ac St.',34581457,2,'1997-08-22'),(327,'Rhonda Monroe',23,'1966-04-10','P.O. Box 284, 5991 Sed Rd.',29457165,1,'2014-06-22'),(328,'Cassidy Farley',35,'1977-12-01','P.O. Box 126, 1091 Dolor, Street',95431914,1,'2008-04-29'),(329,'Nevada Mcintosh',51,'1944-09-17','P.O. Box 497, 7208 Nunc, Rd.',58027766,1,'2012-01-17'),(330,'Montana Potter',29,'1960-09-26','238-4436 Amet Rd.',23327626,3,'2006-06-24'),(331,'Abigail Randolph',50,'1920-05-11','173 Lorem Rd.',57367996,1,'2003-01-25'),(332,'Joshua Reed',25,'1994-03-26','P.O. Box 532, 8248 Non Avenue',34622157,1,'2017-01-11'),(333,'Juliet Black',31,'1920-06-16','Ap #212-8951 Dis St.',18516526,3,'1999-01-21'),(334,'Darius Kirk',47,'1981-02-18','P.O. Box 995, 7152 Semper Rd.',63931950,2,'1999-10-24'),(335,'August Rowe',33,'1940-06-27','693-9587 Quis St.',77671567,1,'2014-12-12'),(336,'Anastasia Oneil',23,'1961-05-04','7028 Imperdiet Av.',64791753,3,'1997-02-13'),(337,'Malachi Mccarty',32,'1967-11-24','P.O. Box 888, 4301 Dolor Av.',58892161,1,'2000-05-22'),(338,'Deborah Stevens',28,'1987-06-27','3470 Vel Av.',88612157,2,'2012-11-29'),(339,'Hakeem Leblanc',27,'1991-12-31','9358 Consectetuer, Street',12575912,2,'2002-04-23'),(340,'Keegan Morales',30,'1956-09-18','Ap #138-6432 Porttitor St.',62396381,3,'2007-03-27'),(341,'Kaseem Raymond',33,'1937-06-02','956-6328 Quisque Street',84155951,1,'1998-11-06'),(342,'Valentine Fernandez',35,'1974-01-12','294-939 Nibh. Street',69345196,1,'2010-12-18'),(343,'Aline Garrett',24,'1930-04-22','P.O. Box 667, 2783 Ridiculus Avenue',18206410,2,'2009-10-22'),(344,'Wayne Dixon',26,'1975-03-08','P.O. Box 112, 1347 Quisque Street',80009318,1,'2009-09-02'),(345,'Piper Weeks',32,'1944-09-30','3639 Elit, Avenue',34686633,2,'1997-04-01'),(346,'Neve Calhoun',32,'1972-12-26','4918 Metus. Ave',85886195,3,'2005-09-13'),(347,'Ivan Cummings',44,'1963-09-07','8045 Duis Rd.',90724896,3,'2015-07-10'),(348,'Leroy Glenn',51,'1943-06-15','Ap #530-3472 Sit St.',54552715,1,'2007-11-21'),(349,'Brock Reyes',53,'1934-06-14','592-8557 Mauris Rd.',14706311,2,'2003-07-06'),(350,'Indira Erickson',48,'1926-02-12','618-2463 Urna Street',65583304,3,'2002-12-02'),(351,'Aurora Avila',31,'1936-03-22','P.O. Box 751, 1250 Congue St.',50163482,2,'2011-06-30'),(352,'Shelly Vance',39,'1935-10-08','798-5514 Commodo Rd.',16694474,1,'2011-11-22'),(353,'Lynn Pratt',34,'1972-02-14','Ap #695-104 Dapibus Rd.',99647178,3,'2014-02-06'),(354,'Flavia Curry',41,'1972-02-19','937-6981 Rutrum Road',71069544,1,'2006-06-10'),(355,'Gary Palmer',29,'1979-03-07','Ap #467-8992 Montes, Avenue',68277497,2,'2006-05-30'),(356,'Mira Gardner',25,'1951-05-30','P.O. Box 851, 2573 Lorem St.',52582449,1,'2012-03-31'),(357,'Kylee Barrera',38,'1930-05-19','127-3740 Metus. Av.',58596825,1,'2001-06-30'),(358,'Jolene Kane',49,'1972-06-25','P.O. Box 779, 2971 Lorem Road',2113747,1,'2012-05-04'),(359,'Amos Cote',25,'1979-11-05','P.O. Box 159, 9673 Aenean Avenue',7631370,2,'2018-02-13'),(360,'Rae Larsen',49,'1978-02-25','8159 Suscipit St.',72694427,2,'2011-05-11'),(361,'Scott Parks',38,'1939-10-03','175-9419 Nulla Rd.',38397184,1,'2017-04-06'),(362,'Cruz Conway',29,'1954-11-30','P.O. Box 370, 5713 Aliquam Rd.',87852179,1,'2003-03-16'),(363,'Jarrod Carver',24,'1961-07-11','P.O. Box 576, 1666 Et Street',53494320,2,'2005-06-09'),(364,'Jameson Mcdonald',41,'1941-09-07','Ap #164-4565 Ac Road',20107087,3,'1999-12-19'),(365,'Kameko Romero',45,'1966-10-23','725-890 Egestas Road',41217906,3,'2002-08-18'),(366,'Gisela Wood',35,'1985-11-04','6085 Erat. Street',75023023,3,'2014-07-01'),(367,'Preston Armstrong',38,'1942-07-14','6751 Enim Rd.',64577168,3,'2017-12-04'),(368,'Chantale Benton',45,'1970-06-22','Ap #580-1091 Vel St.',95001420,1,'2014-09-07'),(369,'Ainsley Frank',24,'1986-04-22','P.O. Box 547, 9475 Fames Av.',89512722,3,'2002-07-09'),(370,'Justine Hartman',39,'1962-10-12','840-5717 Nisl St.',43043862,2,'2018-03-08'),(371,'Germane Brown',51,'1952-11-25','P.O. Box 788, 9729 Elit, Street',26050804,1,'2010-10-11'),(372,'Raymond Cantrell',30,'1921-02-21','546-1356 Velit Ave',71525043,3,'2018-01-18'),(373,'Conan Weber',45,'1962-07-12','Ap #353-5482 Consequat Street',16041406,1,'2012-12-15'),(374,'Cody Olson',47,'1949-03-26','Ap #539-7073 Non Av.',91572802,1,'2012-09-04'),(375,'Brenden Walton',53,'1935-12-16','P.O. Box 341, 2513 Posuere St.',60437658,3,'2013-04-07'),(376,'Ifeoma Ray',49,'1962-12-06','P.O. Box 341, 724 Non Rd.',37523614,2,'2008-09-13'),(377,'Fay Burgess',39,'1941-04-25','P.O. Box 578, 4132 Diam St.',64742667,3,'1997-04-27'),(378,'Azalia Weeks',30,'1974-05-31','Ap #232-7276 Ultrices Street',78567573,1,'1999-02-23'),(379,'Tallulah Barton',39,'1993-12-22','Ap #490-9326 Duis Rd.',48049642,2,'2012-06-12'),(380,'Reed Osborne',51,'1964-12-16','P.O. Box 527, 8626 In, Road',80756457,3,'2010-10-26'),(381,'Thane Ballard',49,'1991-10-27','467-8629 Consectetuer Rd.',55296150,3,'1998-05-06'),(382,'Haviva Christensen',28,'1975-10-17','P.O. Box 171, 8964 Massa Ave',39291269,3,'2016-08-28'),(383,'Julian Tanner',39,'1984-10-30','7453 Tempor Road',15736731,1,'1998-02-02'),(384,'Colorado Mcintyre',35,'1965-03-07','P.O. Box 282, 1616 Tellus Road',95832205,1,'2006-04-06'),(385,'Wade Santos',50,'1948-07-30','5727 Arcu. Ave',8439360,3,'2003-02-01'),(386,'Graiden Rosales',48,'1954-03-14','485-613 Augue. Street',68620492,1,'2010-09-03'),(387,'Cassady Hardy',54,'1990-07-19','Ap #615-3231 Penatibus Avenue',28019018,2,'2004-08-15'),(388,'Hyatt Bryant',43,'1955-08-22','669-2694 Dui, Street',96950739,1,'2017-03-05'),(389,'Colette Sharpe',34,'1951-03-18','P.O. Box 550, 7966 In Rd.',89320645,1,'1997-01-20'),(390,'Brenna Stevenson',28,'1950-03-26','2441 Placerat. St.',1406967,1,'2013-06-17'),(391,'Zeph Mcclain',33,'1991-10-06','6041 Metus Ave',19792482,3,'2001-12-29'),(392,'Colin Keith',23,'1960-06-27','P.O. Box 728, 6259 Ut Ave',13963906,1,'2008-12-02'),(393,'Jennifer Waller',51,'1955-04-02','Ap #321-9503 Tellus St.',61624150,1,'2004-08-18'),(394,'Kamal Murray',34,'1928-07-19','P.O. Box 497, 6240 Donec Av.',16459167,3,'2000-09-14'),(395,'Simon Potts',35,'1926-12-24','980-9999 Donec Av.',99938129,1,'2014-04-08'),(396,'Mira Cummings',47,'1926-09-23','331-4660 Non Avenue',30873745,1,'1997-02-16'),(397,'Ralph Whitehead',23,'1925-03-31','P.O. Box 475, 8900 Ultricies St.',89453803,2,'1997-07-25'),(398,'Leonard Dyer',53,'1922-03-20','1961 Nulla. Avenue',55913144,3,'2011-04-24'),(399,'Fleur Pugh',23,'1941-06-01','P.O. Box 885, 7410 Iaculis St.',2808503,1,'2002-12-28'),(400,'Skyler Mcpherson',23,'1987-10-18','P.O. Box 699, 2266 Etiam Road',17969526,2,'2012-11-01'),(401,'Britanney Booker',46,'1972-07-14','3364 Nec Rd.',99566377,2,'1999-12-29'),(402,'Deanna Travis',34,'1923-08-06','Ap #875-2899 Sociis Rd.',47585394,3,'2002-09-27'),(403,'Aladdin Mejia',32,'1964-06-02','P.O. Box 325, 4067 Sed Rd.',95072504,1,'2006-08-05'),(404,'Breanna Parks',26,'1967-03-24','739-7271 Adipiscing, Ave',82802899,2,'2006-04-23'),(405,'Kyle Roy',34,'1994-11-14','Ap #581-9904 A, Road',20483120,1,'2014-05-07'),(406,'Quentin Potts',25,'1960-10-17','179-6910 Vitae, Road',57252797,2,'2003-08-22'),(407,'Nissim Beck',50,'1942-09-04','P.O. Box 435, 2458 Dolor. Rd.',54338357,1,'2017-05-03'),(408,'Shellie Guzman',46,'1963-12-09','3885 Fringilla Rd.',52732912,2,'2016-12-31'),(409,'Melyssa Patterson',33,'1935-12-23','6725 Quis, Road',70590501,3,'2014-06-20'),(410,'Upton Allen',41,'1994-09-13','626-7819 Donec Av.',43769845,3,'2010-10-28'),(411,'Wing Reid',34,'1984-10-22','P.O. Box 420, 3881 Vitae Rd.',76354151,2,'2009-07-31'),(412,'Dalton Osborn',54,'1970-04-18','P.O. Box 481, 2364 Ac Avenue',66716567,1,'2004-08-07'),(413,'Odessa Schwartz',47,'1954-10-06','P.O. Box 413, 5647 Tempus Street',35594019,1,'1997-07-05'),(414,'Kelly Cobb',46,'1941-02-20','Ap #978-8588 Erat. Road',60812337,2,'1997-03-02'),(415,'Brittany Porter',28,'1926-08-23','Ap #955-8889 Sed Ave',98321221,3,'2004-11-03'),(416,'Kerry Castaneda',26,'1994-10-19','7709 Eu Ave',65185685,2,'2004-07-24'),(417,'Octavia Patel',53,'1933-06-11','P.O. Box 572, 6941 Sem, Av.',30157012,3,'2015-03-15'),(418,'Mark Lowery',52,'1953-02-27','Ap #176-4206 Magna Street',20671158,3,'2017-06-17'),(419,'Alma Massey',26,'1973-11-27','Ap #620-4477 Suspendisse St.',29588253,3,'2005-10-14'),(420,'Alfonso Becker',31,'1937-12-20','480-1722 Nisl St.',40539843,1,'1999-12-24'),(421,'Geraldine Kramer',54,'1975-12-13','7631 Morbi Ave',95946961,1,'2001-09-15'),(422,'Christian Dale',45,'1923-04-07','535-9445 Vitae Av.',68707219,1,'2015-02-23'),(423,'Mannix Owens',19,'1920-01-11','2372 Est, Street',24946825,2,'2012-12-31'),(424,'Grady Olsen',16,'1990-06-06','P.O. Box 343, 5265 Fringilla Road',43253422,2,'2002-11-17'),(425,'Jeanette Cook',10,'1979-10-20','P.O. Box 700, 6170 Natoque Street',91925052,2,'2010-02-26'),(426,'Gabriel Cole',7,'1945-03-12','325 Gravida Avenue',98809374,1,'2017-11-29'),(427,'Amery Justice',10,'1981-07-28','449-3036 Augue Rd.',38225297,2,'2012-05-03'),(428,'Elton Castaneda',9,'1980-03-12','P.O. Box 971, 5883 Fames Ave',97729847,1,'2007-01-04'),(429,'Courtney Strickland',15,'1982-02-19','P.O. Box 727, 1579 Magna. Avenue',96419168,1,'2010-12-09'),(430,'Denton Leblanc',6,'1992-04-26','8461 Ac Avenue',59968523,1,'2011-04-09'),(431,'May Hardy',9,'1935-03-13','8443 Et St.',92372569,2,'2014-04-04'),(432,'Quemby Foreman',17,'1976-11-09','806-8711 Dolor Street',33758725,1,'1998-12-27'),(433,'Avye Erickson',15,'1983-09-17','616 Dui Rd.',33580597,1,'2002-10-31'),(434,'Phillip Macias',12,'1927-11-29','3037 Eu Ave',43604705,2,'2013-07-01'),(435,'Iliana Mosley',7,'1926-05-14','P.O. Box 680, 2549 Consectetuer St.',74344421,2,'2002-02-24'),(436,'Maxine Harmon',9,'1977-12-07','442-6032 Vestibulum Rd.',83931077,1,'2015-06-07'),(437,'Elton Rios',19,'1920-07-25','7001 Lorem Street',69728778,3,'2011-06-17'),(438,'Tanek Shelton',16,'1964-05-18','Ap #107-7518 Et Ave',29624751,1,'2011-07-02'),(439,'Vaughan Prince',18,'1956-05-07','6425 Dignissim Rd.',60687862,1,'2015-02-01'),(440,'August Farmer',17,'1945-04-03','8662 Pellentesque. St.',26059013,1,'2010-01-25'),(441,'Karly Reeves',10,'1945-03-01','P.O. Box 471, 1713 Libero. Road',74206381,3,'2002-06-20'),(442,'Veda Cole',16,'1958-05-21','P.O. Box 453, 8258 Tincidunt Rd.',58722852,3,'2003-01-21'),(443,'Neve Sweeney',6,'1971-02-22','813-2016 At St.',47704683,2,'2010-10-01'),(444,'Preston White',10,'1950-10-13','P.O. Box 258, 7894 Leo Street',15287535,1,'2005-12-26'),(445,'Nevada Booth',16,'1931-11-03','2446 Sociis Ave',31047847,3,'2004-02-17'),(446,'Gail Cooke',6,'1983-06-03','Ap #452-8784 Purus Street',83475206,1,'2009-03-03'),(447,'Alan Hanson',19,'1995-08-05','6728 Nulla Ave',59185899,3,'2011-05-07'),(448,'Perry Powers',13,'1946-08-23','938 Cubilia Road',95860328,3,'2012-11-08'),(449,'Axel Ashley',10,'1934-09-28','5220 Donec Road',39438093,2,'2007-12-13'),(450,'Hedley Chan',7,'1957-05-30','Ap #910-3446 Torquent St.',31903150,1,'2002-04-28'),(451,'Marcia Clarke',16,'1991-06-09','Ap #316-9189 Pede Rd.',56290956,3,'2015-11-26'),(452,'Ivor Ochoa',14,'1927-10-14','5686 Ut Road',73189074,2,'2009-03-06'),(453,'Cedric Carey',8,'1978-11-20','P.O. Box 153, 5066 Cubilia Rd.',66643612,1,'1998-04-20'),(454,'Nerea William',7,'1966-07-13','1895 Magnis Street',34174532,2,'2017-06-14'),(455,'Marshall Scott',7,'1924-06-09','P.O. Box 144, 2434 Dolor. St.',15532850,3,'2013-09-04'),(456,'Serina Duran',7,'1983-05-25','6857 Risus Ave',66346811,3,'2012-10-12'),(457,'Ulric Ortiz',16,'1976-03-29','Ap #131-2683 Erat Av.',94395740,3,'2016-09-15'),(458,'Aidan Lowery',17,'1990-01-07','215-9924 Aenean Road',21069009,1,'2013-10-13'),(459,'Victoria Callahan',8,'1933-07-08','3119 Per Rd.',46159191,3,'2008-02-21'),(460,'Farrah Middleton',11,'1937-10-17','6124 Sed Avenue',20536878,3,'2006-04-25'),(461,'Renee Wong',15,'1993-11-11','6502 Ac St.',1845293,3,'1999-04-22'),(462,'Bryar Moore',19,'1990-12-13','Ap #254-9684 Mattis St.',85720904,2,'2014-01-04'),(463,'Morgan Sheppard',12,'1955-03-21','P.O. Box 636, 4257 Consequat Street',5236303,1,'2014-11-03'),(464,'Robin Ochoa',12,'1939-06-16','Ap #888-1806 Lobortis Road',96914018,3,'2004-09-02'),(465,'Asher Duran',8,'1949-07-16','P.O. Box 625, 9538 Id Av.',87992074,3,'2005-08-11'),(466,'Odessa Hogan',9,'1920-12-16','455-781 Dui, Avenue',56837685,1,'2003-09-06'),(467,'Daniel Hansen',6,'1952-09-23','P.O. Box 350, 6240 In Street',83716898,2,'2006-11-07'),(468,'Garrett Lindsey',12,'1988-11-27','547-1711 Risus. Ave',60992649,1,'1998-10-27'),(469,'Genevieve Wood',7,'1985-04-10','Ap #330-5770 Elit, Avenue',15286022,1,'2013-05-19'),(470,'Clementine Sawyer',11,'1930-02-27','782-1660 Nunc St.',27832633,2,'2016-02-24'),(471,'Scott Price',8,'1986-08-07','P.O. Box 613, 9956 Luctus Road',15585495,1,'2010-04-12'),(472,'Yuri Welch',8,'1949-08-30','Ap #498-9901 Laoreet St.',87828141,3,'2006-04-20'),(473,'Jescie Jennings',11,'1950-01-31','Ap #904-4697 Libero. Avenue',92551374,1,'2005-11-03'),(474,'Rylee Mcgee',10,'1939-11-02','7742 Leo. Rd.',37754614,2,'2002-11-15'),(475,'Athena Fletcher',6,'1961-06-13','7427 In Ave',61799812,2,'2004-08-14'),(476,'Lois Bass',7,'1928-09-01','P.O. Box 438, 6584 Sed Rd.',34576666,3,'1998-01-19'),(477,'Martha Perez',19,'1924-06-06','P.O. Box 836, 1442 Non Street',48397473,3,'2011-11-19'),(478,'Cleo Vance',10,'1924-12-01','P.O. Box 275, 8755 Pede St.',73167570,2,'2013-11-29'),(479,'Kareem Mcleod',11,'1981-10-06','558-2399 Donec Rd.',47981698,3,'2012-07-22'),(480,'Ciaran Landry',13,'1934-01-08','1517 Mi St.',89747749,2,'2013-04-10'),(481,'Leigh Potter',18,'1994-12-04','Ap #913-7430 Malesuada Rd.',18786914,1,'1997-07-09'),(482,'Maxwell Daniel',8,'1937-05-14','P.O. Box 959, 7372 Viverra. Ave',58526543,1,'2015-03-04'),(483,'Daniel Neal',14,'1990-11-22','P.O. Box 329, 9947 Molestie Street',34147753,1,'1998-12-04'),(484,'Dora Mcguire',8,'1960-11-21','Ap #769-5800 Pede St.',99060516,2,'2008-07-12'),(485,'Deacon Skinner',15,'1927-11-01','839-1741 Proin St.',91435109,2,'2008-05-21'),(486,'Magee Hall',17,'1986-03-01','3139 Nunc Ave',73208559,2,'2015-03-21'),(487,'Bruno Hampton',10,'1988-04-05','P.O. Box 608, 4935 Blandit Ave',69049094,3,'2015-05-07'),(488,'Alana Mcdonald',10,'1943-04-04','Ap #250-6377 Nam Ave',30862949,3,'1999-06-19'),(489,'Zephania Gilliam',6,'1959-04-22','582 Ipsum Road',7105298,1,'1998-01-18'),(490,'Tatum Barry',14,'1992-03-12','P.O. Box 450, 6392 Nam Avenue',55357454,1,'1998-09-02'),(491,'Kerry Bernard',7,'1931-01-10','1094 Ac, Av.',66400336,2,'2008-11-04'),(492,'Keely Horn',6,'1945-10-23','Ap #445-7643 Felis, Ave',33737320,2,'2017-08-04'),(493,'Neil Townsend',8,'1970-04-03','8228 Adipiscing Rd.',42831530,2,'1998-01-20'),(494,'Aiko Hendrix',15,'1988-05-08','P.O. Box 876, 1292 Fusce Road',21470747,3,'2012-06-28'),(495,'Davis Tran',8,'1974-12-21','P.O. Box 597, 8132 Habitant Ave',45170754,3,'2007-04-23'),(496,'Kareem Henry',15,'1925-06-13','678-6696 Non, Rd.',41833603,3,'2015-12-04'),(497,'Kato Erickson',7,'1982-07-16','208-3349 Est Av.',19404205,1,'2013-04-11'),(498,'Oscar Campbell',9,'1980-02-26','P.O. Box 916, 8017 Purus Avenue',47244311,1,'2000-10-27'),(499,'Bradley Elliott',10,'1920-06-26','P.O. Box 433, 2608 Neque Road',64853436,2,'2014-12-09'),(500,'Kiara Roy',7,'1961-03-22','693-2094 Id Av.',67517039,1,'2011-11-29'),(501,'Quemby Warner',7,'1989-10-31','Ap #173-8751 Id Road',57305911,3,'2013-06-23'),(502,'Malcolm Tate',19,'1984-09-28','Ap #825-615 Erat, St.',43430235,2,'2003-09-12'),(503,'Talon Jennings',14,'1970-09-23','4868 Eget Rd.',40144509,1,'2003-07-18'),(504,'Ivana Cooley',7,'1988-03-14','7907 Risus. Rd.',51408832,3,'2005-07-26'),(505,'Brandon Valdez',10,'1968-04-10','Ap #643-1813 Vitae Street',60796382,1,'2011-08-24'),(506,'Wyoming Mitchell',11,'1943-11-15','Ap #561-4618 Mollis Ave',10404619,3,'2003-03-02'),(507,'Denise Langley',13,'1922-02-21','1327 Maecenas Road',37243179,1,'2001-07-31'),(508,'Gisela Hardy',17,'1927-01-07','P.O. Box 789, 1358 Convallis Av.',93313781,3,'1998-06-02'),(509,'Kane Morris',8,'1991-02-03','3936 Phasellus Av.',27817526,3,'2012-08-30'),(510,'Warren Pennington',8,'1926-05-07','8489 Dapibus St.',76104495,1,'2008-04-26'),(511,'Hyacinth Riggs',17,'1943-05-07','Ap #289-7520 Placerat St.',53974789,2,'2000-08-28'),(512,'Conan Ball',6,'1944-08-03','5090 Blandit St.',35350967,1,'2005-07-19'),(513,'Amaya Hartman',9,'1977-07-29','Ap #877-2774 Et, St.',45044110,1,'2015-10-16'),(514,'Zia Ashley',13,'1994-02-03','8938 Magna. Rd.',51816349,1,'2012-02-07'),(515,'Victor Willis',9,'1932-07-22','P.O. Box 350, 675 Rhoncus Road',30464439,3,'2003-08-26'),(516,'Noel Williams',15,'1956-08-10','Ap #330-838 Adipiscing Street',72260441,3,'2009-02-04'),(517,'Mara Robinson',8,'1978-02-15','P.O. Box 299, 2075 Vivamus St.',10526040,2,'1998-11-10'),(518,'Irene Ball',15,'1946-03-12','Ap #728-3965 Imperdiet St.',93238449,2,'2013-03-10'),(519,'Noel Hendricks',7,'1930-03-18','731-6912 Laoreet Rd.',11176801,1,'1997-11-07'),(520,'Ila Haley',18,'1983-03-02','1304 Dignissim Ave',70783264,1,'2007-01-19'),(521,'Warren Zimmerman',13,'1938-03-22','349-4780 Magna Rd.',49198140,3,'2000-09-30'),(522,'Roth Long',17,'1985-06-29','784-9255 Venenatis Ave',91365585,1,'2004-06-01'),(523,'Vincent Joel Sinatra',7,'2018-03-21','Jl. Balong Anyun',10000000,1,'2018-05-15');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hubungan`
--

DROP TABLE IF EXISTS `hubungan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hubungan` (
  `idHubungan` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`idHubungan`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hubungan`
--

LOCK TABLES `hubungan` WRITE;
/*!40000 ALTER TABLE `hubungan` DISABLE KEYS */;
INSERT INTO `hubungan` VALUES (1,'suami'),(2,'istri'),(3,'anak'),(4,'adik'),(5,'kakak'),(6,'paman'),(7,'bibi'),(8,'ayah'),(9,'ibu'),(10,'sepupu'),(11,'keponakan'),(12,'kakek'),(13,'nenek');
/*!40000 ALTER TABLE `hubungan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hubungancustomer`
--

DROP TABLE IF EXISTS `hubungancustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hubungancustomer` (
  `idStatus` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `idCustomer1` int(6) unsigned NOT NULL,
  `idCustomer2` int(6) unsigned NOT NULL,
  `idHubungan` int(6) unsigned NOT NULL,
  `tanggal` datetime DEFAULT CURRENT_TIMESTAMP,
  `isValid` int(1) DEFAULT NULL,
  `idHubSebelum` int(11) DEFAULT NULL,
  PRIMARY KEY (`idStatus`),
  KEY `idCustomer1` (`idCustomer1`),
  KEY `idCustomer2` (`idCustomer2`),
  KEY `idHubungan` (`idHubungan`),
  CONSTRAINT `hubungancustomer_ibfk_1` FOREIGN KEY (`idCustomer1`) REFERENCES `customer` (`idCustomer`),
  CONSTRAINT `hubungancustomer_ibfk_2` FOREIGN KEY (`idCustomer2`) REFERENCES `customer` (`idCustomer`),
  CONSTRAINT `hubungancustomer_ibfk_3` FOREIGN KEY (`idHubungan`) REFERENCES `hubungan` (`idHubungan`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hubungancustomer`
--

LOCK TABLES `hubungancustomer` WRITE;
/*!40000 ALTER TABLE `hubungancustomer` DISABLE KEYS */;
INSERT INTO `hubungancustomer` VALUES (1,388,11,12,'2018-05-15 18:26:01',1,NULL),(2,388,11,7,'2018-05-15 18:26:11',0,12);
/*!40000 ALTER TABLE `hubungancustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lokasi`
--

DROP TABLE IF EXISTS `lokasi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lokasi` (
  `idLokasi` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `idParent` int(6) unsigned DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`idLokasi`),
  KEY `idParent` (`idParent`),
  CONSTRAINT `lokasi_ibfk_1` FOREIGN KEY (`idParent`) REFERENCES `lokasi` (`idLokasi`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lokasi`
--

LOCK TABLES `lokasi` WRITE;
/*!40000 ALTER TABLE `lokasi` DISABLE KEYS */;
INSERT INTO `lokasi` VALUES (1,NULL,'Indonesia'),(2,1,'Jawa'),(3,2,'Jawa Barat'),(4,2,'Jawa Timur'),(5,2,'Jawa Tengah'),(6,3,'Bandung'),(7,3,'Tasikmalaya'),(8,3,'Purwakarta'),(9,3,'Cirebon'),(10,5,'Purwokerto'),(11,5,'Tegal'),(12,5,'Banyumas'),(13,5,'Semarang'),(14,5,'Solo'),(15,5,'Pekalongan'),(16,4,'Surabaya'),(17,4,'Madiun'),(18,4,'Madura'),(19,4,'Mojokerto'),(20,1,'sumatra'),(21,1,'Kalimantan'),(22,1,'Sulawesi'),(23,20,'Sumatra Utara'),(24,20,'Sumatra Selatan'),(25,20,'Sumatra Barat'),(26,21,'Kalimantan Barat'),(27,21,'Kalimantan Timur'),(28,22,'Sulawesi Utara'),(29,22,'Sulawesi Barat'),(30,22,'Sulawesi Tengah '),(31,23,'Sibolga'),(32,23,'Gunung Sitoli'),(33,23,'Kisaran'),(34,24,'Palembang'),(35,24,'Sekayu'),(36,24,'Bedegung'),(37,25,'Padang'),(38,25,'Solok'),(39,25,'Painan'),(40,26,'Pontianak'),(41,26,'Sambas'),(42,26,'Akcaya'),(43,27,'Balikpapan'),(44,27,'Bontang'),(45,27,'Bandara'),(46,28,'Tompaso'),(47,28,'Kombi'),(48,28,'Manado'),(49,29,'Tobadak'),(50,29,'Tadisi'),(51,29,'Mesakada'),(52,30,'Palu'),(53,30,'Poso'),(54,30,'Tolai');
/*!40000 ALTER TABLE `lokasi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perubahancustomer`
--

DROP TABLE IF EXISTS `perubahancustomer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perubahancustomer` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `idCustomer` int(6) unsigned NOT NULL,
  `namaField` varchar(100) NOT NULL,
  `valueSebelum` varchar(100) NOT NULL,
  `idSebelum` int(11) DEFAULT NULL,
  `valueSekarang` varchar(100) DEFAULT NULL,
  `tanggalBerubah` datetime DEFAULT NULL,
  `idAdmin` int(6) unsigned NOT NULL,
  `isValid` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idCustomer` (`idCustomer`),
  KEY `idAdmin` (`idAdmin`),
  CONSTRAINT `perubahancustomer_ibfk_1` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`),
  CONSTRAINT `perubahancustomer_ibfk_2` FOREIGN KEY (`idAdmin`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perubahancustomer`
--

LOCK TABLES `perubahancustomer` WRITE;
/*!40000 ALTER TABLE `perubahancustomer` DISABLE KEYS */;
INSERT INTO `perubahancustomer` VALUES (1,2,'idLokasi','10',NULL,'11','2018-05-14 14:05:09',1,1),(2,2,'idLokasi','11',1,'12','2018-05-14 14:05:20',1,1),(3,2,'idLokasi','12',2,'13','2018-05-14 14:05:27',1,1),(4,2,'nama','Lexine Searston1',NULL,'Lexine Searston','2018-05-14 14:06:45',1,1),(5,2,'idLokasi','10',3,'14','2018-05-14 14:06:45',1,1),(6,523,'idLokasi','7',NULL,'16','2018-05-15 18:28:12',1,0);
/*!40000 ALTER TABLE `perubahancustomer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'crm'
--
/*!50003 DROP PROCEDURE IF EXISTS `advancedSearch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `advancedSearch`(
nama varchar(1000),
idLokasi int,
umurBawah int,
umurAtas int,
nilaiInvestasiBawah int,
nilaiInvestasiAtas int
)
BEGIN
	DECLARE s VARCHAR(1000);
    set s = 'SELECT 
    customer.idCustomer,
    Customer.nama,
    Lokasi.nama as lokasi,
    tanggalLahir,
    Alamat,
    nilaiInvestasi
    FROM CUSTOMER JOIN LOKASI ON LOKASI.idLokasi = customer.idlokasi WHERE ';
    IF nama != '' THEN 
		SET s = CONCAT(s," LOWER(customer.nama) LIKE '%",LOWER(nama),"%' AND");
    END IF;
    IF idLokasi != 0 THEN 
		SET s = CONCAT(s,' customer.idLokasi =',idLokasi,' AND');
    END IF;
    IF umurbawah != 0 THEN 
		SET s = CONCAT(s," TIMESTAMPDIFF(year,customer.tanggalLahir,CURDATE()) >= ",umurBawah,' AND');
    END IF;
    IF umuratas != 0 THEN 
		SET s = CONCAT(s," TIMESTAMPDIFF(year,customer.tanggalLahir,CURDATE()) <= ",umurAtas,' AND');
    END IF;    
    IF nilaiInvestasiBawah != 0 THEN 
		SET s = CONCAT(s,' nilaiInvestasi >= ',NilaiInvestasibawah,' AND');
    END IF;
    IF nilaiInvestasiAtas != 0 THEN 
		SET s = CONCAT(s,' nilaiInvestasi <= ',NilaiInvestasiatas,' AND');
    END IF;
    if  SUBSTRING(s, -3, 3) = 'AND' THEN
		SET @z =  SUBSTRING(s, 1, LENGTH(s)-3);
	ELSE 
		SET @z =  SUBSTRING(s, 1, LENGTH(s)-6);
	END IF;
	PREPARE stmt1 FROM @z;
	EXECUTE stmt1 ;
	DEALLOCATE PREPARE stmt1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `editDataAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `editDataAdmin`(
	IN idAdmin int,
    IN username varchar(45),
    IN pass varchar(45),
    IN nama varchar(45)
)
BEGIN
	update admin set admin.username = username, admin.pass = pass, admin.nama = nama
    WHERE
    admin.id = idAdmin;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDataAdministrator` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDataAdministrator`()
BEGIN
Select
	admin.id,
	admin.nama,
    admin.username
FROM
	admin
ORDER BY
	admin.nama asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDataCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDataCustomer`(
)
BEGIN

Select
	customer.idCustomer, customer.nama, lokasi.nama as lokasi, customer.tanggalLahir, customer.tanggalMasuk, customer.alamat, customer.nilaiInvestasi
FROM
	Customer JOIN Lokasi
ON
	customer.idLokasi = lokasi.idLokasi
ORDER BY
	customer.nama asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDetailAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDetailAdmin`(
	IN idAdminInput int
)
BEGIN
	Select admin.id, admin.username, admin.pass, admin.nama
    FROM
		admin
	WHERE
		admin.id = idAdminInput;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDetailCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDetailCustomer`(
	in idCustomer int
)
BEGIN
	SELECT customer.idCustomer, customer.nama, customer.alamat, customer.idLokasi, customer.tanggalLahir,
    customer.nilaiInvestasi
    FROM
    customer
    WHERE
    customer.idCustomer = idCustomer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDetailHubungan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDetailHubungan`(
	IN idStatus int
)
BEGIN
	declare namaCustomer1 varchar(45);
    declare namaCustomer2 varchar(45);
    
	Select 
    cust1.nama as namaCust1,
    cust2.nama as namaCust2, 
    hubungancustomer.idCustomer1,
    hubungancustomer.idCustomer2,
    hubungancustomer.idStatus,
    hubungancustomer.tanggal,
    hubungancustomer.idhubungan, 
    hubungan.nama
    FROM
    hubungancustomer join hubungan
    ON
    hubungancustomer.idHubungan = hubungan.idHubungan
    
    JOIN 
    (SELECT
    idCustomer,
    nama
    FROM
    Customer)  as cust1
    ON
    hubungancustomer.idCustomer1 = cust1.idCustomer
    JOIN
    (SELECT
    idCustomer,
    nama
    FROM
    Customer)  as cust2
    ON
    (hubungancustomer.idCustomer2 = cust2.idCustomer)
    WHERE
    hubungancustomer.idStatus = idStatus;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getEventUlangTahun` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getEventUlangTahun`()
BEGIN
	Select 
    DAY(customer.tanggalLahir) as tanggalLahirCust,
    customer.nama,
    customer.tanggalLahir,
     TIMESTAMPDIFF(year,customer.tanggalLahir,CURDATE())+1 as 'Umur'
    FROM
    customer
    WHERE
    	DATE_FORMAT(tanggalLahir,'%m-%d') between (DATE_FORMAT(DATE_ADD(NOW(), INTERVAL 1 DAY),'%m-%d'))AND (DATE_FORMAT(DATE_ADD(NOW(), INTERVAL 7 DAY),'%m-%d'))
	ORDER BY
		customer.tanggalLahir asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getHubunganCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getHubunganCustomer`()
BEGIN
	declare namaCustomer1 varchar(45);
    declare namaCustomer2 varchar(45);
    
	Select 
    cust1.nama as namaCust1,
    cust2.nama as namaCust2, 
    hubungancustomer.idCustomer1,
    hubungancustomer.idCustomer2,
    hubungancustomer.idStatus,
    hubungancustomer.tanggal,
    hubungancustomer.idhubungan, 
    hubungan.nama
    FROM
    hubungancustomer join hubungan
    ON
    hubungancustomer.idHubungan = hubungan.idHubungan
    JOIN 
    (SELECT
    idCustomer,
    nama
    FROM
    Customer)  as cust1
    ON
    hubungancustomer.idCustomer1 = cust1.idCustomer
    JOIN
    (SELECT
    idCustomer,
    nama
    FROM
    Customer)  as cust2
    ON
    (hubungancustomer.idCustomer2 = cust2.idCustomer)
    WHERE
    hubungancustomer.isValid = 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getJumlahCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getJumlahCustomer`()
BEGIN
	SELECT
		Count(customer.idCustomer) as totalCustomer
	FROM
		Customer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getlistkota` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getlistkota`(
)
BEGIN
 declare kriteriaKarakteristik int;
 declare iterator int;
 set iterator =0;
    drop table IF EXISTS tblHasil;
 drop table IF EXISTS tblParent;
    drop table IF EXISTS tblChild;
    
   CREATE TEMPORARY TABLE tblHasil 
(
 id int
);
 CREATE TEMPORARY TABLE tblParent
(
 id int
);
 CREATE TEMPORARY TABLE tblChild
(
 id int
);


insert into tblParent select idLokasi from lokasi where idParent is null;

    
 while (iterator < 3)
 do
  insert into tblChild 
        select idLokasi 
        from 
   lokasi join 
   tblParent
  on tblParent.id = lokasi.idParent;
        
        if iterator = 2
  then
        insert into tblHasil 
        select id from tblChild;
        end if;
        
        delete from tblParent;
        
        insert into tblParent
        select id from tblChild;
        
        delete from tblChild;
        
        set iterator = iterator + 1;
        
    end while;
    
 select 
  id,nama 
 from 
  tblhasil 
 join 
  lokasi 
 on 
  lokasi.idlokasi = tblhasil.id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getLogPerubahanHubungan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLogPerubahanHubungan`()
BEGIN
	declare namaCustomer1 varchar(45);
    declare namaCustomer2 varchar(45);
    
	Select 
    cust1.nama as namaCust1,
    cust2.nama as namaCust2, 
    hubungancustomer.idCustomer1,
    hubungancustomer.idCustomer2,
    hubungancustomer.idStatus,
    hubungancustomer.tanggal,
    hubungancustomer.idhubungan, 
    hubungan.nama,
    hubungancustomer.idHubSebelum,
    tableHubSebelumnya.nama as namaHubSebelum
    FROM
    hubungancustomer join hubungan
    ON
    hubungancustomer.idHubungan = hubungan.idHubungan
    JOIN 
    (SELECT
    idCustomer,
    nama
    FROM
    Customer)  as cust1
    ON
    hubungancustomer.idCustomer1 = cust1.idCustomer
    JOIN
    (SELECT
    idCustomer,
    nama
    FROM
    Customer)  as cust2
    ON
    (hubungancustomer.idCustomer2 = cust2.idCustomer)
    JOIN
    
    (SELECT
		hubungan.idHubungan,
        hubungan.nama
	FROM
    hubungan ) as tableHubSebelumnya ON
    tableHubSebelumnya.idHubungan = hubungancustomer.idHubSebelum
    WHERE
    hubungancustomer.idHubSebelum is not null
    ORDER BY
    hubungancustomer.tanggal asc;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getRataanTotalnvestasi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getRataanTotalnvestasi`()
BEGIN
	Select
		SUM(customer.nilaiInvestasi) as totalInvestasi
	FROM
		Customer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertAdmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertAdmin`(
in username varchar(100),
in pass varchar(100),
in nama varchar(100)
)
BEGIN
INSERT INTO admin (username,pass, nama) 
SELECT * FROM (select username,pass,nama) as tmp
where NOT EXISTS
	(
	select username from admin where admin.username=username 
    );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertCustomer`(
in nama varchar (100),
in idLokasi int,
in tanggalLahir date,
in alamat varchar(100),
in nilaiInvestasi int(11),
in idAdmin int(11)
)
BEGIN
INSERT INTO customer (nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi,idAdmin, tanggalMasuk) 
SELECT * FROM (select nama,idLokasi,tanggalLahir,alamat,nilaiInvestasi,idAdmin,  NOW()) as tmp
where NOT EXISTS
	(
	select nama,tanggalLahir,alamat from customer where customer.nama=nama and customer.tanggalLahir=tanggalLahir and customer.alamat = alamat
    );

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertHubungan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertHubungan`(
in nama varchar(100)
)
BEGIN
INSERT INTO hubungan (nama) 
SELECT * FROM (select nama) as tmp
where NOT EXISTS
	(
	select nama from hubungan where hubungan.nama=nama 
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertHubunganCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertHubunganCustomer`(
	in customer1 int,
    in customer2 int,
    in hubungan int
)
BEGIN
    
	INSERT INTO hubunganCustomer (idcustomer1, idCustomer2, idHubungan,isValid, idHubSebelum) 
		SELECT 
			customer1,
            customer2,
            hubungan,
            1,
            NULL
		WHERE NOT EXISTS
			(
			SELECT 
				idcustomer1,
				idcustomer2,
				idhubungan 
			FROM 
				hubungancustomer 
			WHERE 
				hubungancustomer.idcustomer1=customer1 
				AND 
				hubungancustomer.idcustomer2=customer2 
				AND 
				hubungancustomer.idhubungan = hubungan
			);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertLokasi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertLokasi`(
in namaLokasi varchar(100),
in namaParent int
)
BEGIN
declare idParent int;
INSERT INTO lokasi (idParent, nama) 
SELECT 
	* 
FROM 
	(select namaParent,namaLokasi) as tmp
where NOT EXISTS
	(
	select nama from lokasi where lokasi.nama=namaLokasi
    );
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `insertPerubahanCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertPerubahanCustomer`(
in idCustomer int,
in namaField varchar (100),
in valueSebelum varchar(100),
in idSebelum int,
in valueSekarang varchar (100),
in tanggalberubah datetime,
in idAdmin int,
in isValid tinyInt
)
BEGIN
 INSERT INTO perubahanCustomer
 (idcustomer,namaField,valueSebelum,idSebelum,valueSekarang,tanggalBerubah,idAdmin,isValid)
    SELECT 
  idcustomer,namaField,valueSebelum,idSebelum,valueSekarang,tanggalBerubah,idAdmin,isValid;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jumlahCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jumlahCustomer`(in daerah int)
BEGIN

DECLARE rata2 int;
declare p int;
set p =1;
drop table IF EXISTS tblResult;
drop table IF EXISTS tblCustomer;
drop table IF EXISTS tblHasil;
drop table IF EXISTS tblParent;
drop table IF EXISTS tblChild;

CREATE TEMPORARY TABLE tblResult (
		nama varchar(100), 
        nilai double);
CREATE TEMPORARY TABLE tblCustomer (
		id varchar(100), 
        umur int);
   CREATE TEMPORARY TABLE tblHasil 
(
	id int
);
	CREATE TEMPORARY TABLE tblParent
(
	id int
);
	CREATE TEMPORARY TABLE tblChild
(
	id int
);
insert into tblParent select idLokasi from lokasi where idLokasi = daerah;
insert into tblHasil select idLokasi from lokasi where idLokasi = daerah;
	while ( p != 0)
	do
		insert into 
			tblChild 
        select 
			idLokasi 
        from 
			lokasi join 
			tblParent
		on tblParent.id = lokasi.idParent;
        
       
        insert into 
			tblHasil 
        select 
			id 
		from 
			tblChild;
        
        
        delete from tblParent;
        
        insert into 
			tblParent
        select 
			id 
		from 
			tblChild;
        
        delete from tblChild;
        
        set p=  (select count(id) from tblParent);
    end while;


    insert into tblResult
select 'jumlah_Customer',(
		select count(id) 
			from 
				customer cross join tblHasil 
            where 
				idLokasi = tblHasil.id);

select * from tblResult;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `jumlahInvestasi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jumlahInvestasi`(
in daerah int
)
BEGIN


DECLARE rata2 int;
declare p int;
set p =1;
drop table IF EXISTS tblResult;
drop table IF EXISTS tblCustomer;
drop table IF EXISTS tblHasil;
drop table IF EXISTS tblParent;
drop table IF EXISTS tblChild;

CREATE TEMPORARY TABLE tblResult (
		nama varchar(100), 
        nilai double);
CREATE TEMPORARY TABLE tblCustomer (
		id varchar(100), 
        umur int);
   CREATE TEMPORARY TABLE tblHasil 
(
	id int
);
	CREATE TEMPORARY TABLE tblParent
(
	id int
);
	CREATE TEMPORARY TABLE tblChild
(
	id int
);
insert into tblParent select idLokasi from lokasi where idLokasi = daerah;
insert into tblHasil select idLokasi from lokasi where idLokasi = daerah;
	while ( p != 0)
	do
		insert into 
			tblChild 
        select 
			idLokasi 
        from 
			lokasi join 
			tblParent
		on tblParent.id = lokasi.idParent;
        
       
        insert into 
			tblHasil 
        select 
			id 
		from 
			tblChild;
        
        
        delete from tblParent;
        
        insert into 
			tblParent
        select 
			id 
		from 
			tblChild;
        
        delete from tblChild;
        
        set p=  (select count(id) from tblParent);
    end while;
   


    insert into tblResult
select 'jumlah_Investasi',(
		select sum(nilaiInvestasi) 
			from 
				customer cross join tblHasil 
            where 
				idLokasi = tblHasil.id);
	
select * from tblResult;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `karakteristikDaerah` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `karakteristikDaerah`(
 in daerah int
 )
BEGIN
DECLARE rata2 int;
declare p int;
set p =1;
drop table IF EXISTS tblResult;
drop table IF EXISTS tblCustomer;
drop table IF EXISTS tblHasil;
drop table IF EXISTS tblParent;
drop table IF EXISTS tblChild;

CREATE TEMPORARY TABLE tblResult (
		nama varchar(100), 
        nilai double);
CREATE TEMPORARY TABLE tblCustomer (
		id varchar(100), 
        umur int);
   CREATE TEMPORARY TABLE tblHasil 
(
	id int
);
	CREATE TEMPORARY TABLE tblParent
(
	id int
);
	CREATE TEMPORARY TABLE tblChild
(
	id int
);
insert into tblParent select idLokasi from lokasi where idLokasi = daerah;
insert into tblHasil select idLokasi from lokasi where idLokasi = daerah;
	while ( p != 0)
	do
		insert into 
			tblChild 
        select 
			idLokasi 
        from 
			lokasi join 
			tblParent
		on tblParent.id = lokasi.idParent;
        
       
        insert into 
			tblHasil 
        select 
			id 
		from 
			tblChild;
        
        
        delete from tblParent;
        
        insert into 
			tblParent
        select 
			id 
		from 
			tblChild;
        
        delete from tblChild;
        
        set p=  (select count(id) from tblParent);
    end while;
   

insert into tblResult
select 'rata_rata_investasi',(
select avg(nilaiInvestasi ) from customer cross join tblHasil where idLokasi = tblHasil.id);



    insert into tblResult
select 'jumlah_Investasi',(
		select sum(nilaiInvestasi) 
			from 
				customer cross join tblHasil 
            where 
				idLokasi = tblHasil.id);
	

	insert into 
		tblCustomer 
	select 
		idCustomer,
        TIMESTAMPDIFF(year,customer.tanggalLAhir,CURDATE()) 
	from 
		customer cross join 
        tblHasil 
	where idLokasi=tblHasil.id;

	set rata2=(select avg(umur) from tblCustomer);
	insert into 
		tblResult 
	select 'rata_rata_umur',rata2;


insert into tblResult
select 'jumlah_customer',(
	select count(idCustomer) 
			from 
				customer cross join tblHasil 
            where 
				idLokasi = tblHasil.id);
select * from tblResult;                



END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `login` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `login`(
	IN username varchar(45),
    IN passwords varchar(45)
)
BEGIN
	SELECT admin.id 
    FROM
		admin
	WHERE
		admin.username = username AND admin.pass = passwords;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `rataRataInvestasi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rataRataInvestasi`(
 in daerah int
 )
BEGIN
DECLARE rata2 int;
declare p int;
set p =1;
drop table IF EXISTS tblResult;
drop table IF EXISTS tblCustomer;
drop table IF EXISTS tblHasil;
drop table IF EXISTS tblParent;
drop table IF EXISTS tblChild;

CREATE TEMPORARY TABLE tblResult (
		nama varchar(100), 
        nilai double);
CREATE TEMPORARY TABLE tblCustomer (
		id varchar(100), 
        umur int);
   CREATE TEMPORARY TABLE tblHasil 
(
	id int
);
	CREATE TEMPORARY TABLE tblParent
(
	id int
);
	CREATE TEMPORARY TABLE tblChild
(
	id int
);
insert into tblParent select idLokasi from lokasi where idLokasi = daerah;
insert into tblHasil select idLokasi from lokasi where idLokasi = daerah;
	while ( p != 0)
	do
		insert into 
			tblChild 
        select 
			idLokasi 
        from 
			lokasi join 
			tblParent
		on tblParent.id = lokasi.idParent;
        
       
        insert into 
			tblHasil 
        select 
			id 
		from 
			tblChild;
        
        
        delete from tblParent;
        
        insert into 
			tblParent
        select 
			id 
		from 
			tblChild;
        
        delete from tblChild;
        
        set p=  (select count(id) from tblParent);
    end while;
   

insert into tblResult
select 'rata_rata_investasi',(
select avg(nilaiInvestasi ) from customer cross join tblHasil where idLokasi = tblHasil.id);

select * from tblResult;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `rataRataUmur` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rataRataUmur`(
in daerah int
)
BEGIN
DECLARE rata2 int;
declare p int;
set p =1;
drop table IF EXISTS tblResult;
drop table IF EXISTS tblCustomer;
drop table IF EXISTS tblHasil;
drop table IF EXISTS tblParent;
drop table IF EXISTS tblChild;

CREATE TEMPORARY TABLE tblResult (
		nama varchar(100), 
        nilai double);
CREATE TEMPORARY TABLE tblCustomer (
		id varchar(100), 
        umur int);
   CREATE TEMPORARY TABLE tblHasil 
(
	id int
);
	CREATE TEMPORARY TABLE tblParent
(
	id int
);
	CREATE TEMPORARY TABLE tblChild
(
	id int
);
insert into tblParent select idLokasi from lokasi where idLokasi = daerah;
insert into tblHasil select idLokasi from lokasi where idLokasi = daerah;
	while ( p != 0)
	do
		insert into 
			tblChild 
        select 
			idLokasi 
        from 
			lokasi join 
			tblParent
		on tblParent.id = lokasi.idParent;
        
       
        insert into 
			tblHasil 
        select 
			id 
		from 
			tblChild;
        
        
        delete from tblParent;
        
        insert into 
			tblParent
        select 
			id 
		from 
			tblChild;
        
        delete from tblChild;
        
        set p=  (select count(id) from tblParent);
    end while;
   

	insert into 
		tblCustomer 
	select 
		idCustomer,
        TIMESTAMPDIFF(year,customer.tanggalLAhir,CURDATE()) 
	from 
		customer cross join 
        tblHasil 
	where idLokasi=tblHasil.id;

	set rata2=(select avg(umur) from tblCustomer);
	insert into 
		tblResult 
	select 'rata_rata_umur',rata2;

select * from tblResult;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `revertCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `revertCustomer`(
id int,
idAdmin int
)
BEGIN
	DECLARE v_finished INTEGER DEFAULT 0;
	DECLARE namaField1 varchar(1000);
	declare valueSebelum1 varchar(1000);
	DECLARE waktu datetime;
	DECLARE temp varchar(1000);
    DECLARE idperub int;
	declare myCursor cursor for
    SELECT perubahanCustomer.id,namaField,valueSebelum
    FROM perubahanCustomer 
    WHERE 
	idCustomer = id AND 
    tanggalBerubah = (SELECT
		tanggalBerubah
		FROM perubahancustomer
		WHERE idCustomer = id
        AND isvalid = 0
		ORDER BY tanggalberubah desc
		LIMIT 1);
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET v_finished = 1;
	open myCursor;
	SET waktu= (SELECT NOW());
    get_id:LOOP
	
    IF v_finished = 1 
		THEN LEAVE get_id;
	END IF;
    SELECT valueSebelum1;
		IF namaField1 = 'nilaiInvestasi' THEN
			SET temp = (SELECT Customer.nilaiInvestasi FROM Customer WHERE id = idCustomer);
			UPDATE Customer SET nilaiInvestasi = valueSebelum1 WHERE Customer.idCustomer = id;
		END IF;
		IF namaField1 = 'alamat' THEN
			SET temp = (SELECT Customer.alamat FROM Customer WHERE id = idCustomer);
			UPDATE Customer SET alamat = valueSebelum1 WHERE Customer.idCustomer = id;
		END IF;
		IF namaField1 = 'nama' THEN
			SET temp = (SELECT Customer.nama FROM Customer WHERE id = idCustomer);
			UPDATE Customer SET nama = valueSebelum1 WHERE Customer.idCustomer = id;
		END IF;
		IF namaField1 = 'idLokasi' THEN
			SET temp = (SELECT Customer.idLokasi FROM Customer WHERE id = idCustomer);
            UPDATE Customer SET idLokasi = valueSebelum1 WHERE Customer.idCustomer = id;
		END IF;
		IF namaField1 = 'tanggalLahir' THEN
			SET temp = (SELECT Customer.tanggalLahir FROM Customer WHERE id = idCustomer);
			UPDATE Customer SET tanggalLahir = valueSebelum1 WHERE Customer.idCustomer = id;
		END IF;
        select idperub;
       UPDATE perubahanCustomer SET isValid = 1 WHERE perubahanCustomer.id = idperub;
    FETCH myCursor INTO idperub,namaField1,valueSebelum1;
    END LOOP get_id;
    CLOSE myCursor;
    
        
        
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `revertHubungan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `revertHubungan`(
    IN idCustomer1 int,
    IN idCustomer2 int,
    in idHubungan int
)
BEGIN
	declare idHubSebelumnya int;
    declare idStatusSebelumnya int;
    declare idStatusSekarang int;
    SELECT idHubSebelum into idHubSebelumnya FROM hubungancustomer WHERE hubungancustomer.idCustomer1 = idCustomer1 AND hubungancustomer.idCustomer2 = idCustomer2
    AND hubungancustomer.idHubungan = idHubungan AND hubungancustomer.isValid = 1;
    SELECT idStatus into idStatusSekarang FROM hubungancustomer WHERE hubungancustomer.idCustomer1 = idCustomer1 AND hubungancustomer.idCustomer2 = idCustomer2
    AND hubungancustomer.idHubungan = idHubungan AND hubungancustomer.isValid = 1;
    
    if idHubSebelumnya is not null
    THEN
		SELECT idStatus into idStatusSebelumnya FROM hubungancustomer WHERE hubungancustomer.idCustomer1 = idCustomer1 AND hubungancustomer.idCustomer2 = idCustomer2
		AND hubungancustomer.idHubungan = idHubSebelumnya AND hubungancustomer.isValid = 0;
		UPDATE hubungancustomer SET hubungancustomer.isValid = 0 WHERE hubunganCustomer.idStatus = idStatusSekarang;
		UPDATE hubungancustomer SET hubungancustomer.isValid = 1 WHERE hubunganCustomer.idStatus = idStatusSebelumnya;
    END IF;
   
    SELECT * FROM hubungancustomer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateCustomer`(
in idCustomer int,
in nama varchar (100),
in idLokasi INT,
in tanggalLahir date,
in alamat varchar(100),
in nilaiInvestasi int(11),
in idAdmin int
)
BEGIN
	DECLARE tempNama varchar(100);
    DECLARE tempidLokasi int;
    DECLARE tempTanggalLahir date;
    DECLARE tempAlamat varchar(100);
    DECLARE tempNilaiInvestasi int(11);
    DECLARE waktu datetime;
    DECLARE ct int;
    DECLARE temp varchar(1000);
    DECLARE idsb int;
    DECLARE isVal int ;
    
	DROP TABLE  IF EXISTS customerSementara;
    CREATE TEMPORARY TABLE customerSementara (
        nama varchar(100), 
        idLokasi int,
        tanggalLahir date,
        alamat varchar(100),
        nilaiInvestasi int);
    INSERT INTO customerSementara
    SELECT
        Customer.nama,
        Customer.idLokasi,
        Customer.tanggalLahir,
        Customer.alamat,
        Customer.nilaiInvestasi
    FROM 
        Customer
    WHERE
        Customer.idCustomer = idCustomer;
	SET isVal = 0 ;
    Select customerSementara.nama into tempNama FROM customerSementara;
    Select customerSementara.idLokasi into tempIdLokasi FROM customerSementara;
    Select customerSementara.tanggalLahir into tempTanggalLahir FROM customerSementara;
    Select customerSementara.alamat into tempAlamat FROM customerSementara;
    Select customerSementara.nilaiInvestasi into tempNilaiInvestasi FROM customerSementara;
    SELECT NOW() INTO waktu;
    SET ct = (SELECT COUNT(idCustomer) FROM perubahanCustomer WHERE perubahanCustomer.idCustomer = idCustomer);
	SET idsb = (SELECT id FROM perubahanCustomer WHERE namaField = 'nama' AND perubahanCustomer.idCustomer = idCustomer ORDER BY id DESC LIMIT 1);
	SELECT idsb;
	IF tempNama != nama THEN 
		SET temp = (SELECT nama FROM Customer WHERE Customer.idCustomer = idCustomer);
		call insertPerubahanCustomer(idcustomer,'nama',tempnama,idsb,temp,waktu,idAdmin,isVal);
		UPDATE customer SET customer.nama = nama WHERE customer.idCustomer = idCustomer;
	END IF;
	SET idsb = (SELECT id FROM perubahanCustomer WHERE namaField = 'idLokasi'  AND perubahanCustomer.idCustomer = idCustomer ORDER BY id DESC LIMIT 1);
	IF tempIdLokasi != idLokasi THEN 
		SET temp = (SELECT idLokasi FROM Customer WHERE Customer.idCustomer = idCustomer);
		call insertPerubahanCustomer(idcustomer,'idLokasi',tempidLokasi,idsb,temp,waktu,idAdmin,isval);
		UPDATE customer SET customer.idLokasi = idLokasi WHERE customer.idCustomer = idCustomer;
	END IF;
	SET idsb = (SELECT id FROM perubahanCustomer WHERE namaField = 'tanggalLahir'  AND perubahanCustomer.idCustomer = idCustomer ORDER BY id DESC LIMIT 1);
	IF tempTanggalLahir != tanggalLahir THEN 
		SET temp = (SELECT tanggalLahir FROM Customer WHERE Customer.idCustomer = idCustomer);
		call insertPerubahanCustomer(idcustomer,'tanggalLahir',temptanggalLahir,idsb,temp,waktu,idAdmin,isVal);
		UPDATE customer SET customer.tanggalLahir = tanggalLahir WHERE customer.idCustomer = idCustomer;
	END IF;
	SET idsb = (SELECT id FROM perubahanCustomer WHERE namaField = 'alamat' AND perubahanCustomer.idCustomer = idCustomer ORDER BY id DESC LIMIT 1);
	IF tempAlamat != alamat THEN 
		SET temp = (SELECT alamat FROM Customer WHERE Customer.idCustomer = idCustomer);
		call insertPerubahanCustomer(idcustomer,'alamat',tempalamat,idsb,temp,waktu,idAdmin,isVal);
		UPDATE customer SET customer.alamat = alamat WHERE customer.idCustomer = idCustomer;
	END IF;
	SET idsb = (SELECT id FROM perubahanCustomer WHERE namaField = 'nilaiInvestasi' AND perubahanCustomer.idCustomer = idCustomer ORDER BY id DESC LIMIT 1);
	IF tempNilaiInvestasi != nilaiInvestasi THEN 
		SET temp = (SELECT nilaiInvestasi FROM Customer WHERE Customer.idCustomer = idCustomer);
		call insertPerubahanCustomer(idcustomer,'nilaiInvestasi',tempNilaiInvestasi,idsb,temp,waktu,idAdmin,isVal);
		UPDATE customer SET customer.nilaiInvestasi = nilaiInvestasi WHERE customer.idCustomer = idCustomer;
	END IF;
    DROP TEMPORARY Table customerSementara;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updateHubungan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateHubungan`(
	IN idHubunganLama int,
	IN  idHubunganBaru int,
    IN  idCustomer1 int,
    IN idCustomer2 int
)
BEGIN
	DECLARE idStatusSementara int;
	CREATE TEMPORARY TABLE tableSementara (idHubungan int); 
	INSERT INTO tableSementara 
		SELECT idStatus FROM hubungancustomer WHERE hubungancustomer.idCustomer1 = idCustomer1 AND hubungancustomer.idCustomer2 = idCustomer2 AND hubungancustomer.isValid =1 AND hubungancustomer.idHubungan = idHubunganLama;
      
	Select idHubungan into idStatusSementara FROM tableSementara;
	
    UPDATE hubungancustomer SET hubungancustomer.isValid = 0 WHERE hubungancustomer.idStatus = idStatusSementara;
    
    INSERT INTO hubungancustomer (idCustomer1, idCustomer2, idHubungan, isValid, idHubSebelum) VALUES(idCustomer1, idCustomer2, idHubunganBaru, 1, idHubunganLama);
    SELECT * from hubungancustomer;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-15 20:31:44
