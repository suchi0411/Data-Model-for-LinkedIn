-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Sandbox_Sdonep
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Sandbox_Sdonep
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Sandbox_Sdonep` DEFAULT CHARACTER SET utf8 ;
USE `Sandbox_Sdonep` ;

-- -----------------------------------------------------
-- Table `Sandbox_Sdonep`.`Addresses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sandbox_Sdonep`.`Addresses` (
  `Address_ID` INT NOT NULL,
  `Line_1` VARCHAR(45) NULL,
  `Line_2` VARCHAR(45) NULL,
  `Line_3` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `Postal_code` VARCHAR(45) NULL,
  `Country` VARCHAR(45) NULL,
  `Other_details` VARCHAR(45) NULL,
  PRIMARY KEY (`Address_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sandbox_Sdonep`.`Company`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sandbox_Sdonep`.`Company` (
  `Company_ID` INT NULL,
  `Company_Name` VARCHAR(45) NOT NULL,
  `Company_Description` VARCHAR(45) NOT NULL,
  `Other_details` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Company_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sandbox_Sdonep`.`Users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sandbox_Sdonep`.`Users` (
  `User ID` INT NULL,
  `Date_of_birth` INT NULL,
  `Date_Joined` INT NULL,
  `Marital Status` VARCHAR(45) NULL,
  `Email_Address` VARCHAR(45) NULL,
  `Email_Password` VARCHAR(25) NULL,
  `First_Name` VARCHAR(45) NULL,
  `Middle_Name` VARCHAR(45) NULL,
  `Last_Name` VARCHAR(45) NULL,
  `Gender` VARCHAR(45) NULL,
  PRIMARY KEY (`User ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sandbox_Sdonep`.`Groups`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sandbox_Sdonep`.`Groups` (
  `Group_ID` INT NOT NULL AUTO_INCREMENT,
  `Group_Name` VARCHAR(45) NOT NULL,
  `Group_Description` VARCHAR(45) NOT NULL,
  `Group_Date_Started` INT NOT NULL,
  `Group_Date_Ended` INT NOT NULL,
  `Group_Date_Last_Activity` INT NOT NULL,
  `Other_details` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Group_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sandbox_Sdonep`.`Group_Members`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sandbox_Sdonep`.`Group_Members` (
  `User_ID` INT NOT NULL AUTO_INCREMENT,
  `Group_ID` INT NOT NULL,
  `Date_Joined` INT NOT NULL,
  `Date_Left` INT NOT NULL,
  PRIMARY KEY (`User_ID`, `Group_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sandbox_Sdonep`.`User_Profile`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sandbox_Sdonep`.`User_Profile` (
  `Profile_ID` INT NOT NULL,
  `Date_Created` INT NOT NULL,
  `Date_Last_updated` INT NOT NULL,
  PRIMARY KEY (`Profile_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sandbox_Sdonep`.`Following_people`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sandbox_Sdonep`.`Following_people` (
  `User_ID` INT NOT NULL,
  `Following_user_ID` INT NOT NULL,
  `Date_Started_following` INT NOT NULL,
  `Date_Stopped_following` INT NOT NULL,
  PRIMARY KEY (`User_ID`, `Following_user_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sandbox_Sdonep`.`Connections`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sandbox_Sdonep`.`Connections` (
  `Connection_ID` INT NOT NULL,
  `Connection_member_ID` INT NOT NULL,
  `Date_Connection_made` INT NOT NULL,
  PRIMARY KEY (`Connection_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Sandbox_Sdonep`.`Recommendations`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Sandbox_Sdonep`.`Recommendations` (
  `Recommendation_Member_ID` INT NOT NULL,
  `Member_being_Recommended_ID` INT NOT NULL,
  `Date_of_Recommendation` INT NOT NULL,
  `Other_details` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Recommendation_Member_ID`, `Member_being_Recommended_ID`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
