-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DOC_Diag1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DOC_Diag1
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DOC_Diag1` DEFAULT CHARACTER SET utf8 ;
USE `DOC_Diag1` ;

-- -----------------------------------------------------
-- Table `DOC_Diag1`.`PROGRAMA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_Diag1`.`PROGRAMA` (
  `cod_programa` INT NOT NULL,
  `lenguaje` VARCHAR(45) NULL,
  `sistema_operativo` VARCHAR(45) NULL,
  `lineas_codigo` VARCHAR(45) NULL,
  `fecha_terminacion` DATE NULL,
  PRIMARY KEY (`cod_programa`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DOC_Diag1`.`PROGRAMADOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_Diag1`.`PROGRAMADOR` (
  `nombre_programador` VARCHAR(45) NOT NULL,
  `nombres` VARCHAR(45) NULL,
  `apellido_p` VARCHAR(45) NULL,
  `apellido_m` VARCHAR(45) NULL,
  `PROGRAMA_cod_programa` INT NOT NULL,
  PRIMARY KEY (`nombre_programador`),
  INDEX `fk_PROGRAMADOR_PROGRAMA_idx` (`PROGRAMA_cod_programa` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
