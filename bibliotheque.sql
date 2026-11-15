-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: gestion_bibliotheque_universitaire
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auteur`
--

DROP TABLE IF EXISTS `auteur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auteur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `nationalite` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auteur`
--

LOCK TABLES `auteur` WRITE;
/*!40000 ALTER TABLE `auteur` DISABLE KEYS */;
INSERT INTO `auteur` VALUES (1,'Hugo','Victor','Française'),(2,'Camus','Albert','Française'),(3,'Shakespeare','William','Britannique'),(4,'Dostoïevski','Fiodor','Russe'),(5,'Kafka','Franz','Tchèque'),(6,'Balzac','Honoré','Française');
/*!40000 ALTER TABLE `auteur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emprunt`
--

DROP TABLE IF EXISTS `emprunt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emprunt` (
  `id_emprunt` int NOT NULL AUTO_INCREMENT,
  `date_emprunt` date NOT NULL,
  `date_de_retour_prevue` date NOT NULL,
  `date_de_retour_reelle` date DEFAULT NULL,
  `etudiant_id` int DEFAULT NULL,
  `livre_id` int DEFAULT NULL,
  PRIMARY KEY (`id_emprunt`),
  KEY `etudiant_id` (`etudiant_id`),
  KEY `livre_id` (`livre_id`),
  CONSTRAINT `emprunt_ibfk_1` FOREIGN KEY (`etudiant_id`) REFERENCES `etudiant` (`id_etudiant`),
  CONSTRAINT `emprunt_ibfk_2` FOREIGN KEY (`livre_id`) REFERENCES `livre` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emprunt`
--

LOCK TABLES `emprunt` WRITE;
/*!40000 ALTER TABLE `emprunt` DISABLE KEYS */;
INSERT INTO `emprunt` VALUES (1,'2026-01-10','2026-01-24','2026-01-20',1,1),(2,'2026-01-12','2026-01-26','2026-01-25',2,3),(3,'2026-01-15','2026-01-29',NULL,3,5),(4,'2026-01-18','2026-02-01','2026-01-30',4,7),(5,'2026-02-03','2026-02-17','2026-02-15',1,2),(6,'2026-02-10','2026-02-24','2026-02-20',1,5),(7,'2026-02-12','2026-02-26','2026-03-01',2,1),(8,'2026-03-01','2026-03-15','2026-03-10',2,4),(9,'2026-03-05','2026-03-19','2026-03-18',3,1),(10,'2026-03-10','2026-03-24',NULL,5,6),(11,'2026-03-15','2026-03-29','2026-03-25',6,1),(12,'2026-04-01','2026-04-15','2026-04-14',7,9),(13,'2026-04-05','2026-04-19',NULL,8,3),(14,'2026-04-10','2026-04-24','2026-04-20',4,5),(15,'2026-04-12','2026-04-26','2026-04-25',5,7);
/*!40000 ALTER TABLE `emprunt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etudiant`
--

DROP TABLE IF EXISTS `etudiant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etudiant` (
  `id_etudiant` int NOT NULL AUTO_INCREMENT,
  `numero_telephone` varchar(100) DEFAULT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `filiere` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_etudiant`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etudiant`
--

LOCK TABLES `etudiant` WRITE;
/*!40000 ALTER TABLE `etudiant` DISABLE KEYS */;
INSERT INTO `etudiant` VALUES (1,'0612345678','Dupont','Alice','alice.dupont@email.com','Informatique'),(2,'0623456789','Martin','Lucas','lucas.martin@email.com','Mathématiques'),(3,'0634567890','Bernard','Emma','emma.bernard@email.com','Physique'),(4,'0645678901','Thomas','Nathan','nathan.thomas@email.com','Informatique'),(5,'0656789012','Petit','Chloé','chloe.petit@email.com','Chimie'),(6,'0667890123','Robert','Hugo','hugo.robert@email.com','Biologie'),(7,'0678901234','Richard','Manon','manon.richard@email.com','Littérature'),(8,'0689012345','Durand','Louis','louis.durand@email.com','Histoire');
/*!40000 ALTER TABLE `etudiant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `livre`
--

DROP TABLE IF EXISTS `livre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `livre` (
  `titre` varchar(200) DEFAULT NULL,
  `annee` int DEFAULT NULL,
  `categorie` varchar(100) DEFAULT NULL,
  `NOMBRE_DEXEMPLAIRES` int unsigned DEFAULT NULL,
  `ID` int NOT NULL AUTO_INCREMENT,
  `id_auteur` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `id_auteur` (`id_auteur`),
  CONSTRAINT `livre_ibfk_1` FOREIGN KEY (`id_auteur`) REFERENCES `auteur` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `livre`
--

LOCK TABLES `livre` WRITE;
/*!40000 ALTER TABLE `livre` DISABLE KEYS */;
INSERT INTO `livre` VALUES ('Les Misérables',1862,'Roman',5,1,1),('Notre-Dame de Paris',1831,'Roman',3,2,1),('L\'Étranger',1942,'Roman',4,3,2),('La Peste',1947,'Roman',2,4,2),('Hamlet',1603,'Théâtre',6,5,3),('Macbeth',1606,'Théâtre',3,6,3),('Crime et Châtiment',1866,'Roman',4,7,4),('L\'Idiot',1869,'Roman',2,8,4),('La Métamorphose',1915,'Nouvelle',5,9,5),('Le Procès',1925,'Roman',3,10,5),('Le Père Goriot',1835,'Roman',4,11,6),('La Chute',1956,'Roman',2,12,2);
/*!40000 ALTER TABLE `livre` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-15  9:42:59
