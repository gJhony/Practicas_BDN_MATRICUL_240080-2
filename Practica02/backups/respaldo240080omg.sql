CREATE DATABASE  IF NOT EXISTS `db_test_7b` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_test_7b`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_test_7b
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `tb_logs`
--

DROP TABLE IF EXISTS `tb_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_logs` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `table_name` varchar(80) NOT NULL,
  `table_operation` enum('Create','Read','Update','Delete') DEFAULT NULL,
  `db_user` varchar(80) NOT NULL,
  `operation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `table_description` text NOT NULL,
  `operation_status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_logs`
--

LOCK TABLES `tb_logs` WRITE;
/*!40000 ALTER TABLE `tb_logs` DISABLE KEYS */;
INSERT INTO `tb_logs` VALUES (1,'tb_users','Create','root@localhost','2026-09-10 10:26:14','Usuario creado. ID=2, email=240080@utxicotepec.edu.mx, nick=JEIG, creation_date=2026-09-10 10:26:14, status=1',_binary ''),(2,'tb_users','Create','root@localhost','2026-09-10 10:27:22','Usuario creado. ID=5, email=240755@utxicotepec.edu.mx, nick=SARA, creation_date=2026-09-10 10:27:22, status=1',_binary ''),(3,'tb_users','Create','root@localhost','2026-09-10 10:27:38','Usuario creado. ID=6, email=240242@utxicotepec.edu.mx, nick=MAGO, creation_date=2026-09-10 10:27:38, status=1',_binary ''),(4,'tb_users','Create','root@localhost','2026-09-10 10:28:20','Usuario creado. ID=7, email=240904@utxicotepec.edu.mx, nick=PONCHO, creation_date=2026-09-10 10:28:20, status=1',_binary ''),(5,'tb_users','Create','root@localhost','2026-09-10 11:06:36','Usuario creado. ID=8, email=240556@utxicotepec.edu.mx, nick=JENY, creation_date=2026-09-10 11:06:36, status=1',_binary ''),(6,'tb_users','Create','mago.isabela@DESKTOP-1UU124B','2026-09-10 11:37:26','Usuario creado. ID=9, email=240765@utxicotepec.edu.mx, nick=Dara, creation_date=2026-09-10 11:37:26, status=1',_binary ''),(7,'tb_users','Create','mago.isabela@DESKTOP-1UU124B','2026-09-10 11:41:31','Usuario creado. ID=11, email=240107@utxicotepec.edu.mx, nick=Rene, creation_date=2026-09-10 11:41:31, status=1',_binary ''),(8,'tb_users','Create','mago.isabela@DESKTOP-1UU124B','2026-09-10 11:42:02','Usuario creado. ID=12, email=240045@utxicotepec.edu.mx, nick=Aaron, creation_date=2026-09-10 11:42:02, status=1',_binary ''),(9,'tb_products','Create','rene.gonzalez@DESKTOP-5U5Q7G0','2026-09-23 22:27:25','Producto creado. ID=1, sku=BOING-MNG-500, nombre=Boing Mango, categoria=Bebidas, marca=Boing, variante=Mango 500 ml, color=Naranja, precio=18.00, stock=50, proveedor=Cooperativa Pascual, fecha_ingreso=2026-09-23, calificacion=4.7, ventas_mensuales=120, activo=Sí',_binary ''),(10,'tb_products','Create','rene.gonzalez@DESKTOP-5U5Q7G0','2026-09-23 22:27:25','Producto creado. ID=2, sku=COCA-ORI-600, nombre=Coca-Cola Original, categoria=Bebidas, marca=Coca-Cola, variante=Original 600 ml, color=Negro, precio=22.00, stock=80, proveedor=Coca-Cola FEMSA, fecha_ingreso=2026-09-23, calificacion=4.8, ventas_mensuales=200, activo=Sí',_binary '');
/*!40000 ALTER TABLE `tb_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_products`
--

DROP TABLE IF EXISTS `tb_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_products` (
  `id_producto` int NOT NULL,
  `sku` varchar(30) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `marca` varchar(100) NOT NULL,
  `variante` varchar(100) NOT NULL,
  `color` varchar(50) NOT NULL,
  `precio_mxn` decimal(12,2) NOT NULL,
  `stock` int NOT NULL,
  `proveedor` varchar(150) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `calificacion` decimal(3,1) NOT NULL,
  `ventas_mensuales` int NOT NULL,
  `activo` varchar(10) NOT NULL,
  PRIMARY KEY (`id_producto`),
  UNIQUE KEY `uk_tb_products_sku` (`sku`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_products`
--

LOCK TABLES `tb_products` WRITE;
/*!40000 ALTER TABLE `tb_products` DISABLE KEYS */;
INSERT INTO `tb_products` VALUES (1,'BOING-MNG-500','Boing Mango','Bebidas','Boing','Mango 500 ml','Naranja',18.00,50,'Cooperativa Pascual','2026-09-23',4.7,120,'Sí'),(2,'COCA-ORI-600','Coca-Cola Original','Bebidas','Coca-Cola','Original 600 ml','Negro',22.00,80,'Coca-Cola FEMSA','2026-09-23',4.8,200,'Sí');
/*!40000 ALTER TABLE `tb_products` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trq_products_after_insert` AFTER INSERT ON `tb_products` FOR EACH ROW BEGIN

    INSERT INTO `tb_logs`
    (
        `table_name`,
        `table_operation`,
        `db_user`,
        `table_description`,
        `operation_date`,
        `operation_status`
    )
    VALUES
    (
        'tb_products',
        'Create',
        USER(),
        CONCAT(
            'Producto creado. ID=', NEW.id_producto,
            ', sku=', NEW.sku,
            ', nombre=', NEW.nombre,
            ', categoria=', NEW.categoria,
            ', marca=', NEW.marca,
            ', variante=', NEW.variante,
            ', color=', NEW.color,
            ', precio=', NEW.precio_mxn,
            ', stock=', NEW.stock,
            ', proveedor=', NEW.proveedor,
            ', fecha_ingreso=', NEW.fecha_ingreso,
            ', calificacion=', NEW.calificacion,
            ', ventas_mensuales=', NEW.ventas_mensuales,
            ', activo=', NEW.activo
        ),
        CURRENT_TIMESTAMP,
        b'1'
    );

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trq_products_after_update` AFTER UPDATE ON `tb_products` FOR EACH ROW BEGIN

    INSERT INTO `tb_logs`
    (
        `table_name`,
        `table_operation`,
        `db_user`,
        `table_description`,
        `operation_date`,
        `operation_status`
    )
    VALUES
    (
        'tb_products',
        'Update',
        USER(),
        CONCAT(
            'Producto actualizado. ID=', NEW.id_producto,
            ', sku=', NEW.sku,
            ', nombre=', NEW.nombre,
            ', categoria=', NEW.categoria,
            ', marca=', NEW.marca,
            ', variante=', NEW.variante,
            ', color=', NEW.color,
            ', precio=', NEW.precio_mxn,
            ', stock=', NEW.stock,
            ', proveedor=', NEW.proveedor,
            ', fecha_ingreso=', NEW.fecha_ingreso,
            ', calificacion=', NEW.calificacion,
            ', ventas_mensuales=', NEW.ventas_mensuales,
            ', activo=', NEW.activo
        ),
        CURRENT_TIMESTAMP,
        b'1'
    );

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trq_products_after_delete` AFTER DELETE ON `tb_products` FOR EACH ROW BEGIN

    INSERT INTO `tb_logs`
    (
        `table_name`,
        `table_operation`,
        `db_user`,
        `table_description`,
        `operation_date`,
        `operation_status`
    )
    VALUES
    (
        'tb_products',
        'Delete',
        USER(),
        CONCAT(
            'Producto eliminado. ID=', OLD.id_producto,
            ', sku=', OLD.sku,
            ', nombre=', OLD.nombre,
            ', categoria=', OLD.categoria,
            ', marca=', OLD.marca,
            ', variante=', OLD.variante,
            ', color=', OLD.color,
            ', precio=', OLD.precio_mxn,
            ', stock=', OLD.stock,
            ', proveedor=', OLD.proveedor,
            ', fecha_ingreso=', OLD.fecha_ingreso,
            ', calificacion=', OLD.calificacion,
            ', ventas_mensuales=', OLD.ventas_mensuales,
            ', activo=', OLD.activo
        ),
        CURRENT_TIMESTAMP,
        b'1'
    );

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `tb_users`
--

DROP TABLE IF EXISTS `tb_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_users` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) NOT NULL,
  `nick` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creation_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `nick` (`nick`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (2,'240080@utxicotepec.edu.mx','JEIG','81dc9bdb52d04dc20036dbd8313ed055','2026-09-10 10:26:14',NULL,NULL,_binary ''),(5,'240755@utxicotepec.edu.mx','SARA','81dc9bdb52d04dc20036dbd8313ed055','2026-09-10 10:27:22',NULL,NULL,_binary ''),(6,'240242@utxicotepec.edu.mx','MAGO','81dc9bdb52d04dc20036dbd8313ed055','2026-09-10 10:27:38',NULL,NULL,_binary ''),(7,'240904@utxicotepec.edu.mx','PONCHO','81dc9bdb52d04dc20036dbd8313ed055','2026-09-10 10:28:20',NULL,NULL,_binary ''),(8,'240556@utxicotepec.edu.mx','JENY','81dc9bdb52d04dc20036dbd8313ed055','2026-09-10 11:06:36',NULL,NULL,_binary ''),(9,'240765@utxicotepec.edu.mx','Dara','871534c2971fceb021437786bc940bd2','2026-09-10 11:37:26',NULL,NULL,_binary ''),(11,'240107@utxicotepec.edu.mx','Rene','871534c2971fceb021437786bc940bd2','2026-09-10 11:41:31',NULL,NULL,_binary ''),(12,'240045@utxicotepec.edu.mx','Aaron','871534c2971fceb021437786bc940bd2','2026-09-10 11:42:02',NULL,NULL,_binary '');
/*!40000 ALTER TABLE `tb_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trq_users_after_insert` AFTER INSERT ON `tb_users` FOR EACH ROW BEGIN

    INSERT INTO `tb_logs`
    (
        `table_name`,
        `table_operation`,
        `db_user`,
        `table_description`,
        `operation_date`,
        `operation_status`
    )
    VALUES
    (
        'tb_users',
        'Create',
        USER(),
        CONCAT(
            'Usuario creado. ID=', NEW.ID,
            ', email=', NEW.email,
            ', nick=', NEW.nick,
            ', creation_date=', NEW.creation_date,
            ', status=', CAST(NEW.status AS UNSIGNED)
        ),
        CURRENT_TIMESTAMP,
        b'1'
    );

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trq_users_after_update` AFTER UPDATE ON `tb_users` FOR EACH ROW BEGIN

    INSERT INTO `tb_logs`
    (
        `table_name`,
        `table_operation`,
        `db_user`,
        `table_description`,
        `operation_date`,
        `operation_status`
    )
    VALUES
    (
        'tb_users',
        'Update',
        USER(),
        CONCAT(
            'Usuario actualizado. ID=', NEW.ID,
            ', email=', NEW.email,
            ', nick=', NEW.nick,
            ', creation_date=', NEW.creation_date,
            ', last_update=', IFNULL(NEW.last_update, 'NULL'),
            ', last_login=', IFNULL(NEW.last_login, 'NULL'),
            ', status=', CAST(NEW.status AS UNSIGNED)
        ),
        CURRENT_TIMESTAMP,
        b'1'
    );

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trq_users_after_delete` AFTER DELETE ON `tb_users` FOR EACH ROW BEGIN

    INSERT INTO `tb_logs`
    (
        `table_name`,
        `table_operation`,
        `db_user`,
        `table_description`,
        `operation_date`,
        `operation_status`
    )
    VALUES
    (
        'tb_users',
        'Delete',
        USER(),
        CONCAT(
            'Usuario eliminado. ID=', OLD.ID,
            ', email=', OLD.email,
            ', nick=', OLD.nick,
            ', creation_date=', OLD.creation_date,
            ', status=', CAST(OLD.status AS UNSIGNED)
        ),
        CURRENT_TIMESTAMP,
        b'1'
    );

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'db_test_7b'
--

--
-- Dumping routines for database 'db_test_7b'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-09-23 22:35:23
