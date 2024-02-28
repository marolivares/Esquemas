-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DOC_diag6
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DOC_diag6
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DOC_diag6` DEFAULT CHARACTER SET utf8 ;
USE `DOC_diag6` ;

-- -----------------------------------------------------
-- Table `DOC_diag6`.`PISO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag6`.`PISO` (
  `cod_piso` INT NOT NULL,
  `calle` VARCHAR(45) NOT NULL,
  `numero` INT NULL,
  `planta` VARCHAR(45) NULL,
  `puerta` INT NULL,
  PRIMARY KEY (`cod_piso`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DOC_diag6`.`PERSONA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag6`.`PERSONA` (
  `Nif` INT NOT NULL,
  `nombres` VARCHAR(45) NULL,
  `apellido 1` VARCHAR(45) NULL,
  `apellido 2` VARCHAR(45) NULL,
  PRIMARY KEY (`Nif`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DOC_diag6`.`P - P`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag6`.`P - P` (
  `PISO_cod_piso` INT NOT NULL,
  `PERSONA_Nif` INT NOT NULL,
  `precio_alquiler` DECIMAL NOT NULL,
  INDEX `fk_P - P_PISO_idx` (`PISO_cod_piso` ASC) VISIBLE,
  INDEX `fk_P - P_PERSONA1_idx` (`PERSONA_Nif` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
