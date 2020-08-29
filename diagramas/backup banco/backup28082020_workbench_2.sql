-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: segware-epi
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
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cargo` (
  `cod_cargo` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cargo` varchar(45) NOT NULL,
  `obs` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cod_cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'almoxarife',NULL),(2,'tecnico em informatica',NULL),(3,'tecnico em mecânica',NULL),(4,'engenheiro',NULL),(5,'Quimico',NULL),(6,'aux. de serviços gerais',NULL);
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamento` (
  `cod_dep` int(11) NOT NULL AUTO_INCREMENT,
  `nome_dep` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_dep`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Almoxarifado'),(2,'tecnologia da informação'),(3,'mecanica'),(4,'engenharia'),(5,'laboratório'),(6,'serviços gerais');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epi`
--

DROP TABLE IF EXISTS `epi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epi` (
  `cod_epi` int(11) NOT NULL AUTO_INCREMENT,
  `nome_epi` varchar(50) NOT NULL,
  `descricao_epi` varchar(150) NOT NULL,
  `ca` int(11) NOT NULL,
  `situacao` varchar(45) NOT NULL,
  `unidade` varchar(45) DEFAULT NULL,
  `data_fabricacao` date NOT NULL,
  `venc_ca` date DEFAULT NULL,
  `estoque_minimo` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_epi`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epi`
--

LOCK TABLES `epi` WRITE;
/*!40000 ALTER TABLE `epi` DISABLE KEYS */;
INSERT INTO `epi` VALUES (1,'botina','com biqueira de couro',20567,'emprestado','un','2018-11-23','2020-11-23',40),(2,'cinto de seguranca','dois talabartes',23876,'emprestado','un','2015-08-03','2021-08-03',10),(3,'protetor  auricular','tipo plug',6547,'emprestado','un','2018-05-03','2023-07-02',100);
/*!40000 ALTER TABLE `epi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `epi_tarefa`
--

DROP TABLE IF EXISTS `epi_tarefa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `epi_tarefa` (
  `epi_cod_epi` int(11) NOT NULL,
  `tarefa_cod_tarefa` int(11) NOT NULL,
  PRIMARY KEY (`epi_cod_epi`,`tarefa_cod_tarefa`),
  KEY `fk_epi_has_tarefa_tarefa1_idx` (`tarefa_cod_tarefa`),
  KEY `fk_epi_has_tarefa_epi1_idx` (`epi_cod_epi`),
  CONSTRAINT `fk_epi_has_tarefa_epi1` FOREIGN KEY (`epi_cod_epi`) REFERENCES `epi` (`cod_epi`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_epi_has_tarefa_tarefa1` FOREIGN KEY (`tarefa_cod_tarefa`) REFERENCES `tarefa` (`cod_tarefa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `epi_tarefa`
--

LOCK TABLES `epi_tarefa` WRITE;
/*!40000 ALTER TABLE `epi_tarefa` DISABLE KEYS */;
/*!40000 ALTER TABLE `epi_tarefa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricante`
--

DROP TABLE IF EXISTS `fabricante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fabricante` (
  `cod_fabricante` int(11) NOT NULL AUTO_INCREMENT,
  `nome_fabricante` varchar(50) NOT NULL,
  `descricao_fabricante` varchar(60) DEFAULT NULL,
  `cidade_fabricante` varchar(45) NOT NULL,
  `uf_fabricante` varchar(2) NOT NULL,
  `telefone1` varchar(12) NOT NULL,
  `telefone2` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`cod_fabricante`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricante`
--

LOCK TABLES `fabricante` WRITE;
/*!40000 ALTER TABLE `fabricante` DISABLE KEYS */;
INSERT INTO `fabricante` VALUES (1,'ultra master','especializado na fabricação de capacetes','Passo Fundo','rs','53999547801',NULL),(2,'protefort','especializado na fabricação de botinas','Porto Alegre','rs','53999547801',NULL);
/*!40000 ALTER TABLE `fabricante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricante_epi`
--

DROP TABLE IF EXISTS `fabricante_epi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fabricante_epi` (
  `fabricante_cod_fabricante` int(11) NOT NULL,
  `epi_cod_epi` int(11) NOT NULL,
  PRIMARY KEY (`fabricante_cod_fabricante`,`epi_cod_epi`),
  KEY `fk_fabricante_has_epi_epi1_idx` (`epi_cod_epi`),
  KEY `fk_fabricante_has_epi_fabricante1_idx` (`fabricante_cod_fabricante`),
  CONSTRAINT `fk_fabricante_has_epi_epi1` FOREIGN KEY (`epi_cod_epi`) REFERENCES `epi` (`cod_epi`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fabricante_has_epi_fabricante1` FOREIGN KEY (`fabricante_cod_fabricante`) REFERENCES `fabricante` (`cod_fabricante`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricante_epi`
--

LOCK TABLES `fabricante_epi` WRITE;
/*!40000 ALTER TABLE `fabricante_epi` DISABLE KEYS */;
INSERT INTO `fabricante_epi` VALUES (2,1);
/*!40000 ALTER TABLE `fabricante_epi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ficha_epi`
--

DROP TABLE IF EXISTS `ficha_epi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ficha_epi` (
  `cod_ficha_epi` int(11) NOT NULL AUTO_INCREMENT,
  `nome_epi_ficha` varchar(45) NOT NULL,
  `ca_ficha` int(11) NOT NULL,
  `data_entrega_ficha` date NOT NULL,
  `data_devolucao_ficha` date NOT NULL,
  `obs_devolucao_ficha` varchar(120) NOT NULL,
  `motivo_obtencao_ficha` varchar(45) DEFAULT NULL,
  `motivo_devolucao__ficha` varchar(45) NOT NULL,
  `quantidade_epi_ficha` int(11) NOT NULL,
  `epi_cod_epi` int(11) NOT NULL,
  `motivo_cod_motivo` int(11) NOT NULL,
  `funcionario_matricula_func` int(11) NOT NULL,
  PRIMARY KEY (`cod_ficha_epi`),
  KEY `fk_ficha_epi_epi1_idx` (`epi_cod_epi`),
  KEY `fk_ficha_epi_motivo1_idx` (`motivo_cod_motivo`),
  KEY `fk_ficha_epi_funcionario1_idx` (`funcionario_matricula_func`),
  CONSTRAINT `fk_ficha_epi_epi1` FOREIGN KEY (`epi_cod_epi`) REFERENCES `epi` (`cod_epi`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ficha_epi_funcionario1` FOREIGN KEY (`funcionario_matricula_func`) REFERENCES `funcionario` (`matricula_func`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_ficha_epi_motivo1` FOREIGN KEY (`motivo_cod_motivo`) REFERENCES `motivo` (`cod_motivo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ficha_epi`
--

LOCK TABLES `ficha_epi` WRITE;
/*!40000 ALTER TABLE `ficha_epi` DISABLE KEYS */;
/*!40000 ALTER TABLE `ficha_epi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedor` (
  `cod_fornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `cnpj_fornecedor` varchar(12) NOT NULL,
  `nome_fornecedor` varchar(50) NOT NULL,
  `razao_social_fornecedor` varchar(45) DEFAULT NULL,
  `nome_fantasia_fornecedor` varchar(100) NOT NULL,
  `uf_fornecedor` varchar(15) NOT NULL,
  `cep_fornecedor` varchar(10) NOT NULL,
  `cidade_fornecedor` varchar(45) NOT NULL,
  `bairro_fornecedor` varchar(45) NOT NULL,
  `rua_fornecedor` varchar(45) NOT NULL,
  `numero_rua_fornecedor` int(11) NOT NULL,
  `nome_representante_fornecedor` varchar(45) DEFAULT NULL,
  `telefone1_fornecedor` varchar(12) NOT NULL,
  `telefone2_fornecedor` varchar(12) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `obs` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`cod_fornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'89976545676','marluvas','marluvas','marluvas','são Leopoldo','9675843209','rs','centro','village das flores',346,'Paulo','53999765923',NULL,'paulo2marluvas.com.br','fornecedor de epis de luvas');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor_epi`
--

DROP TABLE IF EXISTS `fornecedor_epi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedor_epi` (
  `fornecedor_cod_fornecedor` int(11) NOT NULL,
  `epi_cod_epi` int(11) NOT NULL,
  PRIMARY KEY (`fornecedor_cod_fornecedor`,`epi_cod_epi`),
  KEY `fk_fornecedor_has_epi_epi_idx` (`epi_cod_epi`),
  KEY `fk_fornecedor_has_epi_fornecedor_idx` (`fornecedor_cod_fornecedor`),
  CONSTRAINT `fk_fornecedor_has_epi_epi` FOREIGN KEY (`epi_cod_epi`) REFERENCES `epi` (`cod_epi`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_fornecedor_has_epi_fornecedor` FOREIGN KEY (`fornecedor_cod_fornecedor`) REFERENCES `fornecedor` (`cod_fornecedor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor_epi`
--

LOCK TABLES `fornecedor_epi` WRITE;
/*!40000 ALTER TABLE `fornecedor_epi` DISABLE KEYS */;
INSERT INTO `fornecedor_epi` VALUES (1,3);
/*!40000 ALTER TABLE `fornecedor_epi` ENABLE KEYS */;
UNLOCK TABLES;

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
  `telefone1` varchar(16) NOT NULL,
  `telefone2` varchar(16) DEFAULT NULL,
  `genero` varchar(10) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `data_nascimento` date NOT NULL,
  `data_admissao` date NOT NULL,
  `data_demissao` date DEFAULT NULL,
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
  KEY `fk_funcionario_cargo1_idx` (`cargo_cod_cargo`),
  CONSTRAINT `fk_funcionario_cargo1` FOREIGN KEY (`cargo_cod_cargo`) REFERENCES `cargo` (`cod_cargo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_funcionario_departamento` FOREIGN KEY (`departamento_cod_dep`) REFERENCES `departamento` (`cod_dep`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'marcio','Garibalde',32,'02041884070','1096853031','999367651',NULL,'masculino','ativo','1987-11-17','2020-03-02',NULL,'brasileiro','rs','Bage','Pedra Branca','joaquim gasso borges','96418260',841,NULL,'0992',1,1),(2,'fabio geovane','porto vasques',32,'02041884070','1096853031','999367651',NULL,'masculino','ativo','1987-11-17','2020-03-02',NULL,'brasileiro','rs','Bage','Pedra Branca','joaquim gasso borges','96418260',841,NULL,'0992',2,2),(3,'Pedro','Vasconcelos',42,'02041884070','1096853031','999367651',NULL,'masculino','ativo','1987-11-17','2020-03-02',NULL,'brasileiro','rs','Bage','Pedra Branca','joaquim gasso borges','96418260',841,NULL,'0992',3,3);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario_epi`
--

DROP TABLE IF EXISTS `funcionario_epi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario_epi` (
  `funcionario_matricula_func` int(11) NOT NULL,
  `epi_cod_epi` int(11) NOT NULL,
  PRIMARY KEY (`funcionario_matricula_func`,`epi_cod_epi`),
  KEY `fk_funcionario_has_epi_epi1_idx` (`epi_cod_epi`),
  KEY `fk_funcionario_has_epi_funcionario1_idx` (`funcionario_matricula_func`),
  CONSTRAINT `fk_funcionario_has_epi_epi1` FOREIGN KEY (`epi_cod_epi`) REFERENCES `epi` (`cod_epi`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_funcionario_has_epi_funcionario1` FOREIGN KEY (`funcionario_matricula_func`) REFERENCES `funcionario` (`matricula_func`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario_epi`
--

LOCK TABLES `funcionario_epi` WRITE;
/*!40000 ALTER TABLE `funcionario_epi` DISABLE KEYS */;
INSERT INTO `funcionario_epi` VALUES (1,1),(3,1),(2,2),(3,2),(3,3);
/*!40000 ALTER TABLE `funcionario_epi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario_tarefa`
--

DROP TABLE IF EXISTS `funcionario_tarefa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario_tarefa` (
  `funcionario_matricula_func` int(11) NOT NULL,
  `tarefa_cod_tarefa` int(11) NOT NULL,
  PRIMARY KEY (`funcionario_matricula_func`,`tarefa_cod_tarefa`),
  KEY `fk_funcionario_has_tarefa_tarefa1_idx` (`tarefa_cod_tarefa`),
  KEY `fk_funcionario_has_tarefa_funcionario1_idx` (`funcionario_matricula_func`),
  CONSTRAINT `fk_funcionario_has_tarefa_funcionario1` FOREIGN KEY (`funcionario_matricula_func`) REFERENCES `funcionario` (`matricula_func`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_funcionario_has_tarefa_tarefa1` FOREIGN KEY (`tarefa_cod_tarefa`) REFERENCES `tarefa` (`cod_tarefa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario_tarefa`
--

LOCK TABLES `funcionario_tarefa` WRITE;
/*!40000 ALTER TABLE `funcionario_tarefa` DISABLE KEYS */;
INSERT INTO `funcionario_tarefa` VALUES (1,1),(3,1);
/*!40000 ALTER TABLE `funcionario_tarefa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `motivo`
--

DROP TABLE IF EXISTS `motivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motivo` (
  `cod_motivo` int(11) NOT NULL AUTO_INCREMENT,
  `nome_motivo` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_motivo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motivo`
--

LOCK TABLES `motivo` WRITE;
/*!40000 ALTER TABLE `motivo` DISABLE KEYS */;
/*!40000 ALTER TABLE `motivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tarefa`
--

DROP TABLE IF EXISTS `tarefa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tarefa` (
  `cod_tarefa` int(11) NOT NULL AUTO_INCREMENT,
  `nome_tarefa` varchar(45) NOT NULL,
  `descricao_tarefa` varchar(150) NOT NULL,
  `obs` varchar(50) DEFAULT NULL,
  `status_tarefa` varchar(20) NOT NULL,
  `quantidade_func_tarefa` int(11) NOT NULL,
  `local_tarefa` varchar(60) NOT NULL,
  `hora_inicio_tarefa` time NOT NULL,
  `hora_fim_tarefa` time NOT NULL,
  `data_inicio_tarefa` date NOT NULL,
  `data_fim_tarefa` date NOT NULL,
  PRIMARY KEY (`cod_tarefa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarefa`
--

LOCK TABLES `tarefa` WRITE;
/*!40000 ALTER TABLE `tarefa` DISABLE KEYS */;
INSERT INTO `tarefa` VALUES (1,'troca de lampadas','funcionarios necessitam  subir em postes para efetuar troca de lampadas','ttgfy','em analise',5,'area a','08:00:00','18:00:00','2020-08-24','2020-08-24');
/*!40000 ALTER TABLE `tarefa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-28 21:01:54
