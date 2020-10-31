-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-10-2020 a las 08:34:03
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `daily_tasks`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea`
--

CREATE TABLE `tarea` (
  `codigoTarea` int(4) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tarea`
--

INSERT INTO `tarea` (`codigoTarea`, `descripcion`, `fecha`) VALUES
(6, 'Test 1', '2020-10-23'),
(7, 'Test 2', '2020-10-23'),
(8, 'Test 3', '2020-10-23'),
(10, 'Test 5', '2020-10-23'),
(11, 'Test 6', '2020-10-23'),
(12, 'Test 7', '2020-10-23'),
(13, 'Test 8', '2020-10-23'),
(14, 'Test 9', '2020-10-23'),
(15, 'Test 10', '2020-10-23'),
(25, 'Hacer tarea de móvil 2', '2020-10-26'),
(27, 'Test del teclado cuando pierde el focus', '2020-10-26'),
(29, 'Test color DatePiker', '2020-10-18'),
(32, 'Test scroll to bottom', '2020-10-19'),
(37, 'Test de texto largo asdas asdasd asdas asd as asda adssfgdf sd sdfffg s dsds gfd df  fdsd sdf dfg sd fsd sdf sd sd f ssd sd fsdg  fdg fdfdfdgfd g sdfsdfsfsd sdf', '2020-10-26'),
(39, 'Hola esta es una prueba de texto largo', '2020-10-26'),
(40, 'Test de rango de fechas', '2019-10-31');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD PRIMARY KEY (`codigoTarea`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tarea`
--
ALTER TABLE `tarea`
  MODIFY `codigoTarea` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
