-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema RB_Diag2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema RB_Diag2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `RB_Diag2` DEFAULT CHARACTER SET utf8 ;
USE `RB_Diag2` ;

-- -----------------------------------------------------
-- Table `RB_Diag2`.`EMPLEADO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RB_Diag2`.`EMPLEADO` (
  `matricula` INT NOT NULL,
  `codemp` VARCHAR(45) NOT NULL,
  `nombres` VARCHAR(45) NOT NULL,
  `apellido_P` VARCHAR(45) NOT NULL,
  `apellido_m` VARCHAR(45) NOT NULL,
  `dia_inicio` DATE NULL,
  `mes_inicio` DATE NULL,
  `año_inicio` DATE NULL,
  PRIMARY KEY (`matricula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RB_Diag2`.`VEHICULO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `RB_Diag2`.`VEHICULO` (
  `matricula` INT NOT NULL,
  `modelo` VARCHAR(45) NULL,
  `EMPLEADO_matricula` INT NOT NULL,
  PRIMARY KEY (`matricula`),
  INDEX `fk_VEHICULO_EMPLEADO_idx` (`EMPLEADO_matricula` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
