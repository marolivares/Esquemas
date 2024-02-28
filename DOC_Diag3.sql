-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DOC_diag3
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DOC_diag3
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DOC_diag3` DEFAULT CHARACTER SET utf8 ;
USE `DOC_diag3` ;

-- -----------------------------------------------------
-- Table `DOC_diag3`.`DNI`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag3`.`DNI` (
  `num_dni` INT NOT NULL,
  PRIMARY KEY (`num_dni`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DOC_diag3`.`PERSONA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DOC_diag3`.`PERSONA` (
  `nombres` VARCHAR(15) NOT NULL,
  `apellido_1` VARCHAR(15) NOT NULL,
  `apellido_2` VARCHAR(15) NOT NULL,
  `DNI_num_dni` INT NOT NULL,
  PRIMARY KEY (`DNI_num_dni`),
  INDEX `fk_PERSONA_DNI_idx` (`DNI_num_dni` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
