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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_logs`
--

LOCK TABLES `tb_logs` WRITE;
/*!40000 ALTER TABLE `tb_logs` DISABLE KEYS */;
INSERT INTO `tb_logs` VALUES (1,'tb_users','Create','root@localhost','2026-09-10 10:26:14','Usuario creado. ID=2, email=240080@utxicotepec.edu.mx, nick=JEIG, creation_date=2026-09-10 10:26:14, status=1',_binary ''),(2,'tb_users','Create','root@localhost','2026-09-10 10:27:22','Usuario creado. ID=5, email=240755@utxicotepec.edu.mx, nick=SARA, creation_date=2026-09-10 10:27:22, status=1',_binary ''),(3,'tb_users','Create','root@localhost','2026-09-10 10:27:38','Usuario creado. ID=6, email=240242@utxicotepec.edu.mx, nick=MAGO, creation_date=2026-09-10 10:27:38, status=1',_binary ''),(4,'tb_users','Create','root@localhost','2026-09-10 10:28:20','Usuario creado. ID=7, email=240904@utxicotepec.edu.mx, nick=PONCHO, creation_date=2026-09-10 10:28:20, status=1',_binary ''),(5,'tb_users','Create','root@localhost','2026-09-10 11:06:36','Usuario creado. ID=8, email=240556@utxicotepec.edu.mx, nick=JENY, creation_date=2026-09-10 11:06:36, status=1',_binary ''),(6,'tb_users','Create','mago.isabela@DESKTOP-1UU124B','2026-09-10 11:37:26','Usuario creado. ID=9, email=240765@utxicotepec.edu.mx, nick=Dara, creation_date=2026-09-10 11:37:26, status=1',_binary ''),(7,'tb_users','Create','mago.isabela@DESKTOP-1UU124B','2026-09-10 11:41:31','Usuario creado. ID=11, email=240107@utxicotepec.edu.mx, nick=Rene, creation_date=2026-09-10 11:41:31, status=1',_binary ''),(8,'tb_users','Create','mago.isabela@DESKTOP-1UU124B','2026-09-10 11:42:02','Usuario creado. ID=12, email=240045@utxicotepec.edu.mx, nick=Aaron, creation_date=2026-09-10 11:42:02, status=1',_binary ''),(9,'tb_products','Create','rene.gonzalez@DESKTOP-5U5Q7G0','2026-09-23 22:27:25','Producto creado. ID=1, sku=BOING-MNG-500, nombre=Boing Mango, categoria=Bebidas, marca=Boing, variante=Mango 500 ml, color=Naranja, precio=18.00, stock=50, proveedor=Cooperativa Pascual, fecha_ingreso=2026-09-23, calificacion=4.7, ventas_mensuales=120, activo=Sí',_binary ''),(10,'tb_products','Create','rene.gonzalez@DESKTOP-5U5Q7G0','2026-09-23 22:27:25','Producto creado. ID=2, sku=COCA-ORI-600, nombre=Coca-Cola Original, categoria=Bebidas, marca=Coca-Cola, variante=Original 600 ml, color=Negro, precio=22.00, stock=80, proveedor=Coca-Cola FEMSA, fecha_ingreso=2026-09-23, calificacion=4.8, ventas_mensuales=200, activo=Sí',_binary ''),(11,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 10:56:45','Producto creado. ID=7, sku=COM-00001, nombre=Pasta termica Cenit de 8 gramos modelo 9694, categoria=Componentes, marca=Cenit, variante=8 gramos, color=Gris, precio=74.60, stock=2, proveedor=Distribuidora Tecnologia MX, fecha_ingreso=2026-09-24, calificacion=4.5, ventas_mensuales=25, activo=No',_binary ''),(12,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 10:56:45','Producto creado. ID=8, sku=COM-00002, nombre=Procesador de 8 nucleos Solara 4.2 GHz modelo 9880, categoria=Componentes, marca=Solara, variante=4.2 GHz, color=Negro, precio=4519.90, stock=408, proveedor=Tecnologia Nacional SA, fecha_ingreso=2026-09-24, calificacion=4.8, ventas_mensuales=156, activo=Si',_binary ''),(13,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 10:56:45','Producto creado. ID=9, sku=RED-00001, nombre=Cable de red Cat7 Kukulcan de 3 metros modelo 8995, categoria=Redes, marca=Kukulcan, variante=3 metros, color=Negro, precio=530.50, stock=0, proveedor=Redes y Conectividad MX, fecha_ingreso=2026-09-24, calificacion=4.6, ventas_mensuales=87, activo=Si',_binary ''),(14,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 10:56:45','Producto creado. ID=10, sku=TVS-00001, nombre=Mini proyector Kukulcan con bateria modelo 2371, categoria=Video, marca=Kukulcan, variante=Portatil, color=Negro, precio=4716.09, stock=146, proveedor=Electronica del Centro, fecha_ingreso=2026-09-24, calificacion=4.4, ventas_mensuales=63, activo=No',_binary ''),(15,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 10:56:45','Producto creado. ID=11, sku=MON-00001, nombre=Monitor para oficina Andes de 24 pulgadas modelo 1021, categoria=Monitores, marca=Andes, variante=24 pulgadas, color=Negro, precio=3734.43, stock=485, proveedor=Equipos Empresariales MX, fecha_ingreso=2026-09-24, calificacion=4.7, ventas_mensuales=112, activo=Si',_binary ''),(16,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 11:21:20','Producto creado. ID=21, sku=LAP-00003, nombre=Laptop profesional Orion Intel Core i7, categoria=Computo, marca=Orion, variante=Core i7 16GB 512GB, color=Gris, precio=28999.90, stock=35, proveedor=Tecnologia Nacional SA, fecha_ingreso=2026-09-24, calificacion=4.8, ventas_mensuales=94, activo=Si',_binary ''),(17,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 11:21:20','Producto creado. ID=22, sku=MON-00002, nombre=Monitor Gamer Titan 27 pulgadas, categoria=Monitores, marca=Titan, variante=27 pulgadas 165Hz, color=Negro, precio=6299.90, stock=72, proveedor=Distribuidora Tecnologia MX, fecha_ingreso=2026-09-24, calificacion=4.7, ventas_mensuales=138, activo=Si',_binary ''),(18,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 11:21:20','Producto creado. ID=23, sku=TEC-00001, nombre=Teclado mecanico Nova RGB, categoria=Perifericos, marca=Nova, variante=Mecanico RGB, color=Negro, precio=1199.50, stock=185, proveedor=Perifericos del Centro, fecha_ingreso=2026-09-24, calificacion=4.6, ventas_mensuales=215, activo=Si',_binary ''),(19,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 11:21:20','Producto creado. ID=24, sku=MOU-00001, nombre=Mouse inalambrico Atlas ergonomico, categoria=Perifericos, marca=Atlas, variante=Inalambrico, color=Negro, precio=649.90, stock=240, proveedor=Perifericos del Centro, fecha_ingreso=2026-09-24, calificacion=4.5, ventas_mensuales=176, activo=Si',_binary ''),(20,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 11:21:20','Producto creado. ID=25, sku=AUD-00002, nombre=Audifonos Bluetooth Nova Pro, categoria=Audio, marca=Nova, variante=Bluetooth Pro, color=Azul, precio=1899.00, stock=96, proveedor=Electronica del Centro, fecha_ingreso=2026-09-24, calificacion=4.7, ventas_mensuales=121, activo=Si',_binary ''),(21,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 11:21:20','Producto creado. ID=26, sku=TEL-00001, nombre=Smartphone Vega 256GB 5G, categoria=Telefonia, marca=Vega, variante=256GB 5G, color=Negro, precio=12499.90, stock=54, proveedor=Tecnologia Nacional SA, fecha_ingreso=2026-09-24, calificacion=4.8, ventas_mensuales=143, activo=Si',_binary ''),(22,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 11:21:20','Producto creado. ID=27, sku=TEL-00002, nombre=Smartphone Solaris 128GB 5G, categoria=Telefonia, marca=Solaris, variante=128GB 5G, color=Azul, precio=8499.00, stock=87, proveedor=Electronica del Centro, fecha_ingreso=2026-09-24, calificacion=4.6, ventas_mensuales=117, activo=Si',_binary ''),(23,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 11:21:20','Producto creado. ID=28, sku=TAB-00001, nombre=Tablet Orion 10.1 pulgadas 128GB, categoria=Tablets, marca=Orion, variante=10.1 pulgadas 128GB, color=Gris, precio=5899.90, stock=63, proveedor=Tecnologia Nacional SA, fecha_ingreso=2026-09-24, calificacion=4.5, ventas_mensuales=82, activo=Si',_binary ''),(24,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 11:21:20','Producto creado. ID=29, sku=SSD-00001, nombre=SSD interno Cobalto 1TB NVMe, categoria=Almacenamiento, marca=Cobalto, variante=1TB NVMe, color=Negro, precio=1749.90, stock=156, proveedor=Componentes MX, fecha_ingreso=2026-09-24, calificacion=4.8, ventas_mensuales=194, activo=Si',_binary ''),(25,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 11:21:20','Producto creado. ID=30, sku=RAM-00001, nombre=Memoria RAM Cobalto DDR4 16GB, categoria=Componentes, marca=Cobalto, variante=16GB DDR4 3200MHz, color=Negro, precio=899.90, stock=210, proveedor=Componentes MX, fecha_ingreso=2026-09-24, calificacion=4.7, ventas_mensuales=236, activo=Si',_binary ''),(26,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 11:21:20','Producto creado. ID=31, sku=GPU-00001, nombre=Tarjeta grafica Titan RTX 4060, categoria=Componentes, marca=Titan, variante=RTX 4060 8GB, color=Negro, precio=8499.90, stock=28, proveedor=Componentes MX, fecha_ingreso=2026-09-24, calificacion=4.9, ventas_mensuales=71, activo=Si',_binary ''),(27,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 11:21:20','Producto creado. ID=32, sku=CPU-00001, nombre=Procesador Solara Ryzen 7 5700X, categoria=Componentes, marca=Solara, variante=Ryzen 7, color=Plata, precio=3899.90, stock=46, proveedor=Componentes MX, fecha_ingreso=2026-09-24, calificacion=4.8, ventas_mensuales=105, activo=Si',_binary ''),(28,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 11:21:20','Producto creado. ID=33, sku=RED-00002, nombre=Router Kukulcan WiFi 6, categoria=Redes, marca=Kukulcan, variante=WiFi 6 doble banda, color=Blanco, precio=1599.90, stock=91, proveedor=Redes y Conectividad MX, fecha_ingreso=2026-09-24, calificacion=4.6, ventas_mensuales=128, activo=Si',_binary ''),(29,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 11:21:20','Producto creado. ID=34, sku=RED-00003, nombre=Switch Kukulcan Gigabit 8 puertos, categoria=Redes, marca=Kukulcan, variante=8 puertos Gigabit, color=Negro, precio=1099.90, stock=115, proveedor=Redes y Conectividad MX, fecha_ingreso=2026-09-24, calificacion=4.5, ventas_mensuales=93, activo=Si',_binary ''),(30,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 11:21:20','Producto creado. ID=35, sku=CAM-00001, nombre=Camara web Nexora Full HD, categoria=Accesorios, marca=Nexora, variante=Full HD, color=Negro, precio=899.90, stock=134, proveedor=Electronica del Centro, fecha_ingreso=2026-09-24, calificacion=4.4, ventas_mensuales=156, activo=Si',_binary ''),(31,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 11:21:20','Producto creado. ID=36, sku=IMP-00001, nombre=Impresora multifuncional Andes WiFi, categoria=Impresion, marca=Andes, variante=Multifuncional WiFi, color=Blanco, precio=4299.90, stock=38, proveedor=Equipos Empresariales MX, fecha_ingreso=2026-09-24, calificacion=4.5, ventas_mensuales=64, activo=Si',_binary ''),(32,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 11:21:20','Producto creado. ID=37, sku=USB-00001, nombre=Memoria USB Cobalto 128GB, categoria=Almacenamiento, marca=Cobalto, variante=128GB USB 3.0, color=Negro, precio=349.90, stock=320, proveedor=Distribuidora Tecnologia MX, fecha_ingreso=2026-09-24, calificacion=4.6, ventas_mensuales=284, activo=Si',_binary ''),(33,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 11:21:20','Producto creado. ID=38, sku=BAT-00001, nombre=Bateria portatil Nexora 20000mAh, categoria=Accesorios, marca=Nexora, variante=20000mAh, color=Negro, precio=799.90, stock=142, proveedor=Electronica del Centro, fecha_ingreso=2026-09-24, calificacion=4.7, ventas_mensuales=167, activo=Si',_binary ''),(34,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 11:21:20','Producto creado. ID=39, sku=PRO-00001, nombre=Proyector Andes Full HD, categoria=Video, marca=Andes, variante=Full HD 4000 lumens, color=Blanco, precio=7299.90, stock=19, proveedor=Equipos Empresariales MX, fecha_ingreso=2026-09-24, calificacion=4.6, ventas_mensuales=52, activo=Si',_binary ''),(35,'tb_products','Create','diego.g@DESKTOP-S48N21D','2026-09-24 11:21:20','Producto creado. ID=40, sku=SIL-00001, nombre=Silla ergonomica Volcan para oficina, categoria=Oficina, marca=Volcan, variante=Ergonomica, color=Negro, precio=4599.90, stock=44, proveedor=Mobiliario Empresarial MX, fecha_ingreso=2026-09-24, calificacion=4.5, ventas_mensuales=68, activo=Si',_binary '');
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
INSERT INTO `tb_products` VALUES (1,'BOING-MNG-500','Boing Mango','Bebidas','Boing','Mango 500 ml','Naranja',18.00,50,'Cooperativa Pascual','2026-09-23',4.7,120,'Sí'),(2,'COCA-ORI-600','Coca-Cola Original','Bebidas','Coca-Cola','Original 600 ml','Negro',22.00,80,'Coca-Cola FEMSA','2026-09-23',4.8,200,'Sí'),(7,'COM-00001','Pasta termica Cenit de 8 gramos modelo 9694','Componentes','Cenit','8 gramos','Gris',74.60,2,'Distribuidora Tecnologia MX','2026-09-24',4.5,25,'No'),(8,'COM-00002','Procesador de 8 nucleos Solara 4.2 GHz modelo 9880','Componentes','Solara','4.2 GHz','Negro',4519.90,408,'Tecnologia Nacional SA','2026-09-24',4.8,156,'Si'),(9,'RED-00001','Cable de red Cat7 Kukulcan de 3 metros modelo 8995','Redes','Kukulcan','3 metros','Negro',530.50,0,'Redes y Conectividad MX','2026-09-24',4.6,87,'Si'),(10,'TVS-00001','Mini proyector Kukulcan con bateria modelo 2371','Video','Kukulcan','Portatil','Negro',4716.09,146,'Electronica del Centro','2026-09-24',4.4,63,'No'),(11,'MON-00001','Monitor para oficina Andes de 24 pulgadas modelo 1021','Monitores','Andes','24 pulgadas','Negro',3734.43,485,'Equipos Empresariales MX','2026-09-24',4.7,112,'Si'),(21,'LAP-00003','Laptop profesional Orion Intel Core i7','Computo','Orion','Core i7 16GB 512GB','Gris',28999.90,35,'Tecnologia Nacional SA','2026-09-24',4.8,94,'Si'),(22,'MON-00002','Monitor Gamer Titan 27 pulgadas','Monitores','Titan','27 pulgadas 165Hz','Negro',6299.90,72,'Distribuidora Tecnologia MX','2026-09-24',4.7,138,'Si'),(23,'TEC-00001','Teclado mecanico Nova RGB','Perifericos','Nova','Mecanico RGB','Negro',1199.50,185,'Perifericos del Centro','2026-09-24',4.6,215,'Si'),(24,'MOU-00001','Mouse inalambrico Atlas ergonomico','Perifericos','Atlas','Inalambrico','Negro',649.90,240,'Perifericos del Centro','2026-09-24',4.5,176,'Si'),(25,'AUD-00002','Audifonos Bluetooth Nova Pro','Audio','Nova','Bluetooth Pro','Azul',1899.00,96,'Electronica del Centro','2026-09-24',4.7,121,'Si'),(26,'TEL-00001','Smartphone Vega 256GB 5G','Telefonia','Vega','256GB 5G','Negro',12499.90,54,'Tecnologia Nacional SA','2026-09-24',4.8,143,'Si'),(27,'TEL-00002','Smartphone Solaris 128GB 5G','Telefonia','Solaris','128GB 5G','Azul',8499.00,87,'Electronica del Centro','2026-09-24',4.6,117,'Si'),(28,'TAB-00001','Tablet Orion 10.1 pulgadas 128GB','Tablets','Orion','10.1 pulgadas 128GB','Gris',5899.90,63,'Tecnologia Nacional SA','2026-09-24',4.5,82,'Si'),(29,'SSD-00001','SSD interno Cobalto 1TB NVMe','Almacenamiento','Cobalto','1TB NVMe','Negro',1749.90,156,'Componentes MX','2026-09-24',4.8,194,'Si'),(30,'RAM-00001','Memoria RAM Cobalto DDR4 16GB','Componentes','Cobalto','16GB DDR4 3200MHz','Negro',899.90,210,'Componentes MX','2026-09-24',4.7,236,'Si'),(31,'GPU-00001','Tarjeta grafica Titan RTX 4060','Componentes','Titan','RTX 4060 8GB','Negro',8499.90,28,'Componentes MX','2026-09-24',4.9,71,'Si'),(32,'CPU-00001','Procesador Solara Ryzen 7 5700X','Componentes','Solara','Ryzen 7','Plata',3899.90,46,'Componentes MX','2026-09-24',4.8,105,'Si'),(33,'RED-00002','Router Kukulcan WiFi 6','Redes','Kukulcan','WiFi 6 doble banda','Blanco',1599.90,91,'Redes y Conectividad MX','2026-09-24',4.6,128,'Si'),(34,'RED-00003','Switch Kukulcan Gigabit 8 puertos','Redes','Kukulcan','8 puertos Gigabit','Negro',1099.90,115,'Redes y Conectividad MX','2026-09-24',4.5,93,'Si'),(35,'CAM-00001','Camara web Nexora Full HD','Accesorios','Nexora','Full HD','Negro',899.90,134,'Electronica del Centro','2026-09-24',4.4,156,'Si'),(36,'IMP-00001','Impresora multifuncional Andes WiFi','Impresion','Andes','Multifuncional WiFi','Blanco',4299.90,38,'Equipos Empresariales MX','2026-09-24',4.5,64,'Si'),(37,'USB-00001','Memoria USB Cobalto 128GB','Almacenamiento','Cobalto','128GB USB 3.0','Negro',349.90,320,'Distribuidora Tecnologia MX','2026-09-24',4.6,284,'Si'),(38,'BAT-00001','Bateria portatil Nexora 20000mAh','Accesorios','Nexora','20000mAh','Negro',799.90,142,'Electronica del Centro','2026-09-24',4.7,167,'Si'),(39,'PRO-00001','Proyector Andes Full HD','Video','Andes','Full HD 4000 lumens','Blanco',7299.90,19,'Equipos Empresariales MX','2026-09-24',4.6,52,'Si'),(40,'SIL-00001','Silla ergonomica Volcan para oficina','Oficina','Volcan','Ergonomica','Negro',4599.90,44,'Mobiliario Empresarial MX','2026-09-24',4.5,68,'Si');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_users`
--

