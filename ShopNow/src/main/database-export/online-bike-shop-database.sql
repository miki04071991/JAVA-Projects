CREATE DATABASE  IF NOT EXISTS `onlinebikeshop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `onlinebikeshop`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: onlinebikeshop
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bike`
--

DROP TABLE IF EXISTS `bike`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bike` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` text,
  `price` int DEFAULT NULL,
  `gender` text,
  `brand` text,
  `image` int DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bike`
--

LOCK TABLES `bike` WRITE;
/*!40000 ALTER TABLE `bike` DISABLE KEYS */;
INSERT INTO `bike` VALUES (1,'LE GRAND TOURS 1.0',19500,'MALE','LE GRAND BIKES',1,'Flat bar road bikes are road bikes fitted with mountain bike-style shifters, brake levers, and a flat handlebar. They fit into the continuum between hybrids and road bikes.'),(2,'LE GRAND METZ 1.0',19500,'MALE','LE GRAND BIKES',2,'Flat bar road bikes are road bikes fitted with mountain bike-style shifters, brake levers, and a flat handlebar. They fit into the continuum between hybrids and road bikes.'),(3,'LE GRAND LILLE 2.0',25000,'MALE','LE GRAND BIKES',3,'Messenger bikes are typically used for urgent deliveries of letters and small packages between businesses in big cities with heavily congested traffic.'),(4,'LE GRAND LILLE 1',24400,'FEMALE','LE GRAND BIKES',4,'Messenger bikes are typically used for urgent deliveries of letters and small packages between businesses in big cities with heavily congested traffic.'),(5,'LE GRAND CROSSMO 1',22400,'MALE','LE GRAND BIKES',5,'Flat bar road bikes are road bikes fitted with mountain bike-style shifters, brake levers, and a flat handlebar. They fit into the continuum between hybrids and road bikes.'),(6,'LE GRAND MEGISTO',34400,'FEMALE','LE GRAND BIKES',6,'Messenger bikes are typically used for urgent deliveries of letters and small packages between businesses in big cities with heavily congested traffic.'),(7,'LE GRAND TAXI',19400,'MALE','LE GRAND BIKES',7,'Flat bar road bikes are road bikes fitted with mountain bike-style shifters, brake levers, and a flat handlebar. They fit into the continuum between hybrids and road bikes.'),(8,'KROSS TRANS 3.0',35400,'MALE','KROSS',8,'Flat bar road bikes are road bikes fitted with mountain bike-style shifters, brake levers, and a flat handlebar. They fit into the continuum between hybrids and road bikes.'),(9,'KROSS TRANS 2.0',31600,'MALE','KROSS',9,'Mountain bicycles (also called All Terrain Bicycle) are designed for off-road cycling. All-mountain bicycles feature sturdy, highly durable frames and wheels, wide-gauge treaded tires, and cross-wise handlebars to help the rider resist sudden jolts'),(10,'KROSS TRANS 1.0',28400,'MALE','KROSS',10,'Mountain bicycles (also called All Terrain Bicycle) are designed for off-road cycling. All-mountain bicycles feature sturdy, highly durable frames and wheels, wide-gauge treaded tires, and cross-wise handlebars to help the rider resist sudden jolts'),(11,'KROSS SETO',43000,'MALE','KROSS',11,'Mountain bicycles (also called All Terrain Bicycle) are designed for off-road cycling. All-mountain bicycles feature sturdy, highly durable frames and wheels, wide-gauge treaded tires, and cross-wise handlebars to help the rider resist sudden jolts'),(12,'KROSS PULSO 1.0',42000,'MALE','KROSS',12,'Cyclo-cross bike (also known as cross bike\"): A road bicycle frame similar to a racing or sport/touring bicycle'),(13,'KROSS LEVEL 4.0',48000,'MALE','KROSS',13,'Cyclo-cross bike (also known as cross bike\"): A road bicycle frame similar to a racing or sport/touring bicycle'),(14,'KROSS LEVEL 3.0',44000,'MALE','KROSS',14,'Cyclo-cross bike (also known as cross bike\"): A road bicycle frame similar to a racing or sport/touring bicycle'),(15,'KROSS LEVEL 2.0',40000,'MALE','KROSS',15,'Cyclo-cross bike (also known as cross bike\"): A road bicycle frame similar to a racing or sport/touring bicycle'),(16,'KROSS LEA 4.0',30000,'FEMALE','KROSS',16,'Messenger bikes are typically used for urgent deliveries of letters and small packages between businesses in big cities with heavily congested traffic.'),(17,'KROSS LEA 2.0',26000,'FEMALE','KROSS',17,'Messenger bikes are typically used for urgent deliveries of letters and small packages between businesses in big cities with heavily congested traffic.'),(18,'KROSS LEA 1.0',24400,'FEMALE','KROSS',18,'Messenger bikes are typically used for urgent deliveries of letters and small packages between businesses in big cities with heavily congested traffic.'),(19,'KROSS HEXAGON 8.0',49000,'MALE','KROSS',18,'Cyclo-cross bike (also known as cross bike\"): A road bicycle frame similar to a racing or sport/touring bicycle'),(20,'KROSS HEXAGON 7.0',40000,'MALE','KROSS',19,'Cyclo-cross bike (also known as cross bike\"): A road bicycle frame similar to a racing or sport/touring bicycle'),(21,'KROSS HEXAGON 6.0',35400,'MALE','KROSS',20,'Cyclo-cross bike (also known as cross bike\"): A road bicycle frame similar to a racing or sport/touring bicycle'),(22,'EXPLORER SUMMER ',15000,'MALE','EXPLORER',1,'Flat bar road bikes are road bikes fitted with mountain bike-style shifters, brake levers, and a flat handlebar. They fit into the continuum between hybrids and road bikes.'),(23,'EXPLORER LADY',14000,'FEMALE','EXPLORER',2,'Messenger bikes are typically used for urgent deliveries of letters and small packages between businesses in big cities with heavily congested traffic.'),(24,'EXPLORER POWER',12000,'FEMALE','EXPLORER',3,'Messenger bikes are typically used for urgent deliveries of letters and small packages between businesses in big cities with heavily congested traffic.'),(25,'EXPLORER TEA LADY',12000,'FEMALE','EXPLORER',4,'Messenger bikes are typically used for urgent deliveries of letters and small packages between businesses in big cities with heavily congested traffic.'),(26,'EXPLORER LEGION',12000,'MALE','EXPLORER',5,'Flat bar road bikes are road bikes fitted with mountain bike-style shifters, brake levers, and a flat handlebar. They fit into the continuum between hybrids and road bikes.'),(27,'VISITOR BAMBOO',16000,'FEMALE','VISITOR',6,'Messenger bikes are typically used for urgent deliveries of letters and small packages between businesses in big cities with heavily congested traffic.'),(28,'VISITOR ALLEY ',16000,'MALE','VISITOR',7,'Flat bar road bikes are road bikes fitted with mountain bike-style shifters, brake levers, and a flat handlebar. They fit into the continuum between hybrids and road bikes.'),(29,'EXPLORER SPARK ',10800,'MALE','EXPLORER',8,'Messenger bikes are typically used for urgent deliveries of letters and small packages between businesses in big cities with heavily congested traffic.'),(30,'EXPLORER  ROBIX',9400,'MALE','EXPLORER',9,'Messenger bikes are typically used for urgent deliveries of letters and small packages between businesses in big cities with heavily congested traffic.'),(31,'PONY ',8400,'MALE','PONY',10,'Freeride bicycles in this category usually have very strong frames and dual-suspension with the travel of six inches and up. '),(32,'PONY ',8000,'MALE','PONY',11,'Freeride bicycles in this category usually have very strong frames and dual-suspension with the travel of six inches and up. '),(33,'EXPLORER MAGNITO',11500,'MALE','EXPLORER',12,'Freeride bicycles in this category usually have very strong frames and dual-suspension with the travel of six inches and up. '),(34,'FORCE MILITAR ',5990,'MALE','FORCE',13,'Freeride bicycles in this category usually have very strong frames and dual-suspension with the travel of six inches and up. '),(35,'BASKET K',7300,'MALE','E-BIKES',14,'An electric bicycle allows the rider the choice of pedaling or \'coasting\'; the bicycle being propelled by an electric motor, which is frequently incorporated into the front or rear hub.'),(36,'ATHENA',5990,'MALE','E-BIKES',15,'An electric bicycle allows the rider the choice of pedaling or \'coasting\'; the bicycle being propelled by an electric motor, which is frequently incorporated into the front or rear hub.'),(37,'VISITOR  GEISHA',8990,'FEMALE','VISITOR',16,'Downhill bikes are a specialized type of mountain bike with a very strong frame, altered geometry, and long-travel suspension. '),(38,'VISITOR  GABI',12990,'FEMALE','VISITOR',17,'Downhill bikes are a specialized type of mountain bike with a very strong frame, altered geometry, and long-travel suspension. '),(39,'VISITOR SECRET',5990,'FEMALE','VISITOR',18,'Downhill bikes are a specialized type of mountain bike with a very strong frame, altered geometry, and long-travel suspension. '),(40,'FORCE MILITAR ',13900,'MALE','FORCE',19,'Flat bar road bikes are road bikes fitted with mountain bike-style shifters, brake levers, and a flat handlebar. They fit into the continuum between hybrids and road bikes.'),(41,'VISITOR - ROZE',17300,'FEMALE','VISITOR',20,'Downhill bikes are a specialized type of mountain bike with a very strong frame, altered geometry, and long-travel suspension. '),(42,'VISITOR - DOTT ',15000,'FEMALE','VISITOR',1,'Downhill bikes are a specialized type of mountain bike with a very strong frame, altered geometry, and long-travel suspension. '),(43,'VISITOR-ZERDELIJA ',13300,'FEMALE','VISITOR',2,'Downhill bikes are a specialized type of mountain bike with a very strong frame, altered geometry, and long-travel suspension. '),(44,'BLUESTER ',5990,'MALE','E-BIKES',3,'An electric bicycle allows the rider the choice of pedaling or \'coasting\'; the bicycle being propelled by an electric motor, which is frequently incorporated into the front or rear hub.'),(45,'BASKET ',30000,'FEMALE','E-BIKES',4,'An electric bicycle allows the rider the choice of pedaling or \'coasting\'; the bicycle being propelled by an electric motor, which is frequently incorporated into the front or rear hub.'),(46,'IDEAL HYDRAULIC 2018',32300,'MALE','IDEAL',5,'Mountain bicycles (also called All Terrain Bicycle) are designed for off-road cycling. All-mountain bicycles feature sturdy, highly durable frames and wheels, wide-gauge treaded tires, and cross-wise handlebars to help the rider resist sudden jolts'),(47,'IDEAL MOOVIC 2018',23100,'MALE','IDEAL',6,'Mountain bicycles (also called All Terrain Bicycle) are designed for off-road cycling. All-mountain bicycles feature sturdy, highly durable frames and wheels, wide-gauge treaded tires, and cross-wise handlebars to help the rider resist sudden jolts'),(48,'IDEAL FUNCORE 2018',34500,'MALE','IDEAL',7,'Mountain bicycles (also called All Terrain Bicycle) are designed for off-road cycling. All-mountain bicycles feature sturdy, highly durable frames and wheels, wide-gauge treaded tires, and cross-wise handlebars to help the rider resist sudden jolts'),(49,'IDEAL HYDRAULIC DB 2018',31300,'MALE','IDEAL',8,'Mountain bicycles (also called All Terrain Bicycle) are designed for off-road cycling. All-mountain bicycles feature sturdy, highly durable frames and wheels, wide-gauge treaded tires, and cross-wise handlebars to help the rider resist sudden jolts'),(50,'CAPRIOLO PASSION LADY',16900,'FEMALE','E-BIKES',9,'An electric bicycle allows the rider the choice of pedaling or \'coasting\'; the bicycle being propelled by an electric motor, which is frequently incorporated into the front or rear hub.'),(51,'VIPER  TALON',34500,'MALE','E-BIKES',10,'An electric bicycle allows the rider the choice of pedaling or \'coasting\'; the bicycle being propelled by an electric motor, which is frequently incorporated into the front or rear hub.'),(52,'AQL  RAPTORS',70000,'MALE','E-BIKES',11,'An electric bicycle allows the rider the choice of pedaling or \'coasting\'; the bicycle being propelled by an electric motor, which is frequently incorporated into the front or rear hub.'),(53,'IDEAL CITYCOM',30500,'MALE','IDEAL',12,'Mountain bicycles (also called All Terrain Bicycle) are designed for off-road cycling. All-mountain bicycles feature sturdy, highly durable frames and wheels, wide-gauge treaded tires, and cross-wise handlebars to help the rider resist sudden jolts'),(54,'IDEAL CITYLIFE',28000,'MALE','IDEAL',13,'Mountain bicycles (also called All Terrain Bicycle) are designed for off-road cycling. All-mountain bicycles feature sturdy, highly durable frames and wheels, wide-gauge treaded tires, and cross-wise handlebars to help the rider resist sudden jolts'),(55,'IDEAL CITYRUN',26460,'MALE','IDEAL',14,'Messenger bikes are typically used for urgent deliveries of letters and small packages between businesses in big cities with heavily congested traffic.'),(56,'IDEAL COMFORT W',31500,'FEMALE','IDEAL',15,'Messenger bikes are typically used for urgent deliveries of letters and small packages between businesses in big cities with heavily congested traffic.'),(57,'IDEAL EZIGO W',32500,'FEMALE','IDEAL',16,'Messenger bikes are typically used for urgent deliveries of letters and small packages between businesses in big cities with heavily congested traffic.'),(58,'IDEAL EZIGO LADY',30500,'FEMALE','IDEAL',17,'Messenger bikes are typically used for urgent deliveries of letters and small packages between businesses in big cities with heavily congested traffic.'),(59,'IDEAL TRAVELON',38500,'MALE','IDEAL',18,'Mountain bicycles (also called All Terrain Bicycle) are designed for off-road cycling. All-mountain bicycles feature sturdy, highly durable frames and wheels, wide-gauge treaded tires, and cross-wise handlebars to help the rider resist sudden jolts'),(60,'IDEAL BOOMMAX ',35500,'MALE','IDEAL',19,'Mountain bicycles (also called All Terrain Bicycle) are designed for off-road cycling. All-mountain bicycles feature sturdy, highly durable frames and wheels, wide-gauge treaded tires, and cross-wise handlebars to help the rider resist sudden jolts'),(61,'IDEAL HILLMASTER 29 Y15',35500,'MALE','IDEAL',20,'Mountain bicycles (also called All Terrain Bicycle) are designed for off-road cycling. All-mountain bicycles feature sturdy, highly durable frames and wheels, wide-gauge treaded tires, and cross-wise handlebars to help the rider resist sudden jolts'),(62,'IDEAL CROSSMO',30000,'MALE','IDEAL',1,'Mountain bicycles (also called All Terrain Bicycle) are designed for off-road cycling. All-mountain bicycles feature sturdy, highly durable frames and wheels, wide-gauge treaded tires, and cross-wise handlebars to help the rider resist sudden jolts'),(63,'IDEAL NERGETIC',34500,'MALE','IDEAL',2,'Flat bar road bikes are road bikes fitted with mountain bike-style shifters, brake levers, and a flat handlebar. They fit into the continuum between hybrids and road bikes.'),(64,'BMX',1000,'MALE','BMX Mountain',5,'The best choice for you !!!'),(129,'Shinamo',5000,'MALE','Shinamo Bikes',17,'Combinated version of bikes !'),(130,'BMX',46546,'Male','BMX',5,'BMX'),(131,'BMX',46546,'Male','BMX',5,'BMX');
/*!40000 ALTER TABLE `bike` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int unsigned NOT NULL AUTO_INCREMENT,
  `bike_id` int NOT NULL,
  `bike_name` varchar(45) NOT NULL,
  `bike_price` int NOT NULL,
  `customer_id` int NOT NULL,
  `customer_email` varchar(45) NOT NULL,
  `order_quantity` int NOT NULL,
  `order_date` varchar(45) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (2,129,'Shinamo',5000,21,'miki@yahoo.com',1,'2021-12-06');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (21,'Miki','Aleksov','Miki_a','Delchevo','miki@yahoo.com','123456'),(22,'Miki','alek','Miki_a','del','mi@gmail.com','1234567');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-07 12:35:48
