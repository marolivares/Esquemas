-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DOC_diag7
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DOC_diag7
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DOC_diag7` DEFAULT CHARACTER SET utf8 ;
USE `DOC_diag7` ;

-- -----------------------------------------------------
-- Table `DOC_diag7`.`PROFESOR`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag7`.`PROFESOR` (
  `cod_profesor` INT NOT NULL,
  `Nif` INT NULL,
  `nombres` VARCHAR(45) NULL,
  `apellido1` VARCHAR(45) NULL,
  `apellido2` VARCHAR(45) NULL,
  PRIMARY KEY (`cod_profesor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DOC_diag7`.`P-G`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag7`.`P-G` (
  `año_academico` DATE NOT NULL,
  `PROFESOR_cod_profesor` INT NOT NULL,
  PRIMARY KEY (`PROFESOR_cod_profesor`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DOC_diag7`.`GRUPO_ALUMNOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag7`.`GRUPO_ALUMNOS` (
  `Cod_grupo` INT NOT NULL,
  `curso` VARCHAR(45) NOT NULL,
  `P-G_PROFESOR_cod_profesor` INT NOT NULL,
  PRIMARY KEY (`Cod_grupo`, `P-G_PROFESOR_cod_profesor`),
  INDEX `fk_GRUPO_ALUMNOS_P-G1_idx` (`P-G_PROFESOR_cod_profesor` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
