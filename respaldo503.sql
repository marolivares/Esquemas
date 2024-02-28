-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Ejemplo-entidad-D
-- -----------------------------------------------------
-- Ejemplo de transformaciòn de all esquema ER

-- -----------------------------------------------------
-- Schema Ejemplo-entidad-D
--
-- Ejemplo de transformaciòn de all esquema ER
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Ejemplo-entidad-D` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `Ejemplo-entidad-D` ;

-- -----------------------------------------------------
-- Table `Ejemplo-entidad-D`.`LIBRO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ejemplo-entidad-D`.`LIBRO` (
  `ISBN` INT NOT NULL,
  `titulo_principal` VARCHAR(30) NOT NULL,
  `subtitulo` VARCHAR(45) NULL,
  `editorial` VARCHAR(10) NULL,
  `idioma` VARCHAR(15) NULL,
  PRIMARY KEY (`ISBN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ejemplo-entidad-D`.`AUTOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ejemplo-entidad-D`.`AUTOR` (
  `autor` VARCHAR(40) NOT NULL,
  `LIBRO_ISBN` INT NOT NULL,
  PRIMARY KEY (`autor`),
  INDEX `fk_AUTOR_LIBRO1_idx` (`LIBRO_ISBN` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Ejemplo-entidad-D`.`EDICION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Ejemplo-entidad-D`.`EDICION` (
  `numero` INT NOT NULL,
  `año` YEAR(9999) NULL,
  `LIBRO_ISBN` INT NOT NULL,
  PRIMARY KEY (`numero`),
  INDEX `fk_EDICION_LIBRO_idx` (`LIBRO_ISBN` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
