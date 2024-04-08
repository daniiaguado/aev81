-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 30-03-2021 a las 02:17:29
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
-- Base de datos: `av81_con_datos`
--
CREATE DATABASE IF NOT EXISTS `av81_con_datos` DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish2_ci;
USE `av81_con_datos`;

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

--
-- Volcado de datos para la tabla `brandCustomer`
--

INSERT INTO `brandCustomer` (`customerId`, `brandId`) VALUES
('A06676524', 1),
('A06676524', 7),
('A18510564', 2),
('A70047854', 3),
('A70047854', 10),
('A70047854', 29),
('A98236477', 4),
('A98236477', 15),
('A98236477', 17),
('B16563158', 5),
('B42754725', 6),
('B42754725', 29),
('B62595461', 7),
('B62595461', 26),
('B94560745', 6),
('C35588633', 8),
('C35588633', 17),
('C35588633', 20),
('C64388813', 9),
('C64388813', 16),
('C64388813', 18),
('C79095344', 10),
('D37515272', 3),
('E06252385', 11),
('E17559817', 4),
('E17559817', 12),
('E18289854', 12),
('E18289854', 29),
('E38436996', 11),
('E38436996', 13),
('E46634590', 14),
('E92753527', 5),
('E92753527', 15),
('F65750384', 12),
('F65750384', 30),
('F89339408', 3),
('F89339408', 16),
('G76365657', 16),
('G76365657', 17),
('H30570648', 18),
('H63421895', 10),
('H63421895', 19),
('H79929125', 20),
('H93484439', 19),
('I12905885', 1),
('I12905885', 21),
('J11025890', 22),
('J20180127', 23),
('J54529981', 24),
('J67233521', 20),
('J67233521', 23),
('J70461114', 5),
('J70461114', 25),
('J73728763', 12),
('J74901183', 18),
('J74901183', 26),
('J74901183', 27),
('L38968359', 6),
('L38968359', 27),
('L41811869', 27),
('L41811869', 28),
('L46038456', 26),
('L46038456', 27),
('L46038456', 29),
('L48275007', 14),
('L62193142', 23),
('L73944604', 9),
('L73944604', 29),
('M26282020', 8),
('M72349718', 6),
('M72349718', 16),
('N92295869', 19),
('N92295869', 33),
('O72516195', 12),
('O72516195', 13),
('O72516195', 30),
('O75789015', 20),
('O75789015', 21),
('O75789015', 30),
('O90072602', 5),
('O90072602', 28),
('O93716553', 6),
('O93716553', 31),
('P70397187', 12),
('P70397187', 24),
('P70397187', 33),
('Q09192067', 3),
('Q69762010', 25),
('R17311676', 11),
('R17311676', 23),
('R44973690', 30),
('R44973690', 32),
('R82375926', 15),
('R82375926', 16),
('S00043269', 9),
('S00043269', 14),
('S00043269', 27),
('S20921270', 19),
('S20921270', 20),
('S20921270', 33),
('T06780676', 34),
('T26948372', 17),
('U82737936', 8),
('U82737936', 33),
('U82737936', 35),
('V13535838', 2),
('V44075068', 19),
('V44075068', 31),
('W13110814', 20),
('W13110814', 29),
('W13110814', 33),
('X03301186', 11),
('X03301186', 19),
('X03301186', 20),
('X25395613', 5),
('X25395613', 19),
('X73606846', 4),
('X99742598', 16),
('X99742598', 24),
('X99742598', 35),
('Y07487911', 26),
('Y21412246', 20),
('Y21412246', 25),
('Y27595996', 5),
('Y29541075', 2),
('Y53040370', 6),
('Y53040370', 30),
('Y53040370', 33),
('Z17833157', 10),
('Z17833157', 29),
('Z17833157', 36);

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
('A06606027', 'Phasellus Vitae Institute'),
('A06676524', 'Sed Eu LLC'),
('A18510564', 'Et Foundation'),
('A70047854', 'Natoque Company'),
('A86781011', 'Interdum Ligula Eu Institute'),
('A98236477', 'Sit Amet Lorem Associates'),
('B07942973', 'Aliquam Gravida Ltd'),
('B16563158', 'Ac Orci Corp.'),
('B42754725', 'Tincidunt LLC'),
('B62595461', 'Consequat Dolor Vitae Limited'),
('B94560745', 'Ultrices A Auctor LLP'),
('B97833411', 'Eu Foundation'),
('C24257748', 'Ipsum Leo Consulting'),
('C35588633', 'Dignissim Tempor Industries'),
('C64388813', 'Sed Ltd'),
('C79095344', 'Pede Malesuada LLC'),
('D37515272', 'Non Cursus Non Corporation'),
('E06252385', 'Curae; Donec Limited'),
('E17559817', 'Tincidunt Corporation'),
('E18289854', 'Elit Erat Vitae PC'),
('E38436996', 'Duis Ltd'),
('E46634590', 'Eu Dolor Egestas Limited'),
('E92753527', 'Lectus Industries'),
('F45296629', 'Cursus Limited'),
('F65750384', 'Proin Associates'),
('F89339408', 'Ut Semper Consulting'),
('G76365657', 'Dignissim Maecenas Inc.'),
('H30570648', 'Neque Sed Sem Institute'),
('H45550097', 'Massa Ltd'),
('H60200540', 'Curabitur Ltd'),
('H63421895', 'Mi Lacinia Mattis Company'),
('H79929125', 'Ac Ltd'),
('H93484439', 'Natoque Penatibus Et Company'),
('I12905885', 'Nibh Dolor Nonummy Foundation'),
('I44715358', 'Vivamus Limited'),
('I93616871', 'Et Rutrum Institute'),
('J11025890', 'Ac Corporation'),
('J20180127', 'Nunc Corporation'),
('J54529981', 'Et Commodo Associates'),
('J67233521', 'Adipiscing Fringilla Porttitor Foundation'),
('J70461114', 'Nulla At Sem Inc.'),
('J73728763', 'Euismod Corporation'),
('J74901183', 'Tristique Aliquet Phasellus Industries'),
('K10717747', 'Egestas Institute'),
('L19600553', 'A Neque Corporation'),
('L33665530', 'Aliquam Iaculis Corporation'),
('L38968359', 'Malesuada LLP'),
('L41811869', 'Nunc Commodo Auctor Incorporated'),
('L46038456', 'Ante Dictum Corporation'),
('L48275007', 'Hendrerit Company'),
('L62193142', 'Mattis Velit Justo Company'),
('L73944604', 'Mi Aliquam Incorporated'),
('L81482490', 'Quam Vel Inc.'),
('M26282020', 'Aliquam Auctor Velit Inc.'),
('M37094229', 'In Ltd'),
('M72349718', 'Metus In Nec Institute'),
('N59368859', 'A Malesuada Id LLC'),
('N92295869', 'Congue PC'),
('O52400829', 'Placerat Eget Corporation'),
('O72516195', 'Nisi Cum Consulting'),
('O75789015', 'In Tincidunt Institute'),
('O90072602', 'Cursus Vestibulum Mauris LLC'),
('O93716553', 'Proin LLC'),
('P70397187', 'Nec Ante Blandit Institute'),
('Q09192067', 'Ultricies Dignissim Company'),
('Q69762010', 'Consectetuer Cursus Associates'),
('Q70542755', 'Ipsum Inc.'),
('R17311676', 'Magna Sed Ltd'),
('R44973690', 'Est Arcu PC'),
('R49032987', 'Felis Eget Varius LLP'),
('R82375926', 'Non Ltd'),
('R99064468', 'Nec Corporation'),
('S00043269', 'Sed Ltd'),
('S20921270', 'Suspendisse Non Industries'),
('S68899832', 'Ante Dictum Institute'),
('T06780676', 'Proin Velit Consulting'),
('T16863582', 'Aenean Eget PC'),
('T26948372', 'Justo Proin Foundation'),
('T85465557', 'Magnis Dis Parturient Incorporated'),
('U14603433', 'Laoreet Ipsum LLC'),
('U18347436', 'Cum Sociis Incorporated'),
('U80291682', 'Et Risus Quisque Consulting'),
('U82737936', 'In Tempus PC'),
('V13535838', 'Vestibulum Ante Ipsum Limited'),
('V44075068', 'Purus Maecenas Foundation'),
('W13110814', 'Nisi Aenean Ltd'),
('X03301186', 'Aliquam Vulputate Foundation'),
('X25395613', 'Nunc Foundation'),
('X41855452', 'Nec Tempus Mauris Foundation'),
('X73606846', 'A LLP'),
('X99742598', 'Eu Inc.'),
('Y07487911', 'Maecenas Malesuada Corp.'),
('Y09920700', 'Aliquam Rutrum Lorem PC'),
('Y21412246', 'Et Eros Inc.'),
('Y27595996', 'Arcu Institute'),
('Y29541075', 'Cursus A Enim Company'),
('Y53040370', 'Scelerisque Company'),
('Y68358585', 'Nec Mauris Blandit Limited'),
('Z17833157', 'Non Justo Proin LLC'),
('Z27692767', 'Quis Diam Foundation');

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
