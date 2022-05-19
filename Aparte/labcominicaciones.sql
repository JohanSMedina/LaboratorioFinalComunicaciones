-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-05-2022 a las 07:31:08
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `labcominicaciones`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pines`
--

CREATE TABLE `pines` (
  `uid` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `dulce` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `pines`
--

INSERT INTO `pines` (`uid`, `dulce`) VALUES
('09 3A 11 A4', 'pie'),
('09 F4 E9 93', 'helado'),
('19 60 05 A4', 'galleta'),
('19 E9 E0 93', 'dona'),
('29 9B D3 94', 'helado'),
('29 EA E2 93', 'pie'),
('39 4A EF 93', 'pie'),
('49 09 E0 94', 'chocolatina'),
('49 14 E3 93', 'turron'),
('49 15 EA 93', 'galleta'),
('49 79 08 94', 'chocolatina'),
('59 14 EF A2', 'chocolatina'),
('59 F9 EE 93', 'helado'),
('69 05 DF 94', 'turron'),
('79 26 D8 94', 'chocolatina'),
('79 B9 DD 94', 'dona'),
('79 D2 DE 94', 'turron'),
('99 38 E9 93', 'chocolatina'),
('99 C8 DC 94', 'dona'),
('A9 7B DC 94', 'pie'),
('B9 13 E3 93', 'dona'),
('C9 02 DF 94', 'helado'),
('C9 85 D5 94', 'dona'),
('C9 C8 D5 94', 'turron'),
('D9 1D E8 93', 'galleta'),
('D9 26 D8 94', 'turron'),
('D9 2F E1 93', 'galleta'),
('F9 AE 40 94', 'galleta'),
('F9 DC EE A2', 'helado'),
('F9 F8 0E 94', 'pie');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `precios_cantidad`
--

CREATE TABLE `precios_cantidad` (
  `dulce` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `precio` int(255) NOT NULL,
  `cantidad` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `precios_cantidad`
--

INSERT INTO `precios_cantidad` (`dulce`, `precio`, `cantidad`) VALUES
('chocolatina', 300, 50),
('dona', 2000, 50),
('galleta', 1500, 50),
('helado', 1000, 50),
('pie', 5000, 50),
('turron', 2500, 50);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetas`
--

CREATE TABLE `tarjetas` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `uid` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `saldo` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tarjetas`
--

INSERT INTO `tarjetas` (`ID`, `nombre`, `uid`, `saldo`) VALUES
(1, 'Medina', '49 09 E0 94', 10000000),
(2, 'Troches', '49 79 08 94', 10000000),
(3, 'Oviedo', '99 38 E9 93', 10000000);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pines`
--
ALTER TABLE `pines`
  ADD PRIMARY KEY (`uid`);

--
-- Indices de la tabla `precios_cantidad`
--
ALTER TABLE `precios_cantidad`
  ADD PRIMARY KEY (`dulce`);

--
-- Indices de la tabla `tarjetas`
--
ALTER TABLE `tarjetas`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tarjetas`
--
ALTER TABLE `tarjetas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
