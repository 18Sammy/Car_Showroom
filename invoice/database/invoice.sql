-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.1.16-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for invoice
CREATE DATABASE IF NOT EXISTS `invoice` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `invoice`;

-- Dumping structure for table invoice.admininfo
CREATE TABLE IF NOT EXISTS `admininfo` (
  `adminid` int(11) DEFAULT NULL,
  `adminname` varchar(50) DEFAULT NULL,
  `adminpass` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table invoice.admininfo: ~0 rows (approximately)
/*!40000 ALTER TABLE `admininfo` DISABLE KEYS */;
INSERT INTO `admininfo` (`adminid`, `adminname`, `adminpass`) VALUES
	(123, 'admin', 'admin');
/*!40000 ALTER TABLE `admininfo` ENABLE KEYS */;

-- Dumping structure for table invoice.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `cmpname` varchar(50) NOT NULL DEFAULT '0',
  `cname` varchar(50) NOT NULL DEFAULT '0',
  `cpnumber` varchar(50) NOT NULL DEFAULT '0',
  `emailid` varchar(50) NOT NULL DEFAULT '0',
  `add` varchar(50) NOT NULL DEFAULT '0',
  `city` varchar(50) NOT NULL DEFAULT '0',
  `state` varchar(50) NOT NULL DEFAULT '0',
  `country` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table invoice.customer: ~2 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`cmpname`, `cname`, `cpnumber`, `emailid`, `add`, `city`, `state`, `country`) VALUES
	('Muzaffarnagar PVT LTD', 'Anita', '7351636965', 'anita@gmail.com', 'Purbaliyan', 'Muzaffarnagar', 'UP', 'India'),
	('Sharanpur PVT LTD', 'Mahi', '420', 'mahi@gmail.com', 'Almashpur', 'Sharanpur', 'UP', 'India');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table invoice.invoice
CREATE TABLE IF NOT EXISTS `invoice` (
  `invnumber` int(11) DEFAULT NULL,
  `invdate` varchar(50) DEFAULT NULL,
  `invcust` varchar(50) DEFAULT NULL,
  `item` varchar(50) DEFAULT NULL,
  `quant` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `rat` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `dis` int(11) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `baltopay` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table invoice.invoice: ~1 rows (approximately)
/*!40000 ALTER TABLE `invoice` DISABLE KEYS */;
INSERT INTO `invoice` (`invnumber`, `invdate`, `invcust`, `item`, `quant`, `price`, `rat`, `tax`, `dis`, `subtotal`, `baltopay`, `status`) VALUES
	(894720, '27/02/2017', 'Muzaffarnagar PVT. LTD', 'a', 2, 100, 5, 6, 2, 200, 198, 'Paid'),
	(1904990, '27/02/2017', 'Sharanpur PVT LTD', 'pen', 3, 20, 5, 6, 1, 60, 59, 'Paid');
/*!40000 ALTER TABLE `invoice` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
