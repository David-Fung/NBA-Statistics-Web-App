-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 07, 2020 at 07:30 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `project_table`
--

DROP TABLE IF EXISTS `project_table`;
CREATE TABLE IF NOT EXISTS `project_table` (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `Team` varchar(100) NOT NULL,
  `YearFounded` int(100) NOT NULL,
  `NBAWins` int(100) NOT NULL,
  `YearOfWins` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_table`
--

INSERT INTO `project_table` (`ID`, `Team`, `YearFounded`, `NBAWins`, `YearOfWins`) VALUES
(1, 'ATLANTA HAWKS', 1949, 1, '1958'),
(2, 'BOSTON CELTICS', 1946, 17, '1957,1959,1960,1961,1962,1963,1964,1965,1966,1968,1969,1974,1976,1981,1984,1986,2008'),
(3, 'CHARLOTTE BOBCATS', 2004, 0, ''),
(4, 'CHICAGO BULLS', 1966, 6, '1991,1992,1993,1996,1997,1998'),
(5, 'CLEVELAND CAVALIERS', 1970, 1, '2016'),
(6, 'DALLAS MAVERICKS', 1980, 1, '2011'),
(7, 'DENVER NUGGETS', 1976, 0, ''),
(8, 'DETROIT PISTONS', 1948, 3, '1989,1990,2004'),
(9, 'GOLDEN STATE WARRIORS', 1946, 6, '1947,1956,1975,2015,2017,2018'),
(10, 'HOUSTON ROCKETS', 1967, 2, '1994,1995'),
(11, 'INDIANA PACERS', 1976, 0, ''),
(12, 'LOS ANGELES CLIPPERS', 1970, 0, ''),
(13, 'LOS ANGELES LAKERS', 1948, 16, '1949,1950,1952,1953,1954,1972,1980,1982,1985,1987,1988,2000,2001,2002,2009,2010'),
(14, 'MEMPHIS GRIZZLIES', 1995, 0, ''),
(15, 'MIAMI HEAT', 1988, 3, '2006,2012,2013'),
(16, 'MILWAUKEE BUCKS', 1968, 1, '1971'),
(17, 'MINNESOTA TIMBERWOLVES', 1989, 0, ''),
(18, 'NEW JERSEY NETS', 1976, 0, ''),
(19, 'NEW ORLEANS/OKLAHOMA CITY HORNETS', 1988, 0, ''),
(20, 'NEW YORK KNICKERBOCKERS', 1946, 2, '1970,1973'),
(21, 'ORLANDO MAGIC', 1989, 0, ''),
(22, 'PHILADELPHIA 76ERS', 1949, 2, '1967,1983'),
(23, 'PHOENIX SUNS', 1968, 0, ''),
(24, 'PORTLAND TRAILBLAZERS', 1970, 1, '1977'),
(25, 'SACRAMENTO KINGS', 1948, 0, ''),
(26, 'SAN ANTONIO SPURS', 1976, 5, '1999,2003,2005,2007,2014'),
(27, 'SEATTLE SUPERSONICS', 1967, 1, '1979'),
(28, 'SYRACUSE NATIONALS', 1939, 1, '1955'),
(29, 'TORONTO RAPTORS', 1995, 1, '2019'),
(30, 'UTAH JAZZ', 1974, 0, ''),
(31, 'WASHINGTON WIZARDS', 1961, 1, '1978');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
