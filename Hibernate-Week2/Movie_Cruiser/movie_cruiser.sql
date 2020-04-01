-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema movie_cruse
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema movie_cruse
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `movie_cruse` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `movie_cruse` ;

-- -----------------------------------------------------
-- Table `movie_cruse`.`movie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_cruse`.`movie` (
  `id` INT NOT NULL,
  `title` VARCHAR(45) NULL DEFAULT NULL,
  `boxoffice` VARCHAR(45) NULL DEFAULT NULL,
  `active` BIT(2) NULL DEFAULT NULL,
  `dateoflaunch` DATE NULL DEFAULT NULL,
  `genre` VARCHAR(45) NULL DEFAULT NULL,
  `hasteaser` BIT(2) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `movie_cruse`.`favorites`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `movie_cruse`.`favorites` (
  `us_id` INT NOT NULL,
  `mv_id` INT NOT NULL,
  INDEX `mv_id_idx` (`mv_id` ASC) VISIBLE,
  CONSTRAINT `mv_id`
    FOREIGN KEY (`mv_id`)
    REFERENCES `movie_cruse`.`movie` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
