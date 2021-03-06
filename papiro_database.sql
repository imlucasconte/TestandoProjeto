-- MySQL Script generated by MySQL Workbench
-- Tue May  1 10:41:41 2018
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema skynet
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema skynet
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `papiro_database` DEFAULT CHARACTER SET latin1 ;
USE papiro_database ;

-- -----------------------------------------------------
-- Table `skynet`.`cadastro`
-- ----------------------------------------------------- DROP DATABASE papiro_database;
CREATE TABLE IF NOT EXISTS `papiro_database`.`cadastro` (
  `documento` BIGINT(20) NOT NULL,
  `nome` VARCHAR(100) NOT NULL,
  `tipo` VARCHAR(100) NOT NULL,
  `email` VARCHAR(150) NOT NULL,
  `endereco` VARCHAR(300) NOT NULL,
  `telefoneFixo` BIGINT(20) NULL DEFAULT NULL,
  `telefoneCelular` BIGINT(20) NOT NULL,
  `nomeContato` VARCHAR(100) NOT NULL,
  `documentoContato` BIGINT(20) NOT NULL,
  `emailContato` VARCHAR(150) NOT NULL,
  `senha` VARCHAR(12) NOT NULL,
  `site` VARCHAR(200) NULL DEFAULT NULL,
  `dataAbertura` DATETIME NULL DEFAULT NULL,
  PRIMARY KEY (`documento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `skynet`.`downloadArquivos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `papiro_database`.`downloadArquivos` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `documentoAdm` BIGINT(20) NOT NULL,
  `nome` VARCHAR(40) NULL DEFAULT NULL,
  `data` DATE NULL DEFAULT NULL,
  `conteudo` MEDIUMBLOB NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_docAdm` (`documentoAdm` ASC),
  CONSTRAINT `fk_docAdm`
    FOREIGN KEY (`documentoAdm`)
    REFERENCES `skynet`.`cadastro` (`documento`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `skynet`.`precadastro`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `papiro_database`.`precadastro` (
  `documento` BIGINT(20) NOT NULL,
  `tipo` VARCHAR(30) NOT NULL,
  `status` TINYINT(1) NOT NULL,
  `nome` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`documento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `skynet`.`uploadArquivos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `papiro_database`.`uploadArquivos` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `documentoPrincipal` BIGINT(20) NOT NULL,
  `nome` VARCHAR(40) NULL DEFAULT NULL,
  `data` DATE NULL DEFAULT NULL,
  `conteudo` MEDIUMBLOB NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_documenti` (`documentoPrincipal` ASC),
  CONSTRAINT `fk_documenti`
    FOREIGN KEY (`documentoPrincipal`)
    REFERENCES `skynet`.`cadastro` (`documento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


-- -----------------------------------------------------
-- Table `skynet`.`usuarioAdicional`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `papiro_database`.`usuarioAdicional` (
  `documento` BIGINT(20) NOT NULL,
  `documentoPrincipal` BIGINT(20) NOT NULL,
  `nome` VARCHAR(100) NOT NULL,
  `email` VARCHAR(150) NOT NULL,
  `perfil` VARCHAR(11) NOT NULL,
  `senha` VARCHAR(12) NOT NULL,
  PRIMARY KEY (`documento`),
  INDEX `fk_docPrincipal` (`documentoPrincipal` ASC),
  CONSTRAINT `fk_docPrincipal`
    FOREIGN KEY (`documentoPrincipal`)
    REFERENCES `skynet`.`cadastro` (`documento`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = latin1;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
