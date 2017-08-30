-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-06-2016 a las 21:59:12
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `biblioteca`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE IF NOT EXISTS `libros` (
`id_libro` int(11) NOT NULL,
  `isbn_libro` varchar(50) NOT NULL,
  `titulo_libro` varchar(150) NOT NULL,
  `autor_libro` varchar(150) NOT NULL,
  `publicacion_libro` year(4) NOT NULL,
  `paginas_libro` varchar(50) NOT NULL,
  `ediccion_libro` varchar(100) NOT NULL,
  `idioma_libro` varchar(100) NOT NULL,
  `imagen` varchar(250) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id_libro`, `isbn_libro`, `titulo_libro`, `autor_libro`, `publicacion_libro`, `paginas_libro`, `ediccion_libro`, `idioma_libro`, `imagen`) VALUES
(3, '84-481-4008-7', 'SEGURIDAD PARA EMPRESAS PARTICULARES', 'GONZALO ALVAREZ MARAÃƒâ€˜ON', 2001, '411', 'PRIMERA', 'ESPAÃƒâ€˜OL', ''),
(4, '84-2505-4009-9', 'CREACION DE SIMULACIONES INTERACTIVAS EN JAVA', 'FRANCISCO ESQUEMBRE', 2005, '330', '', 'ESPAÑOL', ''),
(5, '970-15-1100-X', 'METODOLOGIA DE LA PROGRAMAC?N', 'OSVALDO CAIRO BATTISTUTTI', 2006, '464', 'SEGUNDA', 'ESPAÑOL', ''),
(6, '84-481-4623-9', 'SIMULACION PARA LAS CIENCIAS SOCIALES', 'NIGEL GILBERT-KLAUS G. TROITZSCH', 2006, '295', 'SEGUNDA', 'ESPAÑOL', ''),
(7, '978-970-10-6105-3', 'SISTEMAS DE COMUNICACION', 'A. BRUCE CARLSON-PAUL B. CRILLY', 2007, '850', 'CUARTA', 'ESPAÑOL', ''),
(8, '84-481-3664-0', 'FUNDAMENTOS DE PROGRAMACION', 'LUIS JOYANES AGUILAR', 2003, '1004', 'TERCERA', 'ESPAÑOL', ''),
(9, '970-10-5898-4', '19 PUNTOS CRITICOS SOBRE SEGURIDAD DE SOFTWARE', 'MICHAEL HOWARD-DAVID LEBLANC', 2007, '281', 'PRIMERA', 'ESPAÑOL', ''),
(10, '970-10-5899-2', 'MANUAL DE UML', '', 2007, '236', 'PRIMERA', 'ESPAÑOL', ''),
(11, '978-970-10-6109-1', 'ADMINISTRACION DE BASES DE DATOS', 'MICHAEL V. MANNINO', 2007, '712', 'PRIMERA', 'ESPAÑOL', ''),
(12, '84-481-9846-8', 'PROGRAMACION EN C', 'BYRON S. GOTTFRIED', 0000, '659', 'SEGUNDA', 'ESPAÑOL', ''),
(13, '970-10-5609-4', 'FUNDAMENTOS DE LOGICA DIGITAL ', 'STEPHEN BROWN', 0000, '939', 'SEGUNDA', 'ESPAÑOL', ''),
(14, '970-10-4778-8', 'ASP.NET MANUAL DE REFERENCIA', 'MATTHEW MACDONALD', 0000, '876', 'PRIMERA', 'ESPAÑOL', ''),
(15, '970-10-5067-3', 'SEÑALES Y SISTEMAS', 'MICHAEL J. ROBERTS', 0000, '874', 'PRIMERA', 'ESPAÑOL', ''),
(16, '84-481-4939-4', 'ORACLE DATABASE 10G MANUAL DEL ADMINISTRADOR', 'KEVIN LONEY-BOB BRYLA', 0000, '768', 'PRIMERA', 'ESPAÑOL', ''),
(17, '84-481-9816-6', 'JAVA 2 ', 'JESUS SANCHEZ ALLENDE-GABRIEL HUECAS FERNANDEZ-TORIBIO', 0000, '356', 'SEGUNDA', 'ESPAÑOL', ''),
(18, '84-481-4026-5', 'REDES Y SERVICIOS DE BANDA ANCHA TECNOLOG?A Y APLICACIONES', 'JOSE MANUEL HUIDOBRO MOYA', 0000, '309', 'PRIMERA', 'ESPAÑOL', ''),
(19, '84-481-4008-7', 'SEGURIDAD PARA EMPRESAS PARTICULARES', 'GONZALO ALVAREZ MARAÃƒâ€˜ON', 2001, '411', 'PRIMERA', 'ESPAÃƒâ€˜OL', ''),
(20, '84-2505-4009-9', 'CREACION DE SIMULACIONES INTERACTIVAS EN JAVA', 'FRANCISCO ESQUEMBRE', 2005, '330', '', 'ESPAÑOL', ''),
(21, '970-15-1100-X', 'METODOLOGIA DE LA PROGRAMAC?N', 'OSVALDO CAIRO BATTISTUTTI', 2006, '464', 'SEGUNDA', 'ESPAÑOL', ''),
(22, '84-481-4623-9', 'SIMULACION PARA LAS CIENCIAS SOCIALES', 'NIGEL GILBERT-KLAUS G. TROITZSCH', 2006, '295', 'SEGUNDA', 'ESPAÑOL', ''),
(23, '978-970-10-6105-3', 'SISTEMAS DE COMUNICACION', 'A. BRUCE CARLSON-PAUL B. CRILLY', 2007, '850', 'CUARTA', 'ESPAÑOL', ''),
(24, '84-481-3664-0', 'FUNDAMENTOS DE PROGRAMACION', 'LUIS JOYANES AGUILAR', 2003, '1004', 'TERCERA', 'ESPAÑOL', ''),
(25, '970-10-5898-4', '19 PUNTOS CRITICOS SOBRE SEGURIDAD DE SOFTWARE', 'MICHAEL HOWARD-DAVID LEBLANC', 2007, '281', 'PRIMERA', 'ESPAÑOL', ''),
(26, '970-10-5899-2', 'MANUAL DE UML', '', 2007, '236', 'PRIMERA', 'ESPAÑOL', ''),
(27, '978-970-10-6109-1', 'ADMINISTRACION DE BASES DE DATOS', 'MICHAEL V. MANNINO', 2007, '712', 'PRIMERA', 'ESPAÑOL', ''),
(28, '84-481-9846-8', 'PROGRAMACION EN C', 'BYRON S. GOTTFRIED', 0000, '659', 'SEGUNDA', 'ESPAÑOL', ''),
(29, '970-10-5609-4', 'FUNDAMENTOS DE LOGICA DIGITAL ', 'STEPHEN BROWN', 0000, '939', 'SEGUNDA', 'ESPAÑOL', ''),
(30, '970-10-4778-8', 'ASP.NET MANUAL DE REFERENCIA', 'MATTHEW MACDONALD', 0000, '876', 'PRIMERA', 'ESPAÑOL', ''),
(31, '970-10-5067-3', 'SEÑALES Y SISTEMAS', 'MICHAEL J. ROBERTS', 0000, '874', 'PRIMERA', 'ESPAÑOL', ''),
(32, '84-481-4939-4', 'ORACLE DATABASE 10G MANUAL DEL ADMINISTRADOR', 'KEVIN LONEY-BOB BRYLA', 0000, '768', 'PRIMERA', 'ESPAÑOL', ''),
(33, '84-481-9816-6', 'JAVA 2 ', 'JESUS SANCHEZ ALLENDE-GABRIEL HUECAS FERNANDEZ-TORIBIO', 0000, '356', 'SEGUNDA', 'ESPAÑOL', ''),
(34, '84-481-4026-5', 'REDES Y SERVICIOS DE BANDA ANCHA TECNOLOG?A Y APLICACIONES', 'JOSE MANUEL HUIDOBRO MOYA', 0000, '309', 'PRIMERA', 'ESPAÑOL', ''),
(35, '84-2505-4009-9', 'CREACION DE SIMULACIONES INTERACTIVAS EN JAVA', 'FRANCISCO ESQUEMBRE', 2005, '330', '', 'ESPAÑOL', ''),
(36, '970-15-1100-X', 'METODOLOGIA DE LA PROGRAMAC?N', 'OSVALDO CAIRO BATTISTUTTI', 2006, '464', 'SEGUNDA', 'ESPAÑOL', ''),
(37, '84-481-4623-9', 'SIMULACION PARA LAS CIENCIAS SOCIALES', 'NIGEL GILBERT-KLAUS G. TROITZSCH', 2006, '295', 'SEGUNDA', 'ESPAÑOL', ''),
(38, '978-970-10-6105-3', 'SISTEMAS DE COMUNICACION', 'A. BRUCE CARLSON-PAUL B. CRILLY', 2007, '850', 'CUARTA', 'ESPAÑOL', ''),
(39, '84-481-3664-0', 'FUNDAMENTOS DE PROGRAMACION', 'LUIS JOYANES AGUILAR', 2003, '1004', 'TERCERA', 'ESPAÑOL', ''),
(40, '970-10-5898-4', '19 PUNTOS CRITICOS SOBRE SEGURIDAD DE SOFTWARE', 'MICHAEL HOWARD-DAVID LEBLANC', 2007, '281', 'PRIMERA', 'ESPAÑOL', ''),
(41, '970-10-5899-2', 'MANUAL DE UML', '', 2007, '236', 'PRIMERA', 'ESPAÑOL', ''),
(42, '978-970-10-6109-1', 'ADMINISTRACION DE BASES DE DATOS', 'MICHAEL V. MANNINO', 2007, '712', 'PRIMERA', 'ESPAÑOL', ''),
(43, '84-481-9846-8', 'PROGRAMACION EN C', 'BYRON S. GOTTFRIED', 0000, '659', 'SEGUNDA', 'ESPAÑOL', ''),
(44, '970-10-5609-4', 'FUNDAMENTOS DE LOGICA DIGITAL ', 'STEPHEN BROWN', 0000, '939', 'SEGUNDA', 'ESPAÑOL', ''),
(45, '970-10-4778-8', 'ASP.NET MANUAL DE REFERENCIA', 'MATTHEW MACDONALD', 0000, '876', 'PRIMERA', 'ESPAÑOL', ''),
(46, '970-10-5067-3', 'SEÑALES Y SISTEMAS', 'MICHAEL J. ROBERTS', 0000, '874', 'PRIMERA', 'ESPAÑOL', ''),
(47, '84-481-4939-4', 'ORACLE DATABASE 10G MANUAL DEL ADMINISTRADOR', 'KEVIN LONEY-BOB BRYLA', 0000, '768', 'PRIMERA', 'ESPAÃ‘OL', ''),
(48, '84-481-9816-6', 'JAVA 2 ', 'JESUS SANCHEZ ALLENDE-GABRIEL HUECAS FERNANDEZ-TORIBIO', 0000, '356', 'SEGUNDA', 'ESPAÑOL', ''),
(49, '84-481-4026-5', 'REDES Y SERVICIOS DE BANDA ANCHA TECNOLOG?A Y APLICACIONES', 'JOSE MANUEL HUIDOBRO MOYA', 0000, '309', 'PRIMERA', 'ESPAÑOL', ''),
(50, '303030', 'Creacion de un portal con php y mysql ', 'Jacobo Pavon Puertas', 1985, '400', 'tercera', 'espaÃ±ol', ''),
(51, '303030', 'Creacion de un portal con php y mysql ', 'Jacobo Pavon Puertas', 1985, '400', 'tercera', 'espaÃ±ol', 'imagen.jpg'),
(52, '20001', 'titulo 01', 'autor 01', 2001, '400', 'primera', 'ingles', 'html5-css3.jpg'),
(53, '12102', 'titulo 02', 'autor 02', 1999, '600', 'segunda', 'frances', 'java-7.jpg'),
(54, '3003', 'a', 'a', 2001, '200', 'segunda', 'espaÃ±ol', 'html5-css3.jpg'),
(55, '1212', 'sdsd', 'ssds', 2001, '300', 'primera', 'espaÃ±ol', '5756248a04ad5-sql.jpg'),
(56, 'asa', 'asa', 'asa', 1990, '300', 'segunda', '300', '575624ab8fd15-sql.jpg'),
(57, 'x', 'x', 'x', 0000, 'x', 'x', 'x', '5756c6c72182d-java-7.jpg'),
(58, 'y', 'y', 'y', 0000, 'y', 'y', 'y', '5756c720e8c37-sql.jpg'),
(59, 'y', 'y', 'y', 0000, 'y', 'y', 'y', '57571f760b265-sql.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(150) NOT NULL,
  `apellido_usuario` varchar(150) NOT NULL,
  `email_usuario` varchar(150) NOT NULL,
  `pass_usuario` varchar(150) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre_usuario`, `apellido_usuario`, `email_usuario`, `pass_usuario`) VALUES
(18, 'carlos', 'manchego', 'carlos_m@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(19, 'juan', 'manchego', 'juan@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(20, 'yeny', 'fuentes', 'yenyf@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(21, 'bryan', 'ramirez', 'ramirezb@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b'),
(22, 'yony brondy', 'mamani fuentes', 'yonybrondy17@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(23, 'yony', 'mamani', 'yony@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
 ADD PRIMARY KEY (`id_libro`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id_usuario`), ADD UNIQUE KEY `email_usuario` (`email_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=60;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
