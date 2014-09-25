-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 25, 2014 at 05:47 PM
-- Server version: 10.0.10-MariaDB-1~precise-log
-- PHP Version: 5.3.10-1ubuntu3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `spyda_grep`
--

-- --------------------------------------------------------

--
-- Table structure for table `Alliances`
--

CREATE TABLE IF NOT EXISTS `Alliances` (
  `id` int(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `points` int(10) NOT NULL,
  `towns` int(15) NOT NULL,
  `members` int(5) NOT NULL,
  `rank` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Conquers`
--

CREATE TABLE IF NOT EXISTS `Conquers` (
  `town_id` int(15) NOT NULL,
  `time` int(11) NOT NULL,
  `new_player_id` int(15) NOT NULL,
  `old_player_id` int(15) NOT NULL,
  `new_ally_id` int(15) NOT NULL,
  `old_ally_id` int(15) NOT NULL,
  `town_points` int(10) NOT NULL,
  PRIMARY KEY (`town_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Ghosts`
--

CREATE TABLE IF NOT EXISTS `Ghosts` (
  `id` int(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `ocean` int(3) NOT NULL,
  `island_x` int(5) NOT NULL,
  `island_y` int(5) NOT NULL,
  `number_on_island` int(5) NOT NULL,
  `points` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Islands`
--

CREATE TABLE IF NOT EXISTS `Islands` (
  `id` int(15) NOT NULL,
  `x` int(5) NOT NULL,
  `y` int(5) NOT NULL,
  `island_type` int(5) NOT NULL,
  `available_towns` int(5) NOT NULL,
  `res_plus` varchar(10) NOT NULL,
  `res_minus` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Players`
--

CREATE TABLE IF NOT EXISTS `Players` (
  `id` int(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `alliance_id` int(15) NOT NULL,
  `points` int(10) NOT NULL,
  `rank` int(15) NOT NULL,
  `towns` int(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Towns`
--

CREATE TABLE IF NOT EXISTS `Towns` (
  `id` int(15) NOT NULL,
  `player_id` int(15) NOT NULL,
  `name` varchar(30) NOT NULL,
  `ocean` int(3) NOT NULL,
  `island_x` int(5) NOT NULL,
  `island_y` int(5) NOT NULL,
  `number_on_island` int(5) NOT NULL,
  `points` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
