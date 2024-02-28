-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DOC_diag10
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DOC_diag10
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DOC_diag10` DEFAULT CHARACTER SET utf8 ;
USE `DOC_diag10` ;

-- -----------------------------------------------------
-- Table `DOC_diag10`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag10`.`EMPLEADO` (
  `Nif` INT NOT NULL,
  `nombres` VARCHAR(45) NOT NULL,
  `apellido1` VARCHAR(20) NULL,
  `apellido2` VARCHAR(20) NULL,
  `NIf_tiene_responsable` INT NOT NULL,
  PRIMARY KEY (`NIf_tiene_responsable`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DOC_diag10`.`E- E`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag10`.`E- E` (
  `Nif_es_responsable` INT NOT NULL,
  `departamento` VARCHAR(45) NOT NULL,
  `EMPLEADO_NIf_tiene_responsable` INT NOT NULL,
  PRIMARY KEY (`Nif_es_responsable`),
  INDEX `fk_table2_EMPLEADO_idx` (`EMPLEADO_NIf_tiene_responsable` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
