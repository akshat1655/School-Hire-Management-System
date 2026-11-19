-- ========================================================
-- School Hire Management System - Database Schema
-- Database: schoolhire
-- Author: Akshat Kumar Jain
-- ========================================================

CREATE DATABASE IF NOT EXISTS schoolhire;
USE schoolhire;

-- --------------------------------------------------------
-- Table structure for table `admin`
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `admin` (
    `adminId` INT AUTO_INCREMENT PRIMARY KEY,
    `email` VARCHAR(100) NOT NULL UNIQUE,
    `password` VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Default administrator credentials
INSERT INTO `admin` (`email`, `password`) 
VALUES ('admin@schoolhire.com', 'admin123')
ON DUPLICATE KEY UPDATE `password` = VALUES(`password`);

-- --------------------------------------------------------
-- Table structure for table `candidate`
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `candidate` (
    `candidateId` INT AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(100) NOT NULL,
    `email` VARCHAR(100) NOT NULL UNIQUE,
    `password` VARCHAR(100) NOT NULL,
    `contact` VARCHAR(20),
    `address` VARCHAR(255),
    `date` VARCHAR(50),
    `gender` VARCHAR(20),
    `qualification` VARCHAR(100),
    `experience` VARCHAR(100)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------
-- Table structure for table `vacancy`
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `vacancy` (
    `vacancyId` INT AUTO_INCREMENT PRIMARY KEY,
    `vacancyName` VARCHAR(150) NOT NULL,
    `criteria` VARCHAR(255),
    `jobType` VARCHAR(50),
    `jobMode` VARCHAR(50),
    `vacancy` INT DEFAULT 1,
    `salary` VARCHAR(50),
    `location` VARCHAR(100),
    `timings` VARCHAR(50),
    `bond` VARCHAR(50),
    `genderPre` VARCHAR(50),
    `joiningStatus` VARCHAR(50),
    `advDate` VARCHAR(50),
    `lastDate` VARCHAR(50),
    `reallocate` VARCHAR(50),
    `status` INT DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------
-- Table structure for table `appliedVacancy`
-- --------------------------------------------------------
CREATE TABLE IF NOT EXISTS `appliedVacancy` (
    `appliedVacancyId` INT AUTO_INCREMENT PRIMARY KEY,
    `candidateId` INT NOT NULL,
    `candidateName` VARCHAR(100) NOT NULL,
    `email` VARCHAR(100) NOT NULL,
    `vacancyId` INT NOT NULL,
    `vacancyName` VARCHAR(150) NOT NULL,
    `applyStatus` VARCHAR(50) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
