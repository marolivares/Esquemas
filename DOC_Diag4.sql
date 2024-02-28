-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DOC_diag4
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DOC_diag4
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DOC_diag4` DEFAULT CHARACTER SET utf8 ;
USE `DOC_diag4` ;

-- -----------------------------------------------------
-- Table `DOC_diag4`.`COCHE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag4`.`COCHE` (
  `matricula` INT NOT NULL,
  `asientos` INT NULL,
  `marca` VARCHAR(45) NULL,
  `modelo` VARCHAR(45) NULL,
  `NIf` INT NOT NULL,
  PRIMARY KEY (`matricula`, `NIf`),
  INDEX `Nif_idx` (`NIf` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DOC_diag4`.`PILOTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag4`.`PILOTO` (
  `Nif` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `direccion` VARCHAR(45) NULL,
  `matricula` INT NOT NULL,
  PRIMARY KEY (`Nif`, `matricula`),
  INDEX `matricula_idx` (`matricula` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
