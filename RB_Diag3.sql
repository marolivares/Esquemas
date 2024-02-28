-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema RB_Diag3
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema RB_Diag3
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `RB_Diag3` DEFAULT CHARACTER SET utf8 ;
USE `RB_Diag3` ;

-- -----------------------------------------------------
-- Table `RB_Diag3`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RB_Diag3`.`EMPLEADO` (
  `codemp` INT NOT NULL,
  `nombres` VARCHAR(45) NULL,
  `apellido_p` VARCHAR(45) NULL,
  `apellido_m` VARCHAR(45) NULL,
  `CONDUCE_codemp` INT NOT NULL,
  PRIMARY KEY (`codemp`),
  INDEX `fk_EMPLEADO_CONDUCE1_idx` (`CONDUCE_codemp` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RB_Diag3`.`CONDUCE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RB_Diag3`.`CONDUCE` (
  `dia_inicio` DATE NOT NULL,
  `mes_inicio` DATE NULL,
  `año_inicio` DATE NULL,
  `matricula` INT NOT NULL,
  `codemp` INT NOT NULL,
  PRIMARY KEY (`matricula`, `codemp`),
  INDEX `codemp_idx` (`codemp` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RB_Diag3`.`VEHICULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RB_Diag3`.`VEHICULO` (
  `matricula` INT NOT NULL,
  `modelo` VARCHAR(45) NULL,
  `CONDUCE_matricula` INT NOT NULL,
  PRIMARY KEY (`matricula`),
  INDEX `fk_VEHICULO_CONDUCE_idx` (`CONDUCE_matricula` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
