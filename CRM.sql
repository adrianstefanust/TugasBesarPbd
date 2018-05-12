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
INSERT INTO `admin` VALUES (1,'admin1','admin1','adrian'),(2,'admin2','admin2','hengky stephen'),(3,'admin3','admin1','test');
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
  PRIMARY KEY (`idCustomer`),
  KEY `idLokasi` (`idLokasi`),
  KEY `idAdmin` (`idAdmin`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`idLokasi`) REFERENCES `lokasi` (`idLokasi`),
  CONSTRAINT `customer_ibfk_2` FOREIGN KEY (`idAdmin`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Evania Diggin',10,'1990-03-30','86 Sachs Point',14234216,3),(2,'Lexine Searston',7,'1997-02-14','59224 Jenifer Circle',18275499,1),(3,'Janina Coombs',6,'1973-04-30','2 Hooker Avenue',40859247,2),(4,'Lotta Yarnall',7,'1980-12-23','3 Doe Crossing Avenue',13434991,1),(5,'Darin Sillis',14,'1981-02-26','8049 Eagle Crest Plaza',14684698,1),(6,'Rasla BouldstridCustomerge',15,'1982-08-03','68 Mosinee Junction',8056164,2),(7,'Cilka GowdridCustomerge',11,'1956-12-11','39965 Drewry Avenue',49514607,1),(8,'Rudie Easun',15,'1982-08-17','070 6th Circle',48092072,3),(9,'April Bothwell',7,'1989-07-10','360 Shoshone Plaza',33081105,1),(10,'Cristian Cattlemull',9,'1992-05-01','562 Ohio Plaza',12173357,3),(11,'Tabatha Caplin',6,'1988-05-27','4 Artisan Plaza',33363083,3),(12,'Vinni Slocom',16,'1977-01-07','8335 Dovetail Drive',6193702,1),(13,'Junina Devers',7,'1966-08-10','109 Canary Parkway',40038339,1),(14,'Dee Skase',9,'1961-01-08','4553 Hanson Crossing',25449958,3),(15,'Tybi Hearnden',10,'1961-05-17','661 Blaine Road',22835070,3),(16,'Andie Fretson',9,'1960-07-16','7856 Cardinal Point',27634181,1),(17,'Levy Bagnell',6,'1956-04-08','75 Hanson Crossing',15084076,3),(18,'Niccolo Taphouse',7,'1964-04-20','21 Kenwood Parkway',4226268,2),(19,'Hendrika Kahn',12,'1997-11-02','01062 Express Circle',1299712,1),(20,'Allyn Cassedy',12,'1992-06-25','7919 Havey Park',48004958,1),(21,'Meredeth Schermick',17,'1959-02-21','08385 Dapin Drive',5186036,3),(22,'Lulu Fawcett',19,'1989-12-25','152 Hintze Crossing',13846420,2),(23,'Nancy Lyste',16,'1996-02-12','1 Nobel Park',30622945,1),(24,'Willi Cowdrey',12,'1966-01-15','4600 NorthridCustomerge Hill',7379407,3),(25,'Cate Gerb',16,'1977-04-08','085 Canary Drive',18140401,2),(26,'Art Toner',6,'1994-01-06','6584 Chinook Parkway',4952421,3),(27,'Crosby Cettell',9,'1984-06-29','0 Eggendart Center',32204072,2),(28,'Jaime Dumbreck',7,'1988-01-12','9 Blue Bill Park Crossing',46925964,1),(29,'Chicky Hawke',18,'1998-03-24','08 Morrow Point',27493974,1),(30,'Andee Bainbrigge',15,'2000-08-16','65238 VidCustomeron Parkway',28024630,1),(31,'Vanny Flamank',8,'1978-11-04','4 BaysidCustomere Park',39252047,2),(32,'Pyotr Huc',15,'1985-01-13','47729 Manufacturers Trail',46890926,2),(33,'Hobie Kleimt',7,'1968-04-13','0 Nevada Terrace',26791041,3),(34,'Trevar Brixey',8,'1992-10-18','657 Glendale Circle',40208481,1),(35,'Rees Antrack',8,'1956-11-23','9 Melody Terrace',23354677,1),(36,'Kienan McFadzean',14,'1966-12-18','50607 Marquette Crossing',21312120,2),(37,'Theodosia Pillinger',18,'1991-09-11','31554 Barby Plaza',9862532,2),(38,'Walt Eddies',9,'1971-12-12','2 Moose Road',37220074,1),(39,'Rocky Casassa',15,'1977-04-24','7 WayridCustomerge Trail',35526340,2),(40,'Cherrita Keneford',9,'1999-08-08','62 Graedel Center',32670241,1),(41,'Kameko Westcar',13,'1974-08-25','793 Valley Edge Alley',15754759,3),(42,'Bernardo Leyden',17,'1982-08-02','8974 Holmberg Road',21620557,2),(43,'Bili Spackman',6,'1982-11-08','6 Ramsey Trail',20440110,2),(44,'Llewellyn Alfonsetti',12,'1972-05-12','461 Transport Pass',45814624,3),(45,'Hewet Minifie',15,'1999-12-12','397 Esch Plaza',46969155,3),(46,'Delilah Rosenauer',13,'1980-08-18','68136 Ronald Regan Center',46647238,2),(47,'Janos Pinn',17,'1964-10-28','4682 American Drive',5390554,3),(48,'Cosetta Pinnigar',18,'1987-12-02','07 Bellgrove Street',48853958,1),(49,'Bili Ranaghan',17,'1962-01-27','36 Nelson Avenue',48852419,3),(50,'Nev Wolpert',11,'1985-06-15','45 Emmet Way',18630754,1),(51,'Merilee Treuge',10,'1980-07-15','65 Grayhawk Street',25786920,2),(52,'Nichole Levett',10,'1994-03-02','37554 Spenser Place',42636237,1),(53,'Errick Treadway',19,'1971-03-08','840 Lindbergh Street',5297599,1),(54,'Olimpia Fumagalli',17,'1976-10-29','756 Almo Way',21910731,1),(55,'Carlos Wondraschek',17,'1955-11-24','68 Garrison Center',34227323,1),(56,'Gwendolen Charville',9,'1958-06-04','169 Menomonie Point',15533980,1),(57,'Suzy Beavis',8,'1982-04-19','5770 Dakota Way',10347826,1),(58,'Baxy Wallhead',17,'1987-10-27','21476 Eagan Center',15093779,3),(59,'Katti Bourthouloume',12,'1974-06-13','9 Mayer Court',48963827,1),(60,'Daniele Axtens',15,'1985-10-11','252 Maywood Place',16905143,1),(61,'Wilie Chupin',16,'1959-09-12','93 Havey Avenue',44242690,2),(62,'Burgess St. Hill',16,'1995-08-30','92300 Jenifer Lane',35973236,2),(63,'Kev Izkovicz',17,'1961-08-27','9 SouthridCustomerge Place',32850553,1),(64,'Olly Edgcumbe',14,'1989-02-26','82810 Commercial Lane',20689607,1),(65,'Roman Ramstead',6,'1969-03-22','85221 Loftsgordon Court',10373838,2),(66,'Baxter Mazey',16,'1959-06-27','7926 Drewry Parkway',843259,2),(67,'Ignatius Fear',11,'1993-12-25','25 Daystar Trail',10090421,1),(68,'Charleen Darragon',11,'1975-06-28','463 Huxley Junction',14693828,3),(69,'Gawen Brimming',19,'1972-02-22','7 Rowland Way',1170027,3),(70,'Carter Cecely',16,'1963-10-27','84261 Oneill Place',42047713,3),(71,'Frederic Winning',18,'1988-12-05','5 Shopko Parkway',6368340,3),(72,'Bobinette Riatt',18,'1981-09-29','05779 Green RidCustomerge Center',41840970,1),(73,'Rey Wickersham',6,'1980-03-17','60039 Pearson Hill',46660780,3),(74,'Rip Tweedie',17,'1979-06-12','598 Ryan Avenue',42943874,3),(75,'Glenden Bowick',10,'1962-06-18','4 Mifflin Parkway',38113462,2),(76,'Trudie Mullins',12,'1999-01-31','40 Gale Way',26753215,1),(77,'Simonne Hansed',13,'1999-05-01','6936 School Crossing',31119414,2),(78,'Kendre Ravillas',16,'1987-02-08','6050 Fulton Road',16007157,2),(79,'Sissie Brinded',11,'1993-07-16','9955 Farwell Alley',9407044,1),(80,'Barny Reaman',7,'1996-08-30','79793 Bartelt Center',11012161,1),(81,'SidCustomernee McConnel',7,'1994-03-09','12006 Paget Alley',23544182,2),(82,'Ameline Aizikovitch',12,'1963-05-05','71341 SutteridCustomerge Terrace',46015532,2),(83,'Nathaniel Seamans',9,'1998-01-08','04 Scott Terrace',27369680,1),(84,'Carley Shilvock',6,'1957-10-30','15 Del Mar Drive',23359368,2),(85,'Otha Scarth',15,'1975-03-04','0304 Londonderry Road',27967146,2),(86,'Waylin Rouby',14,'1998-05-31','3 Blackbird Pass',21989619,1),(87,'Tillie Mattke',15,'1992-06-11','89 Mccormick Center',28699347,3),(88,'Elle Stiven',11,'1959-01-02','534 Briar Crest Pass',23423941,1),(89,'Fanchon Lashmore',11,'1968-06-16','73 NorthridCustomerge Pass',6462990,2),(90,'Moyra Hartin',17,'2000-11-08','36 La Follette Drive',43157224,3),(91,'Saloma Hubbucks',19,'1979-03-26','3539 Annamark Terrace',48302125,3),(92,'Dareen Bande',6,'1964-04-29','868 Mockingbird Hill',16511635,3),(93,'Marney Myhan',15,'1996-08-29','538 Fallview Lane',47959247,1),(94,'Goraud Foyle',12,'1964-01-26','9 Derek Crossing',46410320,1),(95,'Cally Hazeley',11,'1959-05-10','83 RiversidCustomere Terrace',12680986,1),(96,'Thalia Tankard',12,'1968-09-25','54 Lakeland Street',32179401,3),(97,'Irvin Lorain',17,'1955-08-26','5 Linden Lane',23721811,3),(98,'Gretel Scone',19,'1979-04-29','819 Welch Avenue',34997709,3),(99,'Kiel Kitchen',6,'1990-12-07','4 Macpherson Hill',28133876,1),(100,'Manfred Hedley',14,'1973-06-14','28693 Glacier Hill Park',13298480,1),(101,'Hobey Anglish',16,'1964-02-06','18 Dayton Terrace',24244129,3),(102,'Garret Benford',13,'1958-06-01','5 Lien Drive',32184399,1),(103,'Suzette Colleck',11,'1965-11-13','60233 Jana Hill',32328874,2),(104,'Sabina Layhe',18,'1957-04-21','21 Northland Way',21632828,1),(105,'Rodina Hadfield',10,'1986-10-14','30416 Paget Junction',34559795,NULL),(106,'Meggie Skein',15,'1990-04-17','4 Judy Lane',45515128,2),(107,'Carole Delmonti',19,'1959-03-05','1 Center Hill',27980130,1),(108,'Horton BridCustomerden',8,'1955-07-20','2 SheridCustomeran Terrace',6003937,3),(109,'Sim Raith',15,'1957-06-15','371 Birchwood Crossing',15883100,1),(110,'Vonnie Plaskitt',10,'1982-10-24','64 Burning Wood Crossing',31379010,3),(111,'Marcy Stodd',12,'1973-05-25','141 Delladonna Terrace',1655437,3),(112,'Mikkel Boddis',14,'1982-09-10','61244 Kim Center',21758634,1),(113,'Margi Petrovic',11,'1967-04-01','1479 Hintze Road',39867363,1),(114,'Leland Czajkowski',9,'1965-10-31','66 Reindahl Lane',12455599,3),(115,'Penrod RidCustomeres',13,'1994-04-23','4848 Memorial Road',16705809,3),(116,'Rossie Pickle',7,'1963-02-19','649 Springs Court',49079714,1),(117,'Almire Vasyukov',8,'1991-10-09','359 Burning Wood Point',36355099,3),(118,'Kirstin Lawrenson',19,'1999-10-18','826 Ruskin Pass',6527887,2),(119,'Emelia Gabbetis',15,'1959-05-14','0059 Dottie Plaza',43284698,1),(120,'Donia Kaes',8,'1964-06-18','8 Dahle Park',37571026,1),(121,'adrian',7,'1963-02-19','unpar',30000,NULL),(122,'adrian1',6,'1963-02-19','unpar',30000,NULL);
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
  `tanggal` date DEFAULT NULL,
  `isValid` int(1) DEFAULT NULL,
  `idHubSebelum` int(11) DEFAULT NULL,
  PRIMARY KEY (`idStatus`),
  KEY `idCustomer1` (`idCustomer1`),
  KEY `idCustomer2` (`idCustomer2`),
  KEY `idHubungan` (`idHubungan`),
  CONSTRAINT `hubungancustomer_ibfk_1` FOREIGN KEY (`idCustomer1`) REFERENCES `customer` (`idCustomer`),
  CONSTRAINT `hubungancustomer_ibfk_2` FOREIGN KEY (`idCustomer2`) REFERENCES `customer` (`idCustomer`),
  CONSTRAINT `hubungancustomer_ibfk_3` FOREIGN KEY (`idHubungan`) REFERENCES `hubungan` (`idHubungan`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hubungancustomer`
--

LOCK TABLES `hubungancustomer` WRITE;
/*!40000 ALTER TABLE `hubungancustomer` DISABLE KEYS */;
INSERT INTO `hubungancustomer` VALUES (2,121,122,1,'2018-05-11',1,NULL),(3,121,122,3,'2018-05-12',0,1),(4,19,17,12,'2018-05-12',0,NULL),(5,19,17,10,'2018-05-12',0,12),(6,19,17,3,'2018-05-12',0,10),(7,19,17,1,'2018-05-12',0,12),(8,19,17,8,'2018-05-12',1,12),(9,121,12,10,'2018-05-12',1,NULL),(10,121,12,9,'2018-05-12',1,NULL),(11,121,12,8,'2018-05-12',0,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lokasi`
--

LOCK TABLES `lokasi` WRITE;
/*!40000 ALTER TABLE `lokasi` DISABLE KEYS */;
INSERT INTO `lokasi` VALUES (1,NULL,'Indonesia'),(2,1,'Jawa'),(3,2,'Jawa Barat'),(4,2,'Jawa Timur'),(5,2,'Jawa Tengah'),(6,3,'Bandung'),(7,3,'Tasikmalaya'),(8,3,'Purwakarta'),(9,3,'Cirebon'),(10,5,'Purwokerto'),(11,5,'Tegal'),(12,5,'Banyumas'),(13,5,'Semarang'),(14,5,'Solo'),(15,5,'Pekalongan'),(16,4,'Surabaya'),(17,4,'Madiun'),(18,4,'Madura'),(19,4,'Mojokerto');
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
  `namaTabel` varchar(100) NOT NULL,
  `namaField` varchar(100) NOT NULL,
  `valueSebelum` varchar(100) NOT NULL,
  `idSebelum` int(6) DEFAULT NULL,
  `tanggalBerubah` date DEFAULT NULL,
  `idAdmin` int(6) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idCustomer` (`idCustomer`),
  KEY `idAdmin` (`idAdmin`),
  CONSTRAINT `perubahancustomer_ibfk_1` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`),
  CONSTRAINT `perubahancustomer_ibfk_2` FOREIGN KEY (`idAdmin`) REFERENCES `admin` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perubahancustomer`
--

LOCK TABLES `perubahancustomer` WRITE;
/*!40000 ALTER TABLE `perubahancustomer` DISABLE KEYS */;
INSERT INTO `perubahancustomer` VALUES (1,121,'Customer','idLokasi','6',0,'2018-05-11',1),(2,121,'Customer','nilaiInvestasi','30000',NULL,'2018-05-12',1),(3,121,'Customer','nilaiInvestasi','40000',NULL,'2018-05-12',1);
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
	customer.idCustomer, customer.nama, lokasi.nama as lokasi, customer.tanggalLahir, customer.alamat, customer.nilaiInvestasi
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
in namaLokasi int,
in tanggalLahir date,
in alamat varchar(100),
in nilaiInvestasi int(11)
)
BEGIN
declare lokasiId int;
set lokasiId = (select idLokasi from lokasi where lokasi.nama=namaLokasi);
INSERT INTO customer (nama, idLokasi, tanggalLahir, alamat, nilaiInvestasi) 
SELECT * FROM (select nama,lokasiId,tanggalLahir,alamat,nilaiInvestasi) as tmp
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertHubunganCustomer`(
	in customer1 int,
    in customer2 int,
    in hubungan int
)
BEGIN
    
	INSERT INTO hubunganCustomer (idcustomer1, idCustomer2, idHubungan,tanggal,isValid, idHubSebelum) 
		SELECT 
			customer1,
            customer2,
            hubungan,
            NOW(),
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
/*!50003 DROP PROCEDURE IF EXISTS `insertPerubahanCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertPerubahanCustomer`(
in idCustomer int,
in namaTabel varchar (100),
in namaField varchar (100),
in valueSebelum varchar(100),
in idSebelum int,
in tanggalberubah datetime,
in idAdmin int
)
BEGIN
 INSERT INTO perubahanCustomer(idcustomer,namaTabel,namaField,valueSebelum,idSebelum,tanggalBerubah,idAdmin)
    SELECT 
  idCustomer,
  namaTabel,
  namaField,
  valueSebelum,
  idSebelum,
        tanggalBerubah,
        idAdmin
 WHERE NOT EXISTS
  (
  SELECT 
   idCustomer,
   namaTabel,
   namaField,
   valueSebelum,
   idSebelum,
   tanggalBerubah,
   idAdmin
  FROM 
   perubahanCustomer 
  WHERE 
   perubahanCustomer.idCustomer=idCustomer 
   AND 
   perubahanCustomer.namaTabel=namaTabel 
   AND 
   perubahanCustomer.namaField = namaField
   AND 
   perubahanCustomer.valueSebelum = valueSebelum
   AND 
   perubahanCustomer.idSebelum = idSebelum
   AND 
   perubahanCustomer.tanggalBerubah = tanggalBerubah
   AND 
   perubahanCustomer.idAdmin = idAdmin
  );
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
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `jumlahInvestasi`(
in daerah int
)
BEGIN
DECLARE jumlah int;
set jumlah = (select sum(nilaiInvestasi) from customer where idLOkasi = daerah);

select jumlah;
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
/*!50003 DROP PROCEDURE IF EXISTS `rataRataInvestasi` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rataRataInvestasi`(
 in daerah int
 )
BEGIN
DECLARE jumlah int;
declare iterator int;
declare p int;
set p =1;
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
insert into tblParent select idLokasi from lokasi where idLokasi = daerah;
insert into tblHasil select idLokasi from lokasi where idLokasi = daerah;
	while ( p != 0)
	do
    
		insert into tblChild 
        select idLokasi 
        from 
			lokasi join 
			tblParent
		on tblParent.id = lokasi.idParent;
        
       
        insert into tblHasil 
        select id from tblChild;
        
        
        delete from tblParent;
        
        insert into tblParent
        select id from tblChild;
        
        delete from tblChild;
        
        set p=  (select count(id) from tblParent);
    end while;
   

set jumlah = (select avg(nilaiInvestasi) from customer cross join tblHasil where idLokasi = tblHasil.id);
select * from tblHasil;

END ;;
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
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `rataRataUmur`(
in daerah int
)
BEGIN
DECLARE rata2 int;
drop table IF EXISTS tblHasil;
drop table IF EXISTS tblCustomer;
CREATE TEMPORARY TABLE tblHasil (
		nama varchar(100), 
        nilai int);
CREATE TEMPORARY TABLE tblCustomer (
		id varchar(100), 
        umur int);
insert into tblCustomer select idCustomer,TIMESTAMPDIFF(year,customer.tanggalLAhir,CURDATE()) from customer where idLokasi=daerah;

set rata2=(select avg(umur) from tblCustomer);
insert into tblHasil select 'rata_rata_umur',rata2;

select * from tblHasil;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
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
declare myCursor cursor for
    SELECT namaField,valueSebelum
    FROM perubahanCustomer 
    WHERE 
	idCustomer = id AND 
    tanggalBerubah = (SELECT
		tanggalBerubah
		FROM perubahancustomer
		WHERE idCustomer = id
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
            call insertPerubahanCustomer(id,'Customer','nilaiInvestasi',temp,NULL,waktu,idAdmin);
			UPDATE Customer SET nilaiInvestasi = valueSebelum1 WHERE Customer.idCustomer = id;
		END IF;
		IF namaField1 = 'alamat' THEN
			SET temp = (SELECT Customer.alamat FROM Customer WHERE id = idCustomer);
			call insertPerubahanCustomer(id,'Customer','alamat',temp,NULL,waktu,idAdmin);
			UPDATE Customer SET alamat = valueSebelum1 WHERE Customer.idCustomer = id;
		END IF;
		IF namaField1 = 'nama' THEN
			SET temp = (SELECT Customer.nama FROM Customer WHERE id = idCustomer);
            call insertPerubahanCustomer(id,'Customer','nama',temp,NULL,waktu,idAdmin);
			UPDATE Customer SET nama = valueSebelum1 WHERE Customer.idCustomer = id;
		END IF;
		IF namaField1 = 'idLokasi' THEN
			SET temp = (SELECT Customer.idLokasi FROM Customer WHERE id = idCustomer);
			call insertPerubahanCustomer(id,'Customer','idLokasi',temp,NULL,waktu,idAdmin);
            UPDATE Customer SET idLokasi = valueSebelum1 WHERE Customer.idCustomer = id;
		END IF;
		IF namaField1 = 'tanggalLahir' THEN
			SET temp = (SELECT Customer.tanggalLahir FROM Customer WHERE id = idCustomer);
             call insertPerubahanCustomer(id,'Customer','tanggalLahir',temp,NULL,waktu,idAdmin);
			UPDATE Customer SET tanggalLahir = valueSebelum1 WHERE Customer.idCustomer = id;
		END IF;
    FETCH myCursor INTO namaField1,valueSebelum1;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
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
    DECLARE idsb int;
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
        
    Select customerSementara.nama into tempNama FROM customerSementara;
    Select customerSementara.idLokasi into tempIdLokasi FROM customerSementara;
    Select customerSementara.tanggalLahir into tempTanggalLahir FROM customerSementara;
    Select customerSementara.alamat into tempAlamat FROM customerSementara;
    Select customerSementara.nilaiInvestasi into tempNilaiInvestasi FROM customerSementara;
    SELECT NOW() INTO waktu;
    SET ct = (SELECT COUNT(idCustomer) FROM perubahanCustomer WHERE perubahanCustomer.idCustomer = idCustomer);
    IF ct  = 0 THEN
        IF tempNama != nama THEN 
            call insertPerubahanCustomer(idcustomer,'Customer','nama',tempnama,NULL,waktu,idAdmin);
            UPDATE customer SET customer.nama = nama WHERE customer.idCustomer = idCustomer;
        END IF;
        IF tempIdLokasi != idLokasi THEN 
            call insertPerubahanCustomer(idcustomer,'Customer','idLokasi',tempidLokasi,NULL,waktu,idAdmin);
            UPDATE customer SET customer.idLokasi = idLokasi WHERE customer.idCustomer = idCustomer;
        END IF;
        IF tempTanggalLahir != tanggalLahir THEN 
            call insertPerubahanCustomer(idcustomer,'Customer','tanggalLahir',temptanggalLahir,NULL,waktu,idAdmin);
            UPDATE customer SET customer.tanggalLahir = tanggalLahir WHERE customer.idCustomer = idCustomer;
        END IF;
        IF tempAlamat != alamat THEN 
            call insertPerubahanCustomer(idcustomer,'Customer','alamat',tempalamat,NULL,waktu,idAdmin);
            UPDATE customer SET customer.alamat = alamat WHERE customer.idCustomer = idCustomer;
        END IF;
        IF tempNilaiInvestasi != nilaiInvestasi THEN 
            call insertPerubahanCustomer(idcustomer,'Customer','nilaiInvestasi',tempNilaiInvestasi,NULL,waktu,idAdmin);
            UPDATE customer SET customer.nilaiInvestasi = nilaiInvestasi WHERE customer.idCustomer = idCustomer;
        END IF;
    ELSE
        SET idsb = (SELECT id FROM perubahanCustomer WHERE namaField = 'nama'ORDER BY id DESC LIMIT 1);
        SELECT idsb;
        IF tempNama != nama THEN 
            call insertPerubahanCustomer(idcustomer,'Customer','nama',tempnama,idsb,waktu,idAdmin);
            UPDATE customer SET customer.nama = nama WHERE customer.idCustomer = idCustomer;
        END IF;
        SET idsb = (SELECT id FROM perubahanCustomer WHERE namaField = 'idLokasi'ORDER BY id DESC LIMIT 1);
        IF tempIdLokasi != idLokasi THEN 
            call insertPerubahanCustomer(idcustomer,'Customer','idLokasi',tempidLokasi,idsb,waktu,idAdmin);
            UPDATE customer SET customer.idLokasi = idLokasi WHERE customer.idCustomer = idCustomer;
        END IF;
        SET idsb = (SELECT id FROM perubahanCustomer WHERE namaField = 'tanggalLahir'ORDER BY id DESC LIMIT 1);
        IF tempTanggalLahir != tanggalLahir THEN 
            call insertPerubahanCustomer(idcustomer,'Customer','tanggalLahir',temptanggalLahir,idsb,waktu,idAdmin);
            UPDATE customer SET customer.tanggalLahir = tanggalLahir WHERE customer.idCustomer = idCustomer;
        END IF;
        SET idsb = (SELECT id FROM perubahanCustomer WHERE namaField = 'alamat'ORDER BY id DESC LIMIT 1);
        IF tempAlamat != alamat THEN 
            call insertPerubahanCustomer(idcustomer,'Customer','alamat',tempalamat,idsb,waktu,idAdmin);
            UPDATE customer SET customer.alamat = alamat WHERE customer.idCustomer = idCustomer;
        END IF;
        SET idsb = (SELECT id FROM perubahanCustomer WHERE namaField = 'nilaiInvestasi'ORDER BY id DESC LIMIT 1);
        IF tempNilaiInvestasi != nilaiInvestasi THEN 
            call insertPerubahanCustomer(idcustomer,'Customer','nilaiInvestasi',tempNilaiInvestasi,idsb,waktu,idAdmin);
            UPDATE customer SET customer.nilaiInvestasi = nilaiInvestasi WHERE customer.idCustomer = idCustomer;
        END IF;
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
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updateHubungan`(
	IN idHubunganLama int,
	IN  idHubunganBaru int,
    IN  idCustomer1 int,
    IN idCustomer2 int,
    IN tanggal date
)
BEGIN
	DECLARE idStatusSementara int;
	CREATE TEMPORARY TABLE tableSementara (idHubungan int); 
	INSERT INTO tableSementara 
		SELECT idStatus FROM hubungancustomer WHERE hubungancustomer.idCustomer1 = idCustomer1 AND hubungancustomer.idCustomer2 = idCustomer2 AND hubungancustomer.isValid =1 AND hubungancustomer.idHubungan = idHubunganLama;
      
	Select idHubungan into idStatusSementara FROM tableSementara;
	
    UPDATE hubungancustomer SET hubungancustomer.isValid = 0 WHERE hubungancustomer.idStatus = idStatusSementara;
    
    INSERT INTO hubungancustomer (idCustomer1, idCustomer2, idHubungan, tanggal, isValid, idHubSebelum) VALUES(idCustomer1, idCustomer2, idHubunganBaru, tanggal, 1, idHubunganLama);
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

-- Dump completed on 2018-05-12 23:57:09
