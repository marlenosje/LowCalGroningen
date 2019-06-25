CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
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
-- Table structure for table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(95) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__efmigrationshistory`
--

LOCK TABLES `__efmigrationshistory` WRITE;
/*!40000 ALTER TABLE `__efmigrationshistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `__efmigrationshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `menu` (
  `idmenu` int(11) NOT NULL AUTO_INCREMENT,
  `menunaam` varchar(100) NOT NULL,
  `voorgerecht` varchar(100) DEFAULT NULL,
  `hoofdgerecht` varchar(100) DEFAULT NULL,
  `nagerecht` varchar(100) DEFAULT NULL,
  `calorieen` int(11) NOT NULL,
  `prijs` decimal(5,2) NOT NULL,
  `RestaurantId` int(11) NOT NULL,
  `menuPlaatjeUrl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idmenu`),
  KEY `fk_menu_restaurant_idx` (`RestaurantId`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`RestaurantId`) REFERENCES `restaurant` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Klassiek','Mtaoem','Tajine lamschouder met zuidvruchten, oranjebloesem water en zoete honing saus ','Delices de Tipaza ',1025,34.95,1,'https://cdn.pixabay.com/photo/2015/11/09/03/28/food-1034608_960_720.jpg'),(2,'Lam en rund','Borek Iahm','Tajine Kofta','Mouhalabiah',1240,38.50,1,'https://cdn.pixabay.com/photo/2015/11/09/03/28/food-1034608_960_720.jpg'),(3,'Indisch rijsttafel','Loempia','Indische rijsttafel 1 p','Spekkoek naturel',1238,25.00,8,'https://cdn.pixabay.com/photo/2018/04/13/17/14/vegetable-skewer-3317060_960_720.jpg'),(4,'Indisch Kip','Kippensoep','Yau Koh Kai','Spekkoek pistache',1189,16.30,8,'https://cdn.pixabay.com/photo/2018/04/13/17/14/vegetable-skewer-3317060_960_720.jpg'),(5,'Spaghetti di parma','Stokbrood met aoli','Spaghetti di parma','Tiramisu',1096,29.95,9,'https://cdn.pixabay.com/photo/2017/10/06/17/43/noodles-2823942_960_720.jpg'),(6,'Penne di pommedori','Stokbrood met pesto','Penne di pommedori','Panna Cotta',1167,27.50,9,'https://cdn.pixabay.com/photo/2017/10/06/17/43/noodles-2823942_960_720.jpg'),(7,'Vegetarisch','Khai Lok Koei','Keang Curry Kai',NULL,810,22.00,10,'https://cdn.pixabay.com/photo/2014/11/05/16/00/thai-food-518035_1280.jpg'),(8,'Kip','Laap Kai','Massaman Kai',NULL,875,24.50,10,'https://cdn.pixabay.com/photo/2014/11/05/16/00/thai-food-518035_1280.jpg'),(9,'Blijde verwachting','Carpaccio','Lamsbout','Bananensplit',1180,35.95,11,'https://cdn.pixabay.com/photo/2015/05/02/06/47/gourmet-749562__340.jpg'),(10,'Boswandeling','Gevulde champignonRisotto van bospddestoelen','Risotto van bospddestoelen','Bloemenijs',1125,34.50,11,'https://cdn.pixabay.com/photo/2015/05/02/06/47/gourmet-749562__340.jpg'),(11,'Quesaburro','Quesadilla Classic','Burrito Classic','Churros',1080,15.95,12,'https://cdn.pixabay.com/photo/2016/08/23/08/53/tacos-1613795__340.jpg'),(12,'Tacosenchi','Taco Classic','Enchilada Roja Classic','IJs Belgian Chocolate',1135,15.25,12,'https://cdn.pixabay.com/photo/2016/08/23/08/53/tacos-1613795__340.jpg'),(13,'Australisch','Grilled Barramundi','Kangaroo',NULL,990,37.00,13,'https://cdn.pixabay.com/photo/2018/09/14/11/12/food-3676796_960_720.jpg'),(14,'Steak menu','Union Rings','Large Rib Eye Steak',NULL,1010,27.50,13,'https://cdn.pixabay.com/photo/2018/09/14/11/12/food-3676796_960_720.jpg');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `naam` varchar(100) NOT NULL,
  `adres` varchar(100) NOT NULL,
  `postcode` varchar(6) NOT NULL,
  `telefoon` varchar(12) NOT NULL,
  `type` varchar(45) NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `keuken` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `naam_UNIQUE` (`naam`),
  UNIQUE KEY `adres_UNIQUE` (`adres`),
  UNIQUE KEY `telefoon_UNIQUE` (`telefoon`),
  UNIQUE KEY `facebook_UNIQUE` (`facebook`),
  UNIQUE KEY `website_UNIQUE` (`website`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
INSERT INTO `restaurant` VALUES (1,'Mechoui','Folkingestraat 38','9711JX','050-3184796','bezoek','www.mechoui.nl','https://www.facebook.com/mechouirestaurant/photos/a.528533450616096/1550808958388535/?type=3','Afrikaans'),(8,'Happy Garden','Verlengde Hereweg 79','9721AH','050-5261529','afhaal / bezorg / bezoek','https://happygarden.nl/','https://www.facebook.com/happygardengroningenrestaurant/','Oosters'),(9,'De Pastafabriek','Stoeldraaiersstraat 25','9712BV','050-8519585','bezoek','https://www.depastafabriek.com/',' https://nl-nl.facebook.com/pages/category/Italian-Restaurant/De-Pastafabriek-399961376840392/','Italiaans'),(10,'Bezorgrestaurant Sawadee','Ripperdalaan 9','9713SG','06-44120213','bezorg','https://www.bezorgrestaurantsawadee.nl/',NULL,'Thais'),(11,'Vive la vie','Oosterstraat 39','9711NP','050-8503970','bezoek','https://www.vivelaviegroningen.nl/','https://www.facebook.com/bistronomievivelavie?fref=ts','Frans'),(12,'Taco Mundo','Nieuwe Ebbingestraat 40','9712NL','0900-1238226','bezorg / afhaal','https://www.tacomundo.com/','https://www.facebook.com/TacoMundo/','Mexicaans'),(13,'Pacific Groningen','Oosterstraat 65','9711NS','050-3137633','bezoek','https://www.pacific-groningen.nl/','https://www.facebook.com/auspubpacific/','Australisch');
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mydb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-25 15:29:06
