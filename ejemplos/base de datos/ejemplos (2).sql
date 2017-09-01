-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-05-2016 a las 03:26:28
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ejemplos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE IF NOT EXISTS `clientes` (
`id` int(11) NOT NULL,
  `codigo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nombres` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `dni` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `celular` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `codigo`, `nombres`, `apellidos`, `dni`, `email`, `celular`) VALUES
(1, 'c0001', 'elizabeth', 'sabchez acero', '04959586', 'elisanchez12@hotmail.com', '953458567'),
(2, 'c0002', 'elizabeth', 'sabchez acero', '04959586', 'elisanchez12@hotmail.com', '953458567'),
(3, 'c0003', 'elizabeth', 'paredes mendez', '04959586', 'elisanchez12@hotmail.com', '953458567'),
(4, 'c0004', 'fabia', 'aymer perez', '04959586', 'elisanchez12@hotmail.com', '953458567'),
(5, 'c0005', 'jose', 'perez palaez', '04959586', 'elisanchez12@hotmail.com', '953458567'),
(6, 'c0006', 'carla', 'bustamente caceres', '04959586', 'elisanchez12@hotmail.com', '953458567'),
(7, 'c0007', 'veronica', 'sabchez acero', '04959586', 'elisanchez12@hotmail.com', '953458567'),
(8, 'c0008', 'melisa', 'grondona arias', '04959586', 'elisanchez12@hotmail.com', '953458567'),
(9, 'c0009', 'juan', 'perez portugal', '04959586', 'elisanchez12@hotmal.com', '953458567'),
(10, 'c0010', 'monica', 'saurez lopez', '04959586', 'elisanchez12@hotmail.com', '953458567'),
(11, 'c0011', 'felipe', 'acero manrique', '04959586', 'elisanchez12@hotmail.com', '953458567'),
(12, 'c0012', 'carlos', 'rojas arias', '04959586', 'elisanchez12@hotmail.com', '953458567'),
(13, 'c0013', 'miguel', 'gonzales acero', '04959586', 'elisanchez12@hotmail.com', '953458567'),
(14, 'c0014', 'juan', 'martinez acero', '04959586', 'elisanchez12@hotmail.com', '953458567');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE IF NOT EXISTS `imagenes` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id`, `name`) VALUES
(2, 'imagen1.jpg'),
(3, 'imagen4.jpg'),
(4, 'imagen6.jpg'),
(5, 'imagen2.jpg'),
(6, 'imagen1.jpg'),
(7, 'imagen5.jpg'),
(8, 'imagen5.jpg'),
(9, 'imagen6.jpg'),
(10, 'imagen5.jpg'),
(11, 'imagen6.jpg'),
(12, 'imagen5.jpg'),
(13, 'imagen6.jpg'),
(14, 'imagen1.jpg'),
(15, 'imagen3.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id` int(11) NOT NULL,
  `nombres` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `dni` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `celular` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombres`, `apellidos`, `dni`, `email`, `celular`) VALUES
(1, 'yony brondy', 'mamani fuentes', '45454545', 'yonybrondy17@gmail.com', '934343322'),
(2, 'juan miguel', 'casas gutierrez', '45454545', 'juan@gmail.com', '934343322'),
(3, 'carlos', 'casa manchego', '45454545', 'carlos@gmail.com', '934343322'),
(4, 'adolfo', 'gutierrez caceres', '45454545', 'adolfo@gmail.com', '934343322'),
(5, 'luis carlos', 'casas gutierrez', '45454545', 'lusica12@gmail.com', '934343322'),
(6, 'juio', 'melendez  arapa', '45454545', 'juliom12@gmail.com', '934343322'),
(7, 'jose', 'arana lopez', '45454545', 'josearana13@gmail.com', '934343322'),
(8, 'felipe', 'caicedo morado', '45454545', 'felipe1290@gmail.com', '934343322'),
(9, 'fernando', 'tojas cahuana', '45454545', 'tojasfernando2015@gmail.com', '934343322'),
(10, 'harry', 'zapata sanchez', '45454545', 'ZapataSanchez12@gmail.com', '934343322'),
(11, 'melissa', 'medina chacon', '45454545', 'melissa16_11@gmail.com', '934343322');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
