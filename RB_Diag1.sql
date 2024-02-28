-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema RB_Diag1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema RB_Diag1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `RB_Diag1` DEFAULT CHARACTER SET utf8 ;
USE `RB_Diag1` ;

-- -----------------------------------------------------
-- Table `RB_Diag1`.`VEHICULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RB_Diag1`.`VEHICULO` (
  `codemp` INT NOT NULL,
  `matricula` VARCHAR(45) NOT NULL,
  `modelo` VARCHAR(45) NOT NULL,
  `dia_inicio` DATE NULL,
  `mes_inicio` DATE NULL,
  `año_inicio` DATE NULL,
  PRIMARY KEY (`codemp`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RB_Diag1`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RB_Diag1`.`EMPLEADO` (
  `codemp` INT NOT NULL,
  `nombres` VARCHAR(45) NULL,
  `apellido_M` VARCHAR(45) NULL,
  `apellido_P` VARCHAR(45) NULL,
  `VEHICULO_codemp` INT NOT NULL,
  PRIMARY KEY (`codemp`),
  INDEX `fk_EMPLEADO_VEHICULO_idx` (`VEHICULO_codemp` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
