-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: segwareepi
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.16.04.1

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
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `matricula_func` int(11) NOT NULL AUTO_INCREMENT,
  `nome_func` varchar(50) NOT NULL,
  `sobrenome_func` varchar(50) NOT NULL,
  `idade` int(11) NOT NULL,
  `cpf` varchar(12) NOT NULL,
  `rg` varchar(12) NOT NULL,
  `telefone1` int(11) NOT NULL,
  `telefone2` int(11) DEFAULT NULL,
  `genero` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `data_nascimento` date NOT NULL,
  `data_admissao` date NOT NULL,
  `data_demissao` date NOT NULL,
  `nacionalidade` varchar(20) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `bairro` varchar(60) NOT NULL,
  `rua` varchar(45) NOT NULL,
  `cep` varchar(10) NOT NULL,
  `numero_rua` int(11) NOT NULL,
  `foto_func` varchar(100) DEFAULT NULL,
  `senha` varchar(10) NOT NULL,
  `departamento_cod_dep` int(11) NOT NULL,
  `cargo_cod_cargo` int(11) NOT NULL,
  PRIMARY KEY (`matricula_func`),
  KEY `fk_funcionario_departamento_idx` (`departamento_cod_dep`),
  KEY `fk_funcionario_cargo1_idx` (`cargo_cod_cargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-15  9:04:35
