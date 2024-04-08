-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 30-03-2021 a las 02:14:25
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `av81`
--
CREATE DATABASE IF NOT EXISTS `av81` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
USE `av81`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brandCustomer`
--

DROP TABLE IF EXISTS `brandCustomer`;
CREATE TABLE IF NOT EXISTS `brandCustomer` (
  `customerId` varchar(9) COLLATE utf8_spanish2_ci NOT NULL,
  `brandId` int(11) NOT NULL,
  PRIMARY KEY (`customerId`,`brandId`),
  KEY `brandId` (`brandId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `brandId` int(11) NOT NULL AUTO_INCREMENT,
  `brandName` varchar(255) COLLATE utf8_spanish2_ci NOT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`brandId`, `brandName`) VALUES
(1, 'JLR'),
(2, 'Daimler'),
(3, 'Volvo'),
(4, 'Porsche'),
(5, 'Ford'),
(6, 'Smart'),
(7, 'Renault'),
(8, 'General Motors'),
(9, 'Cadillac'),
(10, 'Dacia'),
(11, 'Citroën'),
(12, 'Infiniti'),
(13, 'Daihatsu'),
(14, 'Vauxhall'),
(15, 'MINI'),
(16, 'Dodge'),
(17, 'Audi'),
(18, 'Seat'),
(19, 'Dongfeng Motor'),
(20, 'Honda'),
(21, 'FAW'),
(22, 'Lexus'),
(23, 'BMW'),
(24, 'Isuzu'),
(25, 'Mitsubishi Motors'),
(26, 'Chevrolet'),
(27, 'Lincoln'),
(28, 'Subaru'),
(29, 'Maruti Suzuki'),
(30, 'Toyota'),
(31, 'Mercedes-Benz'),
(32, 'Skoda'),
(33, 'Acura'),
(34, 'Suzuki'),
(35, 'Buick'),
(36, 'Volkswagen');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `customerId` varchar(9) COLLATE utf8_spanish2_ci NOT NULL,
  `customerName` varchar(255) COLLATE utf8_spanish2_ci DEFAULT NULL,
  PRIMARY KEY (`customerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `customers`
--

INSERT INTO `customers` (`customerId`, `customerName`) VALUES
('A06606027', ''),
('A06676524', ''),
('A18510564', ''),
('A70047854', ''),
('A86781011', ''),
('A98236477', ''),
('B07942973', ''),
('B16563158', ''),
('B42754725', ''),
('B62595461', ''),
('B94560745', ''),
('B97833411', ''),
('C24257748', ''),
('C35588633', ''),
('C64388813', ''),
('C79095344', ''),
('D37515272', ''),
('E06252385', ''),
('E17559817', ''),
('E18289854', ''),
('E38436996', ''),
('E46634590', ''),
('E92753527', ''),
('F45296629', ''),
('F65750384', ''),
('F89339408', ''),
('G76365657', ''),
('H30570648', ''),
('H45550097', ''),
('H60200540', ''),
('H63421895', ''),
('H79929125', ''),
('H93484439', ''),
('I12905885', ''),
('I44715358', ''),
('I93616871', ''),
('J11025890', ''),
('J20180127', ''),
('J54529981', ''),
('J67233521', ''),
('J70461114', ''),
('J73728763', ''),
('J74901183', ''),
('K10717747', ''),
('L19600553', ''),
('L33665530', ''),
('L38968359', ''),
('L41811869', ''),
('L46038456', ''),
('L48275007', ''),
('L62193142', ''),
('L73944604', ''),
('L81482490', ''),
('M26282020', ''),
('M37094229', ''),
('M72349718', ''),
('N59368859', ''),
('N92295869', ''),
('O52400829', ''),
('O72516195', ''),
('O75789015', ''),
('O90072602', ''),
('O93716553', ''),
('P70397187', ''),
('Q09192067', ''),
('Q69762010', ''),
('Q70542755', ''),
('R17311676', ''),
('R44973690', ''),
('R49032987', ''),
('R82375926', ''),
('R99064468', ''),
('S00043269', ''),
('S20921270', ''),
('S68899832', ''),
('T06780676', ''),
('T16863582', ''),
('T26948372', ''),
('T85465557', ''),
('U14603433', ''),
('U18347436', ''),
('U80291682', ''),
('U82737936', ''),
('V13535838', ''),
('V44075068', ''),
('W13110814', ''),
('X03301186', ''),
('X25395613', ''),
('X41855452', ''),
('X73606846', ''),
('X99742598', ''),
('Y07487911', ''),
('Y09920700', ''),
('Y21412246', ''),
('Y27595996', ''),
('Y29541075', ''),
('Y53040370', ''),
('Y68358585', ''),
('Z17833157', ''),
('Z27692767', '');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `brandCustomer`
--
ALTER TABLE `brandCustomer`
  ADD CONSTRAINT `brandCustomer_ibfk_1` FOREIGN KEY (`brandId`) REFERENCES `brands` (`brandId`),
  ADD CONSTRAINT `brandCustomer_ibfk_2` FOREIGN KEY (`customerId`) REFERENCES `customers` (`customerId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
