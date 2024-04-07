-- MySQL dump 10.13  Distrib 5.7.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: uke12oppdrag
-- ------------------------------------------------------
-- Server version	11.1.2-MariaDB

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
-- Table structure for table `hendvendesler`
--

DROP TABLE IF EXISTS `hendvendesler`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hendvendesler` (
  `Saksnummer` int(11) NOT NULL AUTO_INCREMENT,
  `beskrivelse` varchar(200) DEFAULT NULL,
  `idAnsatte` int(11) DEFAULT NULL,
  `brukerID` int(11) DEFAULT NULL,
  `statusID` int(11) DEFAULT NULL,
  PRIMARY KEY (`Saksnummer`),
  KEY `fk_hendvendesler_Ansatte1_idx` (`idAnsatte`),
  KEY `fk_hendvendesler_kunde1_idx` (`brukerID`),
  KEY `fk_hendvendesler_status1_idx` (`statusID`),
  CONSTRAINT `fk_hendvendesler_Ansatte1` FOREIGN KEY (`idAnsatte`) REFERENCES `ansatte` (`idAnsatte`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_hendvendesler_kunde1` FOREIGN KEY (`brukerID`) REFERENCES `kunde` (`brukerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_hendvendesler_status1` FOREIGN KEY (`statusID`) REFERENCES `status` (`statusID`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hendvendesler`
--

LOCK TABLES `hendvendesler` WRITE;
/*!40000 ALTER TABLE `hendvendesler` DISABLE KEYS */;
INSERT INTO `hendvendesler` VALUES (1,'for ikke endre passord',NULL,NULL,1),(3,'feil ved oppstart',NULL,NULL,1),(6,'feil ved 1234',NULL,NULL,1),(7,'hebru sah sin neteinde ikke funekr',NULL,NULL,3);
/*!40000 ALTER TABLE `hendvendesler` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-07 19:36:11
