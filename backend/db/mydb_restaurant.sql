-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'Mechoui','Folkingestraat 38','9711JX','050-3184796','bezoek','www.mechoui.nl','https://www.facebook.com/mechouirestaurant/photos/a.528533450616096/1550808958388535/?type=3','Afrikaans'),(8,'Happy Garden','Verlengde Hereweg 79','9721AH','050-5261529','afhaal / bezorg / bezoek','https://happygarden.nl/','https://www.facebook.com/happygardengroningenrestaurant/','Oosters'),(9,'De Pastafabriek','Stoeldraaiersstraat 25','9712BV','050-8519585','bezoek','https://www.depastafabriek.com/',' https://nl-nl.facebook.com/pages/category/Italian-Restaurant/De-Pastafabriek-399961376840392/','Italiaans'),(10,'Bezorgrestaurant Sawadee','Ripperdalaan 9','9713SG','06-44120213','bezorg','https://www.bezorgrestaurantsawadee.nl/',NULL,'Thais'),(11,'Vive la vie','Oosterstraat 39','9711NP','050-8503970','bezoek','https://www.vivelaviegroningen.nl/','https://www.facebook.com/bistronomievivelavie?fref=ts','Frans'),(12,'Taco Mundo','Nieuwe Ebbingestraat 40','9712NL','0900-1238226','bezorg / afhaal','https://www.tacomundo.com/','https://www.facebook.com/TacoMundo/','Mexicaans'),(13,'Pacific Groningen','Oosterstraat 65','9711NS','050-3137633','bezoek','https://www.pacific-groningen.nl/','https://www.facebook.com/auspubpacific/','Australisch');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-25 14:51:03
