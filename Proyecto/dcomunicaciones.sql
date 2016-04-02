-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-04-2016 a las 21:22:46
-- Versión del servidor: 5.6.24
-- Versión de PHP: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `dcomunicaciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accesorios`
--

CREATE TABLE IF NOT EXISTS `accesorios` (
  `id_accesorio` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `id_tipoacc` int(11) NOT NULL,
  `valor` int(11) NOT NULL,
  `referencia` varchar(100) NOT NULL,
  `logo` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `accesorios`
--

INSERT INTO `accesorios` (`id_accesorio`, `nombre`, `id_tipoacc`, `valor`, `referencia`, `logo`) VALUES
(0, '', 0, 0, '', NULL),
(1, 'Samsung', 1, 10000, 'E5', NULL),
(2, 'Samsung', 1, 10000, 'J5', NULL),
(3, 'Samsung', 1, 10000, 'J7', NULL),
(4, 'Samsung', 1, 10000, 'S6', NULL),
(5, 'Samsung', 1, 10000, 'A5', NULL),
(6, 'Samsung', 1, 10000, 'grand neo', NULL),
(7, 'Samsung', 1, 10000, 'J1 Ace', NULL),
(8, 'samsung', 1, 10000, 'gran prime', NULL),
(9, 'Samsung', 1, 10000, 'core2', NULL),
(10, 'Samsung', 1, 20000, 'ace4', NULL),
(11, 'Samsung', 1, 10000, 'J1', NULL),
(12, 'Samsung', 1, 10000, 'J2', NULL),
(13, 'alcatel', 1, 10000, 'C7', NULL),
(14, 'alcatel', 1, 10000, 'PIXIS-3', NULL),
(15, 'alcatel', 1, 10000, 'aidolx', NULL),
(16, 'alcatel', 1, 10000, 'Aidol mini', NULL),
(17, 'huawei', 1, 10000, 'P8', NULL),
(18, 'Huawei', 1, 10000, 'G510', NULL),
(19, 'huawei', 1, 10000, 'Y520', NULL),
(20, 'Huawei', 1, 10000, 'Y730', NULL),
(21, 'huawei', 1, 10000, 'Y360', NULL),
(22, 'motorola', 1, 10000, 'G', NULL),
(23, 'Motorola', 1, 10000, 'G2', NULL),
(24, 'motorola', 1, 10000, 'G3', NULL),
(25, 'azumi', 1, 10000, 'A50C', NULL),
(26, 'azumi', 1, 10000, 'A35C', NULL),
(27, 'sony ericson', 1, 10000, 'E4', NULL),
(28, 'sony ericson', 1, 10000, 'M4', NULL),
(29, 'sonyericson', 1, 10000, 'Z1', NULL),
(30, 'sony ericson', 1, 10000, 'Z2', NULL),
(31, 'Samsung', 2, 8000, 'V8', NULL),
(32, 'samsung', 2, 20000, 's6', NULL),
(33, 'Motorola', 2, 8000, 'g2', NULL),
(34, 'motorola', 2, 20000, 'original', NULL),
(35, 'nokia', 2, 8000, '6101', NULL),
(36, 'nokia', 2, 8000, '1100', NULL),
(37, 'iphone', 2, 15000, 'iphone6', NULL),
(38, 'iphone', 2, 60000, 'original', NULL),
(39, 'Samsung', 2, 60000, 'original', NULL),
(40, 'Samsung', 3, 20000, 's6', NULL),
(41, 'iphone', 3, 15000, '4s', NULL),
(42, 'iphone', 4, 20000, 'iphone', NULL),
(43, 'Samsung', 4, 20000, 's6', NULL),
(44, 'power bank', 5, 20000, '4800mah', NULL),
(45, 'power bank', 5, 12000, '2600 mah', NULL),
(46, 'power bank', 5, 15000, '2600mah', NULL),
(47, 'power bank', 5, 65000, '15000 mah', NULL),
(48, 'power bank', 5, 65000, '11000mah', NULL),
(49, 'power bank ', 5, 50000, '12000mah', NULL),
(50, 'deademas', 6, 20000, 'RM-6448', NULL),
(51, 'deadema', 6, 38000, 'MRH-8809', NULL),
(52, 'deadema', 6, 450000, 'NIA-X2', NULL),
(53, 'deadema', 6, 15000, 'SPORTS ', NULL),
(54, 'deadema', 6, 45000, 'bluethoo', NULL),
(55, 'parlante', 7, 27000, 'parlantes', NULL),
(56, 'parlantes', 7, 45000, 'bluethoo', NULL),
(57, 'parlantes', 7, 70000, 'MS_18', NULL),
(58, 'parlante', 7, 60000, 'JIDA-T1', NULL),
(59, 'parlantes', 7, 200000, 'PHOENIK', NULL),
(60, 'parlantes', 7, 170000, 'PHOENIK', NULL),
(61, 'parlantes', 7, 55000, 'BT807L', NULL),
(62, 'parlante', 7, 55000, 'BT06', NULL),
(63, 'parlantes', 7, 4000, 'HY-BT78', NULL),
(64, 'parlante', 7, 45000, '818-4', NULL),
(65, 'parlantes', 7, 50000, 'WS-Y66B', NULL),
(66, 'parlante', 7, 60000, 'A-52', NULL),
(67, 'parlantes', 7, 45000, 'WS-136', NULL),
(68, 'parlante', 7, 40000, 'HY-BT75', NULL),
(69, 'teclado', 8, 27000, 'genius', NULL),
(70, 'parlantes 2,1', 7, 200000, '49W-R.M.S', NULL),
(71, 'parlante-5.1', 7, 270000, '6500W-P.M.P.O', NULL),
(72, 'mause', 8, 15000, 'M-614', NULL),
(73, 'mause', 8, 25000, 'NS-6000', NULL),
(74, 'camara', 8, 22000, 'TP-988', NULL),
(75, 'camara', 8, 22000, 'V-06', NULL),
(76, 'deademas', 8, 20000, 'HS-02B', NULL),
(77, 'deadema', 8, 25000, 'GS-A820MV', NULL),
(78, 'deademas', 8, 15000, 'MD-24', NULL),
(79, 'parlante', 8, 37000, 'WB-075', NULL),
(80, 'parlantes', 8, 27000, 'SP-U115', NULL),
(81, 'parlante', 8, 45000, 'SP-003', NULL),
(82, 'parlante', 8, 25000, 'ODS-813', NULL),
(83, 'parlantes', 8, 27000, 'SP-320', NULL),
(84, 'parlantes', 8, 35000, 'UP-420', NULL),
(85, 'parlantes', 8, 35000, 'UP-430', NULL),
(86, 'parlante', 8, 28000, 'M1', NULL),
(87, 'parlantes', 8, 37000, 'UP-815', NULL),
(88, 'USB INALAMBRICA', 8, 35000, 'TL-WN723N', NULL),
(89, 'cable HDMI', 8, 200000, 'HD-25P', NULL),
(90, 'cable HDMI', 8, 12000, '1.8 MTS', NULL),
(91, 'cable HDMI', 8, 25000, 'HE20HF', NULL),
(92, 'CARGADORES PC', 8, 50000, 'H-18.5V', NULL),
(93, 'cable', 8, 15000, 'USB-4P', NULL),
(94, 'cable HDMI', 8, 10000, 'WCR-238', NULL),
(95, 'cable audio', 8, 15000, 'DX-4042', NULL),
(96, 'cable  audio', 8, 15000, 'RCA-2X1', NULL),
(97, 'cable ', 8, 10000, 'V-275', NULL),
(98, 'AC adaptador', 8, 20000, 'P-S-VI-TA', NULL),
(99, 'Cable USB PSP', 8, 20000, 'PSP-N1000', NULL),
(100, 'AC - PSP GO', 8, 20000, 'PSP-N100O', NULL),
(101, 'AC adaptador ', 8, 25000, 'PSP -2000', NULL),
(102, 'cable', 8, 20000, 'X-BOX', NULL),
(103, 'camara ', 8, 340000, 'HD-1080P', NULL),
(104, 'camara', 8, 240000, 'U-GP-01', NULL),
(105, 'control para celular', 8, 95000, 'TI-582', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `celulares`
--

CREATE TABLE IF NOT EXISTS `celulares` (
  `id_celulares` int(11) NOT NULL,
  `id_marcacel` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `tamano` varchar(40) NOT NULL,
  `procesador` varchar(40) NOT NULL,
  `mem_interna` varchar(20) NOT NULL,
  `camara` varchar(40) NOT NULL,
  `sistema_operativo` varchar(40) NOT NULL,
  `valor` int(11) NOT NULL,
  `logo` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `celulares`
--

INSERT INTO `celulares` (`id_celulares`, `id_marcacel`, `nombre`, `tamano`, `procesador`, `mem_interna`, `camara`, `sistema_operativo`, `valor`, `logo`) VALUES
(1, 1, 'J1', '4.3-pulgadas', 'Dual-Core', '512 MB de RAM-4GB de', 'principal de 5MPX con Flashled- frontal ', 'androi', 450000, NULL),
(2, 1, 'J5', '5"', 'quad - core', '1.5 GB de Ram - 16 G', 'frontal de 5MPX - 13 MPX', 'android 5,1', 790000, NULL),
(3, 1, 'J7', '5.5', 'octa - core', '16GB de almacenamien', 'frontal de 5MPX con flash - 13 MPX princ', 'android', 986900, NULL),
(4, 1, 'grand neo plus', '5"', 'quad -  core', '1GB de Ram -  8GB al', '5MPX', 'android', 570000, NULL),
(5, 1, 'core prime', '4.5"', 'quad - core', '1GB de Ram - 8GB de ', '5MPX con flash - 2MPX frontal', 'android 4.4', 493900, NULL),
(6, 1, 'core 2', '4.5', 'quad - core', '768 MB de Ram - 4GB ', '5 MPX y frontal VGA', 'android', 356900, NULL),
(7, 2, 'G play mini', '5.5"', 'octa - core', '2GB de Ram - 8GB de ', '13 mpx posteriorl_5mpx frontal', 'android 4.4', 887900, NULL),
(8, 2, 'G 730', '5.5"', 'quad - core', '1GB de Ram - 4GB de ', '5 MPX y frontal de 0.3 MPX', 'android de 4.2', 454900, NULL),
(9, 2, 'y 625', '5"', 'MSM 8212m', '1GB de Ram - 4GB de ', '8 MPX - frontal de 2 MPX', 'android de 4.4', 433900, NULL),
(10, 2, 'p8 LTE', '1280* 720 HD', 'ocho nucleos', '2GB de Ram - 16 GB d', '13 MPX - 5MPX frontal', 'android de 5.0', 1504900, NULL),
(11, 3, '6', '4.7"', 'A8', '16GB almacenamiento', '8 MPX- frontal 1.2 PMX', 'apple', 1987900, NULL),
(12, 3, '6s', '5.5"', 'A8', '16GB almacenamiento', '8 MPX - frontal 1.2 MPX', 'apple', 2995900, NULL),
(13, 4, 'moto g seg generacion ', '5"', 'quad - core', '8GB almacenamiento', '8MPX - frontal 2MPX ', 'android', 499000, NULL),
(14, 4, 'moto g 3ra generacion', '5"', 'quad - core', '16 GB de Ram - 8GB a', '13 MPX - 5 MPX frontal', 'android 5.1', 587000, NULL),
(15, 5, 'tablet', '7"', 'Dual-Core', '8gb', '0.3 frontal - 2 MPX', 'android', 170000, NULL),
(16, 5, 'tablet', '7"', 'quad - core', '8gb', '2 MPX', 'android', 170000, NULL),
(17, 5, 'tablet', '7"', 'Dual-Core', '8gb', '0.2PMX', 'android', 170000, NULL),
(18, 5, 'tablet', '7"', 'quad core', '8Gb', '0.3 PMX', 'quad core', 170000, NULL),
(19, 5, 'tablet', '7"', 'quad - core', '8gb', '0.3 MPX', 'android', 190000, NULL),
(20, 1, 'A7', '5.5"', 'octa - core', 'Ram 3GB - almacenami', '13 MPX - 5 MPX frontal', 'android 5.1', 1985, NULL),
(21, 1, 'A5', '5.2"', 'octa - core', 'Ram 2GB - almacenami', '13 MPX - 5 MPX frontal', 'android 5.1', 1769, NULL),
(22, 1, 'A3', '4.7"', 'quad-core 1.5', 'interna de 16GB', '13 MPX - 5 MPX frontal', 'android 5.1', 1269, NULL),
(23, 2, 'Y520', '4,5"', 'Dual-Core 1.3', 'hasta de 32 GB', '5MPX -frontal 0:3MPX', 'android', 319, NULL),
(24, 2, 'Y635', '5"', 'quad-core 1.2', '32GB', '5MPX-frontal 2MPX', 'android', 500, NULL),
(25, 2, 'G7', '5.5"', 'quad-core 1.2', 'Ram 2Gb-Rom 16GB', '13 MPX - 5 MPX frontal', 'android', 887, NULL),
(26, 6, 'A35C', '3.5"', 'Dual-Core', 'Ram 512MB-Rom 4GB', '5MPX-frontal 2MPX', 'android', 174, NULL),
(27, 6, 'A45T', '4.5"', 'Dual-Core 1.3', 'Ram 512MB-Rom 4GB', '8MPX-frontal 2PMX', 'android', 291, NULL),
(28, 6, 'LT50', '5"', 'quad - core 1.0', 'Ram 16GB-Rom 8GB', '12MPX -frontal 5PMX', 'android', 382, NULL),
(29, 6, 'SPEED 5.5', '5.5"', 'quad - core 1.0', '32GB', '13 MPX - 5 MPX frontal', 'android 5.1', 543, NULL),
(30, 7, 'POP3  5"', '5"', 'mediatek', 'Ram 1GB -Rom 8GB', '8MPX-frontal 8PMX', 'android ', 358, NULL),
(31, 7, 'POP 3 (5.5")', '5.5"', 'quad - core 1.1', 'Ram 1GB- Rom 8GB', '13 MPX - 8 MPX frontal', 'android 5.1', 547, NULL),
(32, 7, 'IDOL 3 5.5"', '5.5"', 'quad-core 1.5', 'Ram 2GB - almacenami', '13 MPX - 8 MPX frontal', 'android', 1196, NULL),
(33, 7, 'PIXI 3 (4")', '4"', 'Dual-Core', 'Ram 512MB-Rom 4GB', '8 MPX- frontal 1.3MPX', 'android', 243, NULL),
(34, 7, 'PIXI 3 (3.5")', '3.5"', 'quad - core', 'Ram 512MB-Rom 4GB', '5MPX-frontal 1.3MPX', 'android 4.4', 194, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca_celular`
--

CREATE TABLE IF NOT EXISTS `marca_celular` (
  `id_marcacel` int(11) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `logo` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `marca_celular`
--

INSERT INTO `marca_celular` (`id_marcacel`, `nombre`, `logo`) VALUES
(1, 'Samsung', NULL),
(2, 'Huawei', NULL),
(3, 'iphone', NULL),
(4, 'Motorola', NULL),
(5, 'table', NULL),
(6, 'azumi', NULL),
(7, 'alcatel', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operador`
--

CREATE TABLE IF NOT EXISTS `operador` (
  `id_operador` int(11) NOT NULL,
  `logo` longblob,
  `nombre` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `operador`
--

INSERT INTO `operador` (`id_operador`, `logo`, `nombre`) VALUES
(1, NULL, 'claro'),
(2, NULL, 'movistar'),
(3, NULL, 'tigo'),
(4, NULL, 'virgy');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planes`
--

CREATE TABLE IF NOT EXISTS `planes` (
  `id_plan` int(11) NOT NULL,
  `id_operador` int(11) NOT NULL,
  `tipo_plan` varchar(40) NOT NULL,
  `valor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `planes`
--

INSERT INTO `planes` (`id_plan`, `id_operador`, `tipo_plan`, `valor`) VALUES
(1, 1, 'prepago', 5000),
(2, 2, 'whatsapp ', 75000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_accesorio`
--

CREATE TABLE IF NOT EXISTS `tipo_accesorio` (
  `id_tipoacc` int(11) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `logo` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipo_accesorio`
--

INSERT INTO `tipo_accesorio` (`id_tipoacc`, `tipo`, `logo`) VALUES
(0, '', NULL),
(1, 'estuches', NULL),
(2, 'cargadores', NULL),
(3, 'cable de datos', NULL),
(4, 'manos libre', NULL),
(5, 'banco de carga', NULL),
(6, 'deademas', NULL),
(7, 'parlantes', NULL),
(8, 'accesorios para computador', NULL),
(9, 'glass', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accesorios`
--
ALTER TABLE `accesorios`
  ADD PRIMARY KEY (`id_accesorio`);

--
-- Indices de la tabla `celulares`
--
ALTER TABLE `celulares`
  ADD PRIMARY KEY (`id_celulares`);

--
-- Indices de la tabla `marca_celular`
--
ALTER TABLE `marca_celular`
  ADD PRIMARY KEY (`id_marcacel`);

--
-- Indices de la tabla `operador`
--
ALTER TABLE `operador`
  ADD PRIMARY KEY (`id_operador`);

--
-- Indices de la tabla `planes`
--
ALTER TABLE `planes`
  ADD PRIMARY KEY (`id_plan`);

--
-- Indices de la tabla `tipo_accesorio`
--
ALTER TABLE `tipo_accesorio`
  ADD PRIMARY KEY (`id_tipoacc`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