LOCK TABLES `tb_users` WRITE;
/*!40000 ALTER TABLE `tb_users` DISABLE KEYS */;
INSERT INTO `tb_users` VALUES (2,'240080@utxicotepec.edu.mx','JEIG','81dc9bdb52d04dc20036dbd8313ed055','2026-09-10 10:26:14',NULL,NULL,_binary ''),(5,'240755@utxicotepec.edu.mx','SARA','81dc9bdb52d04dc20036dbd8313ed055','2026-09-10 10:27:22',NULL,NULL,_binary ''),(6,'240242@utxicotepec.edu.mx','MAGO','81dc9bdb52d04dc20036dbd8313ed055','2026-09-10 10:27:38',NULL,NULL,_binary ''),(7,'240904@utxicotepec.edu.mx','PONCHO','81dc9bdb52d04dc20036dbd8313ed055','2026-09-10 10:28:20',NULL,NULL,_binary ''),(8,'240556@utxicotepec.edu.mx','JENY','81dc9bdb52d04dc20036dbd8313ed055','2026-09-10 11:06:36',NULL,NULL,_binary ''),(9,'240765@utxicotepec.edu.mx','Dara','871534c2971fceb021437786bc940bd2','2026-09-10 11:37:26',NULL,NULL,_binary ''),(11,'240107@utxicotepec.edu.mx','Rene','871534c2971fceb021437786bc940bd2','2026-09-10 11:41:31',NULL,NULL,_binary ''),(12,'240045@utxicotepec.edu.mx','Aaron','871534c2971fceb021437786bc940bd2','2026-09-10 11:42:02',NULL,NULL,_binary ''),(13,'240023@utxicotepec.edu.mx','Sam','871534c2971fceb021437786bc940bd2','2026-09-10 11:42:38',NULL,NULL,_binary ''),(14,'240709@utxicotepec.edu.mx','Diego','871534c2971fceb021437786bc940bd2','2026-09-10 11:43:15',NULL,NULL,_binary '');
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
-- Temporary view structure for view `vw_trazabilidad_productos`
--

