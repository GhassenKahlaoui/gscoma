-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 12 Juillet 2020 à 23:19
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `gsco`
--

-- --------------------------------------------------------

--
-- Structure de la table `anne`
--

CREATE TABLE IF NOT EXISTS `anne` (
  `IdDate` varchar(200) NOT NULL,
  `Annee` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`IdDate`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `anne`
--

INSERT INTO `anne` (`IdDate`, `Annee`) VALUES
('D1920', '2019-2020'),
('D2021', '2020-2021');

-- --------------------------------------------------------

--
-- Structure de la table `element_etudiant`
--

CREATE TABLE IF NOT EXISTS `element_etudiant` (
  `Numero` int(11) NOT NULL AUTO_INCREMENT,
  `IUN` varchar(500) DEFAULT NULL,
  `IEE` varchar(500) DEFAULT NULL,
  `type` char(1) DEFAULT NULL,
  `note1` varchar(100) DEFAULT NULL,
  `note2` varchar(100) DEFAULT NULL,
  `note3` varchar(100) DEFAULT NULL,
  `Moyenne` varchar(100) DEFAULT NULL,
  `Matricule` varchar(100) DEFAULT NULL,
  `Credit_acquis` varchar(10) NOT NULL,
  PRIMARY KEY (`Numero`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `element_etudiant`
--

INSERT INTO `element_etudiant` (`Numero`, `IUN`, `IEE`, `type`, `note1`, `note2`, `note3`, `Moyenne`, `Matricule`, `Credit_acquis`) VALUES
(1, 'U1', 'S2', 'C', '11.2', '3.2', '', '14.4', '07993521', '2'),
(2, 'U1', 'ATS', 'C', '10.8', '4', '3.8', '15.64', '07993521', '2'),
(3, 'U2', 'ATR', 'C', '12', '6', '3.4', '17.8', '07993521', '1'),
(4, 'U2', 'BD', 'C', '11.2', '2.6', '', '13.8', '07993521', '1'),
(5, 'uo', 'e5', 'C', '11.2', '2', '', '13.2', '12345678', ''),
(6, 'uo', 'es', 'C', '9', '7.2', '4', '16.96', '12345678', '');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant`
--

CREATE TABLE IF NOT EXISTS `etudiant` (
  `Numero_inscription` varchar(200) DEFAULT NULL,
  `Matricule` varchar(100) NOT NULL,
  `nom` varchar(500) DEFAULT NULL,
  `prenom` varchar(500) DEFAULT NULL,
  `sexe` char(1) DEFAULT NULL,
  `situation_familiale` char(1) DEFAULT NULL,
  `Date_naissence` varchar(100) DEFAULT NULL,
  `lieu_naissence` varchar(100) DEFAULT NULL,
  `Statut` char(1) DEFAULT NULL,
  `Passeport` varchar(500) DEFAULT NULL,
  `adresse` varchar(500) DEFAULT NULL,
  `code_gouvernorat` varchar(20) DEFAULT NULL,
  `Email` varchar(500) DEFAULT NULL,
  `telephone` varchar(200) DEFAULT NULL,
  `Code_nature_Bac` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Matricule`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etudiant`
--

INSERT INTO `etudiant` (`Numero_inscription`, `Matricule`, `nom`, `prenom`, `sexe`, `situation_familiale`, `Date_naissence`, `lieu_naissence`, `Statut`, `Passeport`, `adresse`, `code_gouvernorat`, `Email`, `telephone`, `Code_nature_Bac`) VALUES
('MP2112', '07993521', 'kah', 'iheb', 'H', 'C', 'null', 'Jendouba', 'N', 'P130', '75 amen city', '49', 'ghassenkahlaoui@gmail.com', '51506788', '2'),
('TI17192', '02345678', 'hannachi', 'dhi', 'H', 'C', '04-05-1998', 'Bizerte', 'N', NULL, NULL, '5', NULL, NULL, '3'),
('MP2112', '12345678', 'ayadi', 'Mohamed ghassen', 'H', 'C', '04-06-1997', 'Jendouba', 'N', 'P130', '75 amen city', '49', 'ghassenkahlaoui@gmail.com', '51506788', '2');

-- --------------------------------------------------------

--
-- Structure de la table `etudiant_groupe`
--

CREATE TABLE IF NOT EXISTS `etudiant_groupe` (
  `Matricule` varchar(100) NOT NULL,
  `code_groupe` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Matricule`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `etudiant_groupe`
--

INSERT INTO `etudiant_groupe` (`Matricule`, `code_groupe`) VALUES
('TI17192', 'MP576092G2'),
('02345678', 'MP576092G2');

-- --------------------------------------------------------

--
-- Structure de la table `etumoyenne`
--

CREATE TABLE IF NOT EXISTS `etumoyenne` (
  `identifcateur` int(11) NOT NULL AUTO_INCREMENT,
  `cin` varchar(8) DEFAULT NULL,
  `ID_Element` varchar(100) DEFAULT NULL,
  `note1` varchar(100) DEFAULT NULL,
  `note2` varchar(100) DEFAULT NULL,
  `note3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`identifcateur`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=262 ;

--
-- Contenu de la table `etumoyenne`
--

INSERT INTO `etumoyenne` (`identifcateur`, `cin`, `ID_Element`, `note1`, `note2`, `note3`) VALUES
(22, '07993521', 'ATBD\r\n', '12.16', '4', ''),
(23, '12345678', 'ATBD\r\n', '12.8', '3.8', ''),
(24, '11747987', 'ATBD\r\n', '16', '3.9', ''),
(25, '11547987', 'ATBD\r\n', '16', '1.6', ''),
(26, '11247987', 'ATBD\r\n', '16', '2', ''),
(27, '11047987', 'ATBD\r\n', '16', '1.6', ''),
(28, '11307987', 'ATBD\r\n', '16', '1.4', ''),
(29, '11397987', 'ATBD\r\n', '16', '3', ''),
(30, '11347087', 'ATBD\r\n', '16', '3.6', ''),
(31, '11347887', 'ATBD\r\n', '16', '2', ''),
(32, '11347997', 'ATBD\r\n', '16', '1.9', ''),
(33, '11347977', 'ATBD\r\n', '16', '0.3', ''),
(34, '11347117', 'ATBD\r\n', '16', '2.5', ''),
(35, '11347017', 'ATBD\r\n', '16', '2.7', ''),
(36, '11347107', 'ATBD\r\n', '16', '2.9', ''),
(37, '11347787', 'ATBD\r\n', '16', '2.8', ''),
(38, '11347447', 'ATBD\r\n', '16', '3.3', ''),
(39, '11347227', 'ATBD\r\n', '16', '3.5', ''),
(40, '11347217', 'ATBD\r\n', '16', '3.2', ''),
(41, '11347207', 'ATBD\r\n', '16', '3.4', ''),
(42, '07993521', 'ATBD\r\n', '12.16', '4', ''),
(43, '12345678', 'ATBD\r\n', '12.8', '3.8', ''),
(44, '11747987', 'ATBD\r\n', '16', '3.9', ''),
(45, '11547987', 'ATBD\r\n', '16', '1.6', ''),
(46, '11247987', 'ATBD\r\n', '16', '2', ''),
(47, '11047987', 'ATBD\r\n', '16', '1.6', ''),
(48, '11307987', 'ATBD\r\n', '16', '1.4', ''),
(49, '11397987', 'ATBD\r\n', '16', '3', ''),
(50, '11347087', 'ATBD\r\n', '16', '3.6', ''),
(51, '11347887', 'ATBD\r\n', '16', '2', ''),
(52, '11347997', 'ATBD\r\n', '16', '1.9', ''),
(53, '11347977', 'ATBD\r\n', '16', '0.3', ''),
(54, '11347117', 'ATBD\r\n', '16', '2.5', ''),
(55, '11347017', 'ATBD\r\n', '16', '2.7', ''),
(56, '11347107', 'ATBD\r\n', '16', '2.9', ''),
(57, '11347787', 'ATBD\r\n', '16', '2.8', ''),
(58, '11347447', 'ATBD\r\n', '16', '3.3', ''),
(59, '11347227', 'ATBD\r\n', '16', '3.5', ''),
(60, '11347217', 'ATBD\r\n', '16', '3.2', ''),
(61, '11347207', 'ATBD\r\n', '16', '3.4', ''),
(62, '07993521', 'ATBD\r\n', '12.16', '4', ''),
(63, '12345678', 'ATBD\r\n', '12.8', '3.8', ''),
(64, '11747987', 'ATBD\r\n', '16', '3.9', ''),
(65, '11547987', 'ATBD\r\n', '16', '1.6', ''),
(66, '11247987', 'ATBD\r\n', '16', '2', ''),
(67, '11047987', 'ATBD\r\n', '16', '1.6', ''),
(68, '11307987', 'ATBD\r\n', '16', '1.4', ''),
(69, '11397987', 'ATBD\r\n', '16', '3', ''),
(70, '11347087', 'ATBD\r\n', '16', '3.6', ''),
(71, '11347887', 'ATBD\r\n', '16', '2', ''),
(72, '11347997', 'ATBD\r\n', '16', '1.9', ''),
(73, '11347977', 'ATBD\r\n', '16', '0.3', ''),
(74, '11347117', 'ATBD\r\n', '16', '2.5', ''),
(75, '11347017', 'ATBD\r\n', '16', '2.7', ''),
(76, '11347107', 'ATBD\r\n', '16', '2.9', ''),
(77, '11347787', 'ATBD\r\n', '16', '2.8', ''),
(78, '11347447', 'ATBD\r\n', '16', '3.3', ''),
(79, '11347227', 'ATBD\r\n', '16', '3.5', ''),
(80, '11347217', 'ATBD\r\n', '16', '3.2', ''),
(81, '11347207', 'ATBD\r\n', '16', '3.4', ''),
(82, '07993521', 'ATBD\r\n', '12.16', '4', ''),
(83, '12345678', 'ATBD\r\n', '12.8', '3.8', ''),
(84, '11747987', 'ATBD\r\n', '16', '3.9', ''),
(85, '11547987', 'ATBD\r\n', '16', '1.6', ''),
(86, '11247987', 'ATBD\r\n', '16', '2', ''),
(87, '11047987', 'ATBD\r\n', '16', '1.6', ''),
(88, '11307987', 'ATBD\r\n', '16', '1.4', ''),
(89, '11397987', 'ATBD\r\n', '16', '3', ''),
(90, '11347087', 'ATBD\r\n', '16', '3.6', ''),
(91, '11347887', 'ATBD\r\n', '16', '2', ''),
(92, '11347997', 'ATBD\r\n', '16', '1.9', ''),
(93, '11347977', 'ATBD\r\n', '16', '0.3', ''),
(94, '11347117', 'ATBD\r\n', '16', '2.5', ''),
(95, '11347017', 'ATBD\r\n', '16', '2.7', ''),
(96, '11347107', 'ATBD\r\n', '16', '2.9', ''),
(97, '11347787', 'ATBD\r\n', '16', '2.8', ''),
(98, '11347447', 'ATBD\r\n', '16', '3.3', ''),
(99, '11347227', 'ATBD\r\n', '16', '3.5', ''),
(100, '11347217', 'ATBD\r\n', '16', '3.2', ''),
(101, '11347207', 'ATBD\r\n', '16', '3.4', ''),
(102, '07993521', 'ATBD\r\n', '12.16', '4', ''),
(103, '12345678', 'ATBD\r\n', '12.8', '3.8', ''),
(104, '11747987', 'ATBD\r\n', '16', '3.9', ''),
(105, '11547987', 'ATBD\r\n', '16', '1.6', ''),
(106, '11247987', 'ATBD\r\n', '16', '2', ''),
(107, '11047987', 'ATBD\r\n', '16', '1.6', ''),
(108, '11307987', 'ATBD\r\n', '16', '1.4', ''),
(109, '11397987', 'ATBD\r\n', '16', '3', ''),
(110, '11347087', 'ATBD\r\n', '16', '3.6', ''),
(111, '11347887', 'ATBD\r\n', '16', '2', ''),
(112, '11347997', 'ATBD\r\n', '16', '1.9', ''),
(113, '11347977', 'ATBD\r\n', '16', '0.3', ''),
(114, '11347117', 'ATBD\r\n', '16', '2.5', ''),
(115, '11347017', 'ATBD\r\n', '16', '2.7', ''),
(116, '11347107', 'ATBD\r\n', '16', '2.9', ''),
(117, '11347787', 'ATBD\r\n', '16', '2.8', ''),
(118, '11347447', 'ATBD\r\n', '16', '3.3', ''),
(119, '11347227', 'ATBD\r\n', '16', '3.5', ''),
(120, '11347217', 'ATBD\r\n', '16', '3.2', ''),
(121, '11347207', 'ATBD\r\n', '16', '3.4', ''),
(122, '07993521', 'ATBD\r\n', '12.16', '4', ''),
(123, '12345678', 'ATBD\r\n', '12.8', '3.8', ''),
(124, '11747987', 'ATBD\r\n', '16', '3.9', ''),
(125, '11547987', 'ATBD\r\n', '16', '1.6', ''),
(126, '11247987', 'ATBD\r\n', '16', '2', ''),
(127, '11047987', 'ATBD\r\n', '16', '1.6', ''),
(128, '11307987', 'ATBD\r\n', '16', '1.4', ''),
(129, '11397987', 'ATBD\r\n', '16', '3', ''),
(130, '11347087', 'ATBD\r\n', '16', '3.6', ''),
(131, '11347887', 'ATBD\r\n', '16', '2', ''),
(132, '11347997', 'ATBD\r\n', '16', '1.9', ''),
(133, '11347977', 'ATBD\r\n', '16', '0.3', ''),
(134, '11347117', 'ATBD\r\n', '16', '2.5', ''),
(135, '11347017', 'ATBD\r\n', '16', '2.7', ''),
(136, '11347107', 'ATBD\r\n', '16', '2.9', ''),
(137, '11347787', 'ATBD\r\n', '16', '2.8', ''),
(138, '11347447', 'ATBD\r\n', '16', '3.3', ''),
(139, '11347227', 'ATBD\r\n', '16', '3.5', ''),
(140, '11347217', 'ATBD\r\n', '16', '3.2', ''),
(141, '11347207', 'ATBD\r\n', '16', '3.4', ''),
(142, '07993521', 'ATBD\r\n', '12.16', '4', ''),
(143, '12345678', 'ATBD\r\n', '12.8', '3.8', ''),
(144, '11747987', 'ATBD\r\n', '16', '3.9', ''),
(145, '11547987', 'ATBD\r\n', '16', '1.6', ''),
(146, '11247987', 'ATBD\r\n', '16', '2', ''),
(147, '11047987', 'ATBD\r\n', '16', '1.6', ''),
(148, '11307987', 'ATBD\r\n', '16', '1.4', ''),
(149, '11397987', 'ATBD\r\n', '16', '3', ''),
(150, '11347087', 'ATBD\r\n', '16', '3.6', ''),
(151, '11347887', 'ATBD\r\n', '16', '2', ''),
(152, '11347997', 'ATBD\r\n', '16', '1.9', ''),
(153, '11347977', 'ATBD\r\n', '16', '0.3', ''),
(154, '11347117', 'ATBD\r\n', '16', '2.5', ''),
(155, '11347017', 'ATBD\r\n', '16', '2.7', ''),
(156, '11347107', 'ATBD\r\n', '16', '2.9', ''),
(157, '11347787', 'ATBD\r\n', '16', '2.8', ''),
(158, '11347447', 'ATBD\r\n', '16', '3.3', ''),
(159, '11347227', 'ATBD\r\n', '16', '3.5', ''),
(160, '11347217', 'ATBD\r\n', '16', '3.2', ''),
(161, '11347207', 'ATBD\r\n', '16', '3.4', ''),
(162, '07993521', 'ATBD\r\n', '12.16', '4', ''),
(163, '12345678', 'ATBD\r\n', '12.8', '3.8', ''),
(164, '11747987', 'ATBD\r\n', '16', '3.9', ''),
(165, '11547987', 'ATBD\r\n', '16', '1.6', ''),
(166, '11247987', 'ATBD\r\n', '16', '2', ''),
(167, '11047987', 'ATBD\r\n', '16', '1.6', ''),
(168, '11307987', 'ATBD\r\n', '16', '1.4', ''),
(169, '11397987', 'ATBD\r\n', '16', '3', ''),
(170, '11347087', 'ATBD\r\n', '16', '3.6', ''),
(171, '11347887', 'ATBD\r\n', '16', '2', ''),
(172, '11347997', 'ATBD\r\n', '16', '1.9', ''),
(173, '11347977', 'ATBD\r\n', '16', '0.3', ''),
(174, '11347117', 'ATBD\r\n', '16', '2.5', ''),
(175, '11347017', 'ATBD\r\n', '16', '2.7', ''),
(176, '11347107', 'ATBD\r\n', '16', '2.9', ''),
(177, '11347787', 'ATBD\r\n', '16', '2.8', ''),
(178, '11347447', 'ATBD\r\n', '16', '3.3', ''),
(179, '11347227', 'ATBD\r\n', '16', '3.5', ''),
(180, '11347217', 'ATBD\r\n', '16', '3.2', ''),
(181, '11347207', 'ATBD\r\n', '16', '3.4', ''),
(182, '07993521', 'ATBD\r\n', '12.16', '4', ''),
(183, '12345678', 'ATBD\r\n', '12.8', '3.8', ''),
(184, '11747987', 'ATBD\r\n', '16', '3.9', ''),
(185, '11547987', 'ATBD\r\n', '16', '1.6', ''),
(186, '11247987', 'ATBD\r\n', '16', '2', ''),
(187, '11047987', 'ATBD\r\n', '16', '1.6', ''),
(188, '11307987', 'ATBD\r\n', '16', '1.4', ''),
(189, '11397987', 'ATBD\r\n', '16', '3', ''),
(190, '11347087', 'ATBD\r\n', '16', '3.6', ''),
(191, '11347887', 'ATBD\r\n', '16', '2', ''),
(192, '11347997', 'ATBD\r\n', '16', '1.9', ''),
(193, '11347977', 'ATBD\r\n', '16', '0.3', ''),
(194, '11347117', 'ATBD\r\n', '16', '2.5', ''),
(195, '11347017', 'ATBD\r\n', '16', '2.7', ''),
(196, '11347107', 'ATBD\r\n', '16', '2.9', ''),
(197, '11347787', 'ATBD\r\n', '16', '2.8', ''),
(198, '11347447', 'ATBD\r\n', '16', '3.3', ''),
(199, '11347227', 'ATBD\r\n', '16', '3.5', ''),
(200, '11347217', 'ATBD\r\n', '16', '3.2', ''),
(201, '11347207', 'ATBD\r\n', '16', '3.4', ''),
(202, '07993521', 'ATBD\r\n', '12.16', '4', ''),
(203, '12345678', 'ATBD\r\n', '12.8', '3.8', ''),
(204, '11747987', 'ATBD\r\n', '16', '3.9', ''),
(205, '11547987', 'ATBD\r\n', '16', '1.6', ''),
(206, '11247987', 'ATBD\r\n', '16', '2', ''),
(207, '11047987', 'ATBD\r\n', '16', '1.6', ''),
(208, '11307987', 'ATBD\r\n', '16', '1.4', ''),
(209, '11397987', 'ATBD\r\n', '16', '3', ''),
(210, '11347087', 'ATBD\r\n', '16', '3.6', ''),
(211, '11347887', 'ATBD\r\n', '16', '2', ''),
(212, '11347997', 'ATBD\r\n', '16', '1.9', ''),
(213, '11347977', 'ATBD\r\n', '16', '0.3', ''),
(214, '11347117', 'ATBD\r\n', '16', '2.5', ''),
(215, '11347017', 'ATBD\r\n', '16', '2.7', ''),
(216, '11347107', 'ATBD\r\n', '16', '2.9', ''),
(217, '11347787', 'ATBD\r\n', '16', '2.8', ''),
(218, '11347447', 'ATBD\r\n', '16', '3.3', ''),
(219, '11347227', 'ATBD\r\n', '16', '3.5', ''),
(220, '11347217', 'ATBD\r\n', '16', '3.2', ''),
(221, '11347207', 'ATBD\r\n', '16', '3.4', ''),
(222, '07993521', 'ATBD\r\n', '12.16', '4', ''),
(223, '12345678', 'ATBD\r\n', '12.8', '3.8', ''),
(224, '11747987', 'ATBD\r\n', '16', '3.9', ''),
(225, '11547987', 'ATBD\r\n', '16', '1.6', ''),
(226, '11247987', 'ATBD\r\n', '16', '2', ''),
(227, '11047987', 'ATBD\r\n', '16', '1.6', ''),
(228, '11307987', 'ATBD\r\n', '16', '1.4', ''),
(229, '11397987', 'ATBD\r\n', '16', '3', ''),
(230, '11347087', 'ATBD\r\n', '16', '3.6', ''),
(231, '11347887', 'ATBD\r\n', '16', '2', ''),
(232, '11347997', 'ATBD\r\n', '16', '1.9', ''),
(233, '11347977', 'ATBD\r\n', '16', '0.3', ''),
(234, '11347117', 'ATBD\r\n', '16', '2.5', ''),
(235, '11347017', 'ATBD\r\n', '16', '2.7', ''),
(236, '11347107', 'ATBD\r\n', '16', '2.9', ''),
(237, '11347787', 'ATBD\r\n', '16', '2.8', ''),
(238, '11347447', 'ATBD\r\n', '16', '3.3', ''),
(239, '11347227', 'ATBD\r\n', '16', '3.5', ''),
(240, '11347217', 'ATBD\r\n', '16', '3.2', ''),
(241, '11347207', 'ATBD\r\n', '16', '3.4', ''),
(242, '07993521', 'ATBD\r\n', '12.16', '4', ''),
(243, '12345678', 'ATBD\r\n', '12.8', '3.8', ''),
(244, '11747987', 'ATBD\r\n', '16', '3.9', ''),
(245, '11547987', 'ATBD\r\n', '16', '1.6', ''),
(246, '11247987', 'ATBD\r\n', '16', '2', ''),
(247, '11047987', 'ATBD\r\n', '16', '1.6', ''),
(248, '11307987', 'ATBD\r\n', '16', '1.4', ''),
(249, '11397987', 'ATBD\r\n', '16', '3', ''),
(250, '11347087', 'ATBD\r\n', '16', '3.6', ''),
(251, '11347887', 'ATBD\r\n', '16', '2', ''),
(252, '11347997', 'ATBD\r\n', '16', '1.9', ''),
(253, '11347977', 'ATBD\r\n', '16', '0.3', ''),
(254, '11347117', 'ATBD\r\n', '16', '2.5', ''),
(255, '11347017', 'ATBD\r\n', '16', '2.7', ''),
(256, '11347107', 'ATBD\r\n', '16', '2.9', ''),
(257, '11347787', 'ATBD\r\n', '16', '2.8', ''),
(258, '11347447', 'ATBD\r\n', '16', '3.3', ''),
(259, '11347227', 'ATBD\r\n', '16', '3.5', ''),
(260, '11347217', 'ATBD\r\n', '16', '3.2', ''),
(261, '11347207', 'ATBD\r\n', '16', '3.4', '');

-- --------------------------------------------------------

--
-- Structure de la table `list_elementens`
--

CREATE TABLE IF NOT EXISTS `list_elementens` (
  `IDEE` varchar(500) NOT NULL DEFAULT '',
  `iUN` varchar(500) DEFAULT NULL,
  `LibelleEE` varchar(500) DEFAULT NULL,
  `Coefficient` char(1) DEFAULT NULL,
  `Credit` char(1) DEFAULT NULL,
  PRIMARY KEY (`IDEE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `list_groupes`
--

CREATE TABLE IF NOT EXISTS `list_groupes` (
  `code_groupe` varchar(100) NOT NULL,
  `CodeParcour` varchar(200) NOT NULL,
  `nom_groupe` varchar(200) DEFAULT NULL,
  `type_groupe` char(1) DEFAULT NULL,
  PRIMARY KEY (`code_groupe`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `list_groupes`
--

INSERT INTO `list_groupes` (`code_groupe`, `CodeParcour`, `nom_groupe`, `type_groupe`) VALUES
('MP576092G1', 'MP576092', 'MP11io', 'O');

-- --------------------------------------------------------

--
-- Structure de la table `list_unite`
--

CREATE TABLE IF NOT EXISTS `list_unite` (
  `IUN` varchar(500) NOT NULL,
  `LibUn` varchar(500) DEFAULT NULL,
  `Semestre` char(1) DEFAULT NULL,
  `Credit` varchar(5) DEFAULT NULL,
  `Coefficient` varchar(5) DEFAULT NULL,
  `IDParcrour` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`IUN`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `list_unite`
--

INSERT INTO `list_unite` (`IUN`, `LibUn`, `Semestre`, `Credit`, `Coefficient`, `IDParcrour`) VALUES
('MP5760991U1', 'Base de donÃ©ee', '1', '6', '6', 'MP'),
('MP5760991U2', 'Conception objet', '1', '4', '6', 'MP'),
('MP5760991U3', 'programmation objet', '1', '6', '6', 'MP'),
('MP5760991U4', 'Developpement web', '1', '6', '6', 'MP'),
('MP5760991U5', 'Communication et langue', '1', '4', '4', 'MP'),
('MP5760991U6', 'infographie et securitÃ©', '1', '4', '4', 'MP'),
('MP5760991U7', 'Developpement Web', '2', '5', '5', 'MP'),
('MP5760991U8', 'Architecure Logicielle', '2', '4', '4', 'MP'),
('MP5760991U9', 'Programmation Objet AvancÃ©ee', '2', '6', '6', 'MP'),
('MP5760991U10', 'SGBD', '2', '6', '6', 'MP'),
('MP5760991U11', 'Culture Et langue', '2', '4', '4', 'MP'),
('MP5760991U12', 'Conception et Developpement AvancÃ©ee', '2', '4', '4', 'MP');

-- --------------------------------------------------------

--
-- Structure de la table `moyenne_unite_etudiant`
--

CREATE TABLE IF NOT EXISTS `moyenne_unite_etudiant` (
  `matricule` varchar(100) NOT NULL DEFAULT '',
  `moyenne` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`matricule`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `moyenne_unite_etudiant`
--

INSERT INTO `moyenne_unite_etudiant` (`matricule`, `moyenne`) VALUES
('07993521', 'MG15.41#U1-15.02#U2-15.8');

-- --------------------------------------------------------

--
-- Structure de la table `parcour`
--

CREATE TABLE IF NOT EXISTS `parcour` (
  `IDPar` varchar(200) NOT NULL,
  `IAN` varchar(200) DEFAULT NULL,
  `Libelle` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`IDPar`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `parcour`
--

INSERT INTO `parcour` (`IDPar`, `IAN`, `Libelle`) VALUES
('MP01', 'D1920', 'Mastere Professionnelle en Data Science'),
('MP576092', 'D2021', 'Master Professionelle En Marketing'),
('MP', 'D2021', 'Master Professionelle En Big Data\r\n'),
('MP5760991', 'D2021', 'Master Professionelle En Big Data\r\n'),
('mp55', 'mast IA', 'D2122'),
('mp44', '555', '4');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
