-- MySQL

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `Aluno`;
CREATE TABLE `Aluno` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `Parentesco`;
CREATE TABLE `Parentesco` (
  `idresponsavel` int NOT NULL,
  `idaluno` int NOT NULL,
  `parentesco` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`idresponsavel`,`idaluno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


DROP TABLE IF EXISTS `Responsavel`;
CREATE TABLE `Responsavel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(128) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;