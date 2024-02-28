-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DOC_diag2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DOC_diag2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DOC_diag2` DEFAULT CHARACTER SET utf8 ;
USE `DOC_diag2` ;

-- -----------------------------------------------------
-- Table `DOC_diag2`.`FECHA_NACIMIENTO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag2`.`FECHA_NACIMIENTO` (
  `dia_nacimiento` INT NOT NULL,
  `mes_nacimiento` VARCHAR(45) NULL,
  `año_nacimiento` INT NULL,
  PRIMARY KEY (`dia_nacimiento`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DOC_diag2`.`PERSONA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag2`.`PERSONA` (
  `DNI` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  `apellido_1` VARCHAR(45) NULL,
  `apellido_2` VARCHAR(45) NULL,
  `edad` INT NULL,
  `FECHA_NACIMIENTO_dia_nacimiento` INT NOT NULL,
  PRIMARY KEY (`DNI`, `FECHA_NACIMIENTO_dia_nacimiento`),
  INDEX `fk_PERSONA_FECHA_NACIMIENTO_idx` (`FECHA_NACIMIENTO_dia_nacimiento` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
