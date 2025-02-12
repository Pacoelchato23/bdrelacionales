-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-02-2025 a las 00:46:03
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id`, `nombre`, `correo`, `genero`, `fecha`) VALUES
(1, 'Jorge Ibarra quintero', 'ibarra.quintero@cetis107.edu.mx', 1, '1994-03-07'),
(2, 'maría ruelas Ruelas Astorga', 'maria.ruelas@cetis107.edu.mx', 0, '1994-05-07'),
(3, 'maría teresa Sepúlveda lomas', 'maria.sepulvedacetis107.edu.mx\r\n', 0, '1984-02-24'),
(4, 'Liliana Espinoza Juárez', 'liliana.espinoza107.edu.mx\r\n', 0, '1995-07-24'),
(5, 'maría de Jesús verduzco valencia ', 'maria.dejesus107.edu.mx\r\n', 0, '1989-04-03'),
(6, 'Víctor Enoc López Macías', 'victor.enoc@cetis107.edu.mx\r\n\r\n', 1, '1991-04-27'),
(7, 'juan pablo Hermosillo ', 'juan.hermosillo@cetis107.edu.mx\r\n\r\n', 1, '1991-02-27'),
(8, 'Isaac moreno González', 'isaac.moreno@cetis107.edu.mx\r\n\r\n', 1, '1997-06-23'),
(9, 'Jesús moreno verduzco gonzalez', 'jesus.moreno@cetis107.edu.mx\r\n\r\n', 1, '1997-04-01'),
(10, 'José fráncico Rochín González', 'jesus.francisco@cetis107.edu.mx\r\n\r\n', 1, '1998-07-25');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
