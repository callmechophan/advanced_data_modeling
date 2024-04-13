/*
 * MySQL Workbench
 * - using forward and reverse engineering features
 * 
 * forward engineer (model -> schema )
 * - use this method to create a relevant data model
 * - the SQL schema is automatically generated for you
 * 
 * reverse engineer (schema -> model)
 * - use this method to create or import a MySQL database file
 * - and then generate a relevant data model from the SQL script
*/
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- schema mangata_gallo
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mangata_gallo` DEFAULT CHARACTER SET utf8 ;
USE `mangata_gallo`;

-- -----------------------------------------------------
-- table `mangata_gallo`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mangata_gallo`.`customers`
(
  `customer_id` INT NOT NULL,
  `full_name` VARCHAR(255) NOT NULL,
  `contact_number` INT NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`customer_id`)
)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- table `mangata_gallo`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mangata_gallo`.`orders`
(
  `order_id` INT NOT NULL,
  `order_date` DATE NOT NULL,
  `total_price` DECIMAL(10,2) NOT NULL,
  `customer_id` INT NOT NULL,
  PRIMARY KEY (`order_id`),
  INDEX `customer_id_idx` (`customer_id` ASC) VISIBLE,
  CONSTRAINT `customer_id`
    FOREIGN KEY (`customer_id`)
    REFERENCES `mangata_gallo`.`customers` (`customer_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE
)
ENGINE = InnoDB;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;