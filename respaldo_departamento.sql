-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema debil
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema debil
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `debil` DEFAULT CHARACTER SET utf8 ;
USE `debil` ;

-- -----------------------------------------------------
-- Table `debil`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `debil`.`EMPLEADO` (
  `num_empleado` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `fecha_ingreso` VARCHAR(45) NULL,
  `num_departamento` INT NOT NULL,
  PRIMARY KEY (`num_empleado`),
  INDEX `num_departamento_idx` (`num_departamento` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `debil`.`DEPARTAMENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `debil`.`DEPARTAMENTO` (
  `num_departamento` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `presupuesto` DOUBLE NOT NULL,
  `EMPLEADO_num_empleado` INT NOT NULL,
  PRIMARY KEY (`num_departamento`, `EMPLEADO_num_empleado`),
  INDEX `fk_DEPARTAMENTO_EMPLEADO_idx` (`EMPLEADO_num_empleado` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