DROP TABLE IF EXISTS `vw_trazabilidad_productos`;
/*!50001 DROP VIEW IF EXISTS `vw_trazabilidad_productos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_trazabilidad_productos` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `inserted_by`,
 1 AS `roles`,
 1 AS `operation_description`,
 1 AS `operation_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_trazabilidad_usuarios`
--

DROP TABLE IF EXISTS `vw_trazabilidad_usuarios`;
/*!50001 DROP VIEW IF EXISTS `vw_trazabilidad_usuarios`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_trazabilidad_usuarios` AS SELECT 
 1 AS `id`,
 1 AS `username`,
 1 AS `email`,
 1 AS `inserted_by`,
 1 AS `roles`,
 1 AS `operation_description`,
 1 AS `operation_date`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'db_test_7b'
--

--
-- Dumping routines for database 'db_test_7b'
--

--
-- Final view structure for view `vw_trazabilidad_productos`
--

/*!50001 DROP VIEW IF EXISTS `vw_trazabilidad_productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_trazabilidad_productos` AS select `p`.`id_producto` AS `id`,`p`.`nombre` AS `name`,`b`.`db_user` AS `inserted_by`,coalesce(group_concat(distinct `re`.`FROM_USER` order by `re`.`FROM_USER` ASC separator ', '),'Sin rol') AS `roles`,`b`.`table_description` AS `operation_description`,`b`.`operation_date` AS `operation_date` from ((`tb_products` `p` join `tb_logs` `b` on((`b`.`table_description` like concat('%ID=',`p`.`id_producto`,',%')))) left join `mysql`.`role_edges` `re` on((`re`.`TO_USER` = substring_index(`b`.`db_user`,'@',1)))) where ((`b`.`table_operation` = 'Create') and (`b`.`table_name` = 'tb_products')) group by `p`.`id_producto`,`p`.`nombre`,`b`.`db_user`,`b`.`table_description`,`b`.`operation_date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_trazabilidad_usuarios`
--

/*!50001 DROP VIEW IF EXISTS `vw_trazabilidad_usuarios`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_trazabilidad_usuarios` AS select `u`.`ID` AS `id`,`u`.`nick` AS `username`,`u`.`email` AS `email`,`b`.`db_user` AS `inserted_by`,coalesce(group_concat(distinct `re`.`FROM_USER` order by `re`.`FROM_USER` ASC separator ', '),'Sin rol') AS `roles`,`b`.`table_description` AS `operation_description`,`b`.`operation_date` AS `operation_date` from ((`tb_users` `u` join `tb_logs` `b` on(((`b`.`table_description` like concat('%',`u`.`nick`,'%')) or (`b`.`table_description` like concat('%',`u`.`email`,'%'))))) left join `mysql`.`role_edges` `re` on((`re`.`TO_USER` = substring_index(`b`.`db_user`,'@',1)))) where ((`b`.`table_operation` = 'Create') and (`b`.`table_name` = 'tb_users')) group by `u`.`ID`,`u`.`nick`,`u`.`email`,`b`.`db_user`,`b`.`table_description`,`b`.`operation_date` */;
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

-- Dump completed on 2026-09-24 13:03:41