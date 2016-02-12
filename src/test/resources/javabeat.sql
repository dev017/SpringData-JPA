-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 12 Février 2016 à 12:30
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `javabeat`
--

-- --------------------------------------------------------

--
-- Structure de la table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `addressId` bigint(20) NOT NULL AUTO_INCREMENT,
  `addressCountry` varchar(45) DEFAULT NULL,
  `addressCity` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`addressId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `address`
--

INSERT INTO `address` (`addressId`, `addressCountry`, `addressCity`) VALUES
(1, 'United Kingdom', 'London');

-- --------------------------------------------------------

--
-- Structure de la table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `employeeId` bigint(20) NOT NULL AUTO_INCREMENT,
  `employeeName` varchar(20) DEFAULT NULL,
  `addressId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`employeeId`),
  KEY `FK_EMP_ADD` (`addressId`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Contenu de la table `employee`
--

INSERT INTO `employee` (`employeeId`, `employeeName`, `addressId`) VALUES
(1, 'Susa Hurbert', 1);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `FK_EMP_ADD` FOREIGN KEY (`addressId`) REFERENCES `address` (`addressId`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
