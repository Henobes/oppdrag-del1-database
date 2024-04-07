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
-- Table structure for table `hendvendelser`
--

DROP TABLE IF EXISTS `hendvendelser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hendvendelser` (
  `saksnummer` int(11) NOT NULL AUTO_INCREMENT,
  `beskrivelse` varchar(200) DEFAULT NULL,
  `brukerID` int(11) DEFAULT NULL,
  `statusID` int(11) DEFAULT NULL,
  `idAnsatte` int(11) DEFAULT NULL,
  PRIMARY KEY (`saksnummer`),
  KEY `fk_Hendvendelser_Kunde1_idx` (`brukerID`),
  KEY `fk_Hendvendelser_Status1_idx` (`statusID`),
  KEY `fk_Hendvendelser_Ansatte1_idx` (`idAnsatte`),
  CONSTRAINT `fk_Hendvendelser_Ansatte1` FOREIGN KEY (`idAnsatte`) REFERENCES `ansatte` (`idAnsatte`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hendvendelser_Kunde1` FOREIGN KEY (`brukerID`) REFERENCES `kunde` (`brukerID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Hendvendelser_Status1` FOREIGN KEY (`statusID`) REFERENCES `status` (`statusID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hendvendelser`
--

LOCK TABLES `hendvendelser` WRITE;
/*!40000 ALTER TABLE `hendvendelser` DISABLE KEYS */;
INSERT INTO `hendvendelser` VALUES (11,'feil1',13,16,1),(12,'feil2',14,17,2),(13,'feil ved 1234',NULL,NULL,NULL);
/*!40000 ALTER TABLE `hendvendelser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-07 19:36:12
