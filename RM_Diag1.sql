-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema RM_Diag1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema RM_Diag1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `RM_Diag1` DEFAULT CHARACTER SET utf8 ;
USE `RM_Diag1` ;

-- -----------------------------------------------------
-- Table `RM_Diag1`.`MEDICO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RM_Diag1`.`MEDICO` (
  `codmed` INT NOT NULL,
  `nombres` VARCHAR(45) NOT NULL,
  `apellidos_p` VARCHAR(45) NOT NULL,
  `apellidos_m` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`codmed`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RM_Diag1`.`PACIENTE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RM_Diag1`.`PACIENTE` (
  `codpac` INT NOT NULL,
  `nombres` VARCHAR(45) NULL,
  `apellido_p` VARCHAR(45) NULL,
  `apellido_m` VARCHAR(45) NULL,
  PRIMARY KEY (`codpac`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RM_Diag1`.`CITA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RM_Diag1`.`CITA` (
  `MEDICO_codmed` INT NOT NULL,
  `PACIENTE_codpac` INT NOT NULL,
  `fecha` DATE NULL,
  `hora` TIME NULL,
  PRIMARY KEY (`MEDICO_codmed`, `PACIENTE_codpac`),
  INDEX `fk_MEDICO_has_PACIENTE_PACIENTE1_idx` (`PACIENTE_codpac` ASC) VISIBLE,
  INDEX `fk_MEDICO_has_PACIENTE_MEDICO_idx` (`MEDICO_codmed` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
