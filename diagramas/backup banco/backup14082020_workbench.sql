-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`departamento`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`departamento` (
  `cod_dep` INT NOT NULL AUTO_INCREMENT,
  `nome_dep` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cod_dep`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`cargo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`cargo` (
  `cod_cargo` INT NOT NULL AUTO_INCREMENT,
  `nome_cargo` VARCHAR(45) NOT NULL,
  `obs` VARCHAR(100) NULL,
  PRIMARY KEY (`cod_cargo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`funcionario` (
  `matricula_func` INT NOT NULL AUTO_INCREMENT,
  `nome_func` VARCHAR(50) NOT NULL,
  `sobrenome_func` VARCHAR(50) NOT NULL,
  `idade` INT NOT NULL,
  `cpf` VARCHAR(12) NOT NULL,
  `rg` VARCHAR(12) NOT NULL,
  `telefone1` INT NOT NULL,
  `telefone2` INT NULL,
  `genero` VARCHAR(10) NOT NULL,
  `status` VARCHAR(10) NULL,
  `data_nascimento` DATE NOT NULL,
  `data_admissao` DATE NOT NULL,
  `data_demissao` DATE NOT NULL,
  `nacionalidade` VARCHAR(20) NOT NULL,
  `uf` VARCHAR(2) NOT NULL,
  `cidade` VARCHAR(45) NOT NULL,
  `bairro` VARCHAR(60) NOT NULL,
  `rua` VARCHAR(45) NOT NULL,
  `cep` VARCHAR(10) NOT NULL,
  `numero_rua` INT NOT NULL,
  `foto_func` VARCHAR(100) NULL,
  `senha` VARCHAR(10) NOT NULL,
  `funcionariocol` VARCHAR(45) NULL,
  `departamento_cod_dep` INT NOT NULL,
  `cargo_cod_cargo` INT NOT NULL,
  PRIMARY KEY (`matricula_func`),
  INDEX `fk_funcionario_departamento_idx` (`departamento_cod_dep` ASC),
  INDEX `fk_funcionario_cargo1_idx` (`cargo_cod_cargo` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`tarefa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`tarefa` (
  `cod_tarefa` INT NOT NULL AUTO_INCREMENT,
  `nome_tarefa` VARCHAR(45) NOT NULL,
  `descricao_tarefa` VARCHAR(150) NOT NULL,
  `obs` VARCHAR(50) NULL,
  `status_tarefa` VARCHAR(20) NOT NULL,
  `quantidade_func_tarefa` INT NOT NULL,
  `local_tarefa` VARCHAR(60) NOT NULL,
  `hora_inicio_tarefa` TIME NOT NULL,
  `hora_fim_tarefa` TIME NOT NULL,
  `data_inicio_tarefa` DATE NOT NULL,
  `data_fim_tarefa` DATE NOT NULL,
  `funcionario_matricula_func` INT NOT NULL,
  PRIMARY KEY (`cod_tarefa`),
  INDEX `fk_tarefa_funcionario1_idx` (`funcionario_matricula_func` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`epi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`epi` (
  `cod_epi` INT NOT NULL AUTO_INCREMENT,
  `nome_epi` VARCHAR(50) NOT NULL,
  `descricao_epi` VARCHAR(150) NOT NULL,
  `ca` INT NOT NULL,
  `situacao` VARCHAR(45) NOT NULL,
  `unidade` VARCHAR(45) NULL,
  `data_fabricacao` DATE NOT NULL,
  `venc_ca` DATE NULL,
  `estoque_minimo` INT NULL,
  `funcionario_matricula_func` INT NOT NULL,
  PRIMARY KEY (`cod_epi`),
  INDEX `fk_epi_funcionario1_idx` (`funcionario_matricula_func` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`fabricante`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`fabricante` (
  `cod_fabricante` INT NOT NULL AUTO_INCREMENT,
  `nome_fabricante` VARCHAR(50) NOT NULL,
  `descricao_fabricante` VARCHAR(60) NULL,
  `cidade_fabricante` VARCHAR(45) NOT NULL,
  `uf_fabricante` VARCHAR(2) NOT NULL,
  `telefone1` INT NOT NULL,
  `telefone2` INT NULL,
  PRIMARY KEY (`cod_fabricante`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`fornecedor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`fornecedor` (
  `cnpj_fornecedor` INT NOT NULL,
  `nome_fornecedor` VARCHAR(50) NOT NULL,
  `razao_social_fornecedor` VARCHAR(45) NULL,
  `nome_fantasia_fornecedor` VARCHAR(100) NOT NULL,
  `uf_fornecedor` VARCHAR(2) NOT NULL,
  `cep_fornecedor` VARCHAR(10) NOT NULL,
  `cidade_fornecedor` VARCHAR(45) NOT NULL,
  `bairro_fornecedor` VARCHAR(45) NOT NULL,
  `rua_fornecedor` VARCHAR(45) NOT NULL,
  `numero_rua_fornecedor` INT NOT NULL,
  `nome_representante_fornecedor` VARCHAR(45) NULL,
  `telefone1_fornecedor` INT NOT NULL,
  `telefone2_fornecedor` INT NULL,
  `email` VARCHAR(80) NULL,
  `obs` VARCHAR(80) NULL,
  PRIMARY KEY (`cnpj_fornecedor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`motivo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`motivo` (
  `cod_motivo` INT NOT NULL AUTO_INCREMENT,
  `nome_motivo` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cod_motivo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`ficha_epi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`ficha_epi` (
  `cod_ficha_epi` INT NOT NULL AUTO_INCREMENT,
  `nome_epi_ficha` VARCHAR(45) NOT NULL,
  `ca_ficha` INT NOT NULL,
  `data_entrega_ficha` DATE NOT NULL,
  `data_devolucao_ficha` DATE NOT NULL,
  `obs_devolucao_ficha` VARCHAR(120) NOT NULL,
  `motivo_obtencao_ficha` VARCHAR(45) NULL,
  `motivo_devolucao__ficha` VARCHAR(45) NOT NULL,
  `quantidade_epi_ficha` INT NOT NULL,
  `epi_cod_epi` INT NOT NULL,
  `motivo_cod_motivo` INT NOT NULL,
  PRIMARY KEY (`cod_ficha_epi`),
  INDEX `fk_ficha_epi_epi1_idx` (`epi_cod_epi` ASC),
  INDEX `fk_ficha_epi_motivo1_idx` (`motivo_cod_motivo` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`fabricante_epi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`fabricante_epi` (
  `fabricante_cod_fabricante` INT NOT NULL,
  `epi_cod_epi` INT NOT NULL,
  PRIMARY KEY (`fabricante_cod_fabricante`, `epi_cod_epi`),
  INDEX `fk_fabricante_has_epi_epi1_idx` (`epi_cod_epi` ASC),
  INDEX `fk_fabricante_has_epi_fabricante1_idx` (`fabricante_cod_fabricante` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`fornecedor_epi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`fornecedor_epi` (
  `fornecedor_cnpj_fornecedor` INT NOT NULL,
  `epi_cod_epi` INT NOT NULL,
  PRIMARY KEY (`fornecedor_cnpj_fornecedor`, `epi_cod_epi`),
  INDEX `fk_fornecedor_has_epi_epi1_idx` (`epi_cod_epi` ASC),
  INDEX `fk_fornecedor_has_epi_fornecedor1_idx` (`fornecedor_cnpj_fornecedor` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`epi_tarefa`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`epi_tarefa` (
  `epi_cod_epi` INT NOT NULL,
  `tarefa_cod_tarefa` INT NOT NULL,
  PRIMARY KEY (`epi_cod_epi`, `tarefa_cod_tarefa`),
  INDEX `fk_epi_has_tarefa_tarefa1_idx` (`tarefa_cod_tarefa` ASC),
  INDEX `fk_epi_has_tarefa_epi1_idx` (`epi_cod_epi` ASC))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

