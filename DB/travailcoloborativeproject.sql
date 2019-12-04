-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2019 at 09:10 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `travailcoloborativeproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `abonnes`
--

CREATE TABLE `abonnes` (
  `idAbonne` int(50) NOT NULL,
  `NomAbonne` varchar(50) COLLATE utf8_bin NOT NULL,
  `PrenomAbonne` varchar(50) COLLATE utf8_bin NOT NULL,
  `AdresseAbonne` varchar(50) COLLATE utf8_bin NOT NULL,
  `TelAbonne` int(50) NOT NULL,
  `EmailAbonne` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `abonnes`
--

INSERT INTO `abonnes` (`idAbonne`, `NomAbonne`, `PrenomAbonne`, `AdresseAbonne`, `TelAbonne`, `EmailAbonne`) VALUES
(1, 'khalfi', 'khawla', 'n 8 ree 4435 zahrouni tunis', 50227098, 'khalfikaoula@gmail.com'),
(2, 'kouki', 'hamza', 'n 9 ree 4435 zahrouni tunis', 50892665, 'hamzakouki33@gmail.com'),
(3, 'Lausanne', 'Olympique', 'Quai d\'Ouchy 1, 1006 Lausanne, Suisse', 23415568, 'kaoulakalfi@gmail.com'),
(4, 'snime', 'ikrame', 'Avenue De La Liberté, Menzah 5', 45908234, 'koukihamza33@gmail.com'),
(5, 'lotfi', 'souhe', 'Avenue La Liberté, Menzah 4', 65789434, 'hamza.kouki@etudiant-fsegt.utm.tn');

-- --------------------------------------------------------

--
-- Table structure for table `sessform`
--

CREATE TABLE `sessform` (
  `idSess` int(50) NOT NULL,
  `date_Debut` date NOT NULL,
  `date_Fin` date NOT NULL,
  `date_LimiteInscription` date NOT NULL,
  `capacite` decimal(50,0) NOT NULL,
  `type` varchar(50) COLLATE utf8_bin NOT NULL,
  `lieu` varchar(50) COLLATE utf8_bin NOT NULL,
  `adresse` varchar(50) COLLATE utf8_bin NOT NULL,
  `cible` varchar(50) COLLATE utf8_bin NOT NULL,
  `prix` decimal(50,0) NOT NULL,
  `description` varchar(50) COLLATE utf8_bin NOT NULL,
  `sujet` varchar(50) COLLATE utf8_bin NOT NULL,
  `programme` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `sessform`
--

INSERT INTO `sessform` (`idSess`, `date_Debut`, `date_Fin`, `date_LimiteInscription`, `capacite`, `type`, `lieu`, `adresse`, `cible`, `prix`, `description`, `sujet`, `programme`) VALUES
(1, '2019-12-04', '2019-12-31', '2019-12-30', '17', 'mobile', 'Menzah', 'Avenue De La Liberté, Menzah 55', '23', '56', 'excellente', 'sujet app mobile', 'Nivea 1'),
(2, '2019-12-11', '2020-01-16', '2019-12-31', '87', 'web', 'tunis', 'Avenue77 De La Liberté', '70', '55', 'excellente', 'suijet app web', 'Nivea 1'),
(3, '2019-12-04', '2020-01-31', '2020-01-23', '23', 'BI', 'gomycode', 'AvenueMenzah 55', 'tunis', '400', 'excellente', 'sujet BI', 'Nivea 1'),
(4, '2019-12-21', '2020-02-21', '2020-01-31', '33', 'data scince', 'tunis', 'n8 AvenueMenzah 55', '26n8', '700', 'excellente', 'suijet data', 'Nivea 1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
