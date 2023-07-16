-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema yu_gi_oh_cards
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema yu_gi_oh_cards
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `yu_gi_oh_cards` DEFAULT CHARACTER SET utf8 ;
USE `yu_gi_oh_cards` ;

-- -----------------------------------------------------
-- Table `yu_gi_oh_cards`.`cards`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yu_gi_oh_cards`.`cards` (
  `passcode` INT NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`passcode`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `yu_gi_oh_cards`.`description`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yu_gi_oh_cards`.`description` (
  `description_id` INT NOT NULL AUTO_INCREMENT,
  `url` VARCHAR(200) NOT NULL,
  `desc` VARCHAR(2000) NOT NULL,
  `cards_passcode` INT NOT NULL,
  PRIMARY KEY (`description_id`, `cards_passcode`),
  CONSTRAINT `fk_description_cards`
    FOREIGN KEY (`cards_passcode`)
    REFERENCES `yu_gi_oh_cards`.`cards` (`passcode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `yu_gi_oh_cards`.`top_cards`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yu_gi_oh_cards`.`top_cards` (
  `top_id` INT NOT NULL AUTO_INCREMENT,
  `topcards_name` VARCHAR(100) NOT NULL,
  `decks` INT NOT NULL,
  `porcentage` FLOAT NOT NULL,
  `cards_passcode` INT NOT NULL,
  PRIMARY KEY (`top_id`, `cards_passcode`),
  INDEX `fk_top_cards_cards1_idx` (`cards_passcode` ASC) VISIBLE,
  CONSTRAINT `fk_top_cards_cards1`
    FOREIGN KEY (`cards_passcode`)
    REFERENCES `yu_gi_oh_cards`.`cards` (`passcode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `yu_gi_oh_cards`.`race`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yu_gi_oh_cards`.`race` (
  `race_id` INT NOT NULL AUTO_INCREMENT,
  `race_name` VARCHAR(100) NULL,
  `description_description_id` INT NOT NULL,
  `description_cards_passcode` INT NOT NULL,
  PRIMARY KEY (`race_id`, `description_description_id`, `description_cards_passcode`),
  INDEX `fk_race_description1_idx` (`description_description_id` ASC, `description_cards_passcode` ASC) VISIBLE,
  CONSTRAINT `fk_race_description1`
    FOREIGN KEY (`description_description_id` , `description_cards_passcode`)
    REFERENCES `yu_gi_oh_cards`.`description` (`description_id` , `cards_passcode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `yu_gi_oh_cards`.`type`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yu_gi_oh_cards`.`type` (
  `type_id` INT NOT NULL AUTO_INCREMENT,
  `type_name` VARCHAR(45) NOT NULL,
  `description_description_id` INT NOT NULL,
  `description_cards_passcode` INT NOT NULL,
  PRIMARY KEY (`type_id`, `description_description_id`, `description_cards_passcode`),
  INDEX `fk_type_description1_idx` (`description_description_id` ASC, `description_cards_passcode` ASC) VISIBLE,
  CONSTRAINT `fk_type_description1`
    FOREIGN KEY (`description_description_id` , `description_cards_passcode`)
    REFERENCES `yu_gi_oh_cards`.`description` (`description_id` , `cards_passcode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `yu_gi_oh_cards`.`archetype`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yu_gi_oh_cards`.`archetype` (
  `archetype_id` INT NOT NULL AUTO_INCREMENT,
  `archetype_name` VARCHAR(100) NULL,
  `description_description_id` INT NOT NULL,
  `description_cards_passcode` INT NOT NULL,
  PRIMARY KEY (`archetype_id`, `description_description_id`, `description_cards_passcode`),
  INDEX `fk_archetype_description1_idx` (`description_description_id` ASC, `description_cards_passcode` ASC) VISIBLE,
  CONSTRAINT `fk_archetype_description1`
    FOREIGN KEY (`description_description_id` , `description_cards_passcode`)
    REFERENCES `yu_gi_oh_cards`.`description` (`description_id` , `cards_passcode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `yu_gi_oh_cards`.`frametype`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yu_gi_oh_cards`.`frametype` (
  `frametype_id` INT NOT NULL AUTO_INCREMENT,
  `frametype_name` VARCHAR(100) NOT NULL,
  `description_description_id` INT NOT NULL,
  `description_cards_passcode` INT NOT NULL,
  PRIMARY KEY (`frametype_id`, `description_description_id`, `description_cards_passcode`),
  INDEX `fk_frametype_description1_idx` (`description_description_id` ASC, `description_cards_passcode` ASC) VISIBLE,
  CONSTRAINT `fk_frametype_description1`
    FOREIGN KEY (`description_description_id` , `description_cards_passcode`)
    REFERENCES `yu_gi_oh_cards`.`description` (`description_id` , `cards_passcode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `yu_gi_oh_cards`.`atk`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yu_gi_oh_cards`.`atk` (
  `idatk` INT NOT NULL AUTO_INCREMENT,
  `atk` INT NULL,
  `description_description_id` INT NOT NULL,
  `description_cards_passcode` INT NOT NULL,
  PRIMARY KEY (`idatk`, `description_description_id`, `description_cards_passcode`),
  INDEX `fk_atk_description1_idx` (`description_description_id` ASC, `description_cards_passcode` ASC) VISIBLE,
  CONSTRAINT `fk_atk_description1`
    FOREIGN KEY (`description_description_id` , `description_cards_passcode`)
    REFERENCES `yu_gi_oh_cards`.`description` (`description_id` , `cards_passcode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `yu_gi_oh_cards`.`def`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yu_gi_oh_cards`.`def` (
  `def_id` INT NOT NULL AUTO_INCREMENT,
  `def` INT NULL,
  `description_description_id` INT NOT NULL,
  `description_cards_passcode` INT NOT NULL,
  PRIMARY KEY (`def_id`, `description_description_id`, `description_cards_passcode`),
  INDEX `fk_def_description1_idx` (`description_description_id` ASC, `description_cards_passcode` ASC) VISIBLE,
  CONSTRAINT `fk_def_description1`
    FOREIGN KEY (`description_description_id` , `description_cards_passcode`)
    REFERENCES `yu_gi_oh_cards`.`description` (`description_id` , `cards_passcode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `yu_gi_oh_cards`.`attribute`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yu_gi_oh_cards`.`attribute` (
  `attribute_id` INT NOT NULL AUTO_INCREMENT,
  `attribute_name` VARCHAR(100) NULL,
  `description_description_id` INT NOT NULL,
  `description_cards_passcode` INT NOT NULL,
  PRIMARY KEY (`attribute_id`, `description_description_id`, `description_cards_passcode`),
  INDEX `fk_attribute_description1_idx` (`description_description_id` ASC, `description_cards_passcode` ASC) VISIBLE,
  CONSTRAINT `fk_attribute_description1`
    FOREIGN KEY (`description_description_id` , `description_cards_passcode`)
    REFERENCES `yu_gi_oh_cards`.`description` (`description_id` , `cards_passcode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `yu_gi_oh_cards`.`level`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yu_gi_oh_cards`.`level` (
  `level_id` INT NOT NULL AUTO_INCREMENT,
  `level` INT NULL,
  `description_description_id` INT NOT NULL,
  `description_cards_passcode` INT NOT NULL,
  PRIMARY KEY (`level_id`, `description_description_id`, `description_cards_passcode`),
  INDEX `fk_level_description1_idx` (`description_description_id` ASC, `description_cards_passcode` ASC) VISIBLE,
  CONSTRAINT `fk_level_description1`
    FOREIGN KEY (`description_description_id` , `description_cards_passcode`)
    REFERENCES `yu_gi_oh_cards`.`description` (`description_id` , `cards_passcode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `yu_gi_oh_cards`.`market`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `yu_gi_oh_cards`.`market` (
  `market_id` INT NOT NULL AUTO_INCREMENT,
  `cardmarket_price` FLOAT NOT NULL,
  `tcgplayer_price` FLOAT NOT NULL,
  `ebay_price` FLOAT NOT NULL,
  `amazon_price` FLOAT NOT NULL,
  `coolstuffinc_price` FLOAT NOT NULL,
  `cards_passcode` INT NOT NULL,
  PRIMARY KEY (`market_id`, `cards_passcode`),
  INDEX `fk_market_cards1_idx` (`cards_passcode` ASC) VISIBLE,
  CONSTRAINT `fk_market_cards1`
    FOREIGN KEY (`cards_passcode`)
    REFERENCES `yu_gi_oh_cards`.`cards` (`passcode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
