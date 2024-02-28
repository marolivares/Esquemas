-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DOC_diag8
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DOC_diag8
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DOC_diag8` DEFAULT CHARACTER SET utf8 ;
USE `DOC_diag8` ;

-- -----------------------------------------------------
-- Table `DOC_diag8`.`CIUDAD`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag8`.`CIUDAD` (
  `nombre_ciudad` VARCHAR(20) NOT NULL,
  `pais` DOUBLE NOT NULL,
  PRIMARY KEY (`nombre_ciudad`, `pais`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DOC_diag8`.`PILOTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag8`.`PILOTO` (
  `Nif` INT NOT NULL,
  `nombres` VARCHAR(45) NULL,
  `apellido1` VARCHAR(45) NULL,
  `apellido2` VARCHAR(45) NULL,
  PRIMARY KEY (`Nif`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DOC_diag8`.`AVION`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag8`.`AVION` (
  `cod_avion` INT NOT NULL,
  `nombre_avion` VARCHAR(45) NULL,
  `numero_motor` INT NULL,
  PRIMARY KEY (`cod_avion`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DOC_diag8`.`P-C-A`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag8`.`P-C-A` (
  `PILOTO_Nif` INT NOT NULL,
  `CIUDAD_nombre_ciudad` VARCHAR(20) NOT NULL,
  `CIUDAD_pais` DOUBLE NOT NULL,
  `AVION_cod_avion` INT NOT NULL,
  `fecha` DATE NOT NULL,
  PRIMARY KEY (`PILOTO_Nif`, `CIUDAD_nombre_ciudad`, `CIUDAD_pais`, `AVION_cod_avion`),
  INDEX `fk_P-C-A_CIUDAD1_idx` (`CIUDAD_nombre_ciudad` ASC, `CIUDAD_pais` ASC) VISIBLE,
  INDEX `fk_P-C-A_AVION1_idx` (`AVION_cod_avion` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
