-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DOC_diag5
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DOC_diag5
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DOC_diag5` DEFAULT CHARACTER SET utf8 ;
USE `DOC_diag5` ;

-- -----------------------------------------------------
-- Table `DOC_diag5`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag5`.`EMPLEADO` (
  `E-D_es_dirigido` VARCHAR(10) NOT NULL,
  `Nif` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `direccion` VARCHAR(45) NULL,
  INDEX `fk_EMPLEADO_E-D1_idx` (`E-D_es_dirigido` ASC) VISIBLE,
  PRIMARY KEY (`Nif`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DOC_diag5`.`DEPARTAMENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag5`.`DEPARTAMENTO` (
  `E-D_es_responsable` INT NOT NULL,
  `Cod_dpto` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `localidad` VARCHAR(45) NULL,
  INDEX `fk_DEPARTAMENTO_E-D1_idx` (`E-D_es_responsable` ASC) VISIBLE,
  PRIMARY KEY (`Cod_dpto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DOC_diag5`.`E-D`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag5`.`E-D` (
  `es_dirigido` VARCHAR(10) NOT NULL,
  `es_responsable` INT NOT NULL,
  `ultima_fecha` DATE NULL,
  PRIMARY KEY (`es_dirigido`, `es_responsable`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DOC_diag5`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag5`.`EMPLEADO` (
  `E-D_es_dirigido` VARCHAR(10) NOT NULL,
  `Nif` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `direccion` VARCHAR(45) NULL,
  INDEX `fk_EMPLEADO_E-D1_idx` (`E-D_es_dirigido` ASC) VISIBLE,
  PRIMARY KEY (`Nif`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DOC_diag5`.`DEPARTAMENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag5`.`DEPARTAMENTO` (
  `E-D_es_responsable` INT NOT NULL,
  `Cod_dpto` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `localidad` VARCHAR(45) NULL,
  INDEX `fk_DEPARTAMENTO_E-D1_idx` (`E-D_es_responsable` ASC) VISIBLE,
  PRIMARY KEY (`Cod_dpto`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
