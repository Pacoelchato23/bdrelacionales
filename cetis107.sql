-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-02-2025 a las 02:18:01
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
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `numero_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'Juan Pablo', 'Ochoa Hermosillo', '23325061070396', '2008-07-23', 1, 'ochoahermosilloj@gmail.com', '6674299546'),
(2, 'Victor Emilio', 'Ojeda Castro', '23325061070496', '2008-09-28', 1, 'veoc09.28@gmail.com', '6677554258'),
(3, 'Alejandro ', 'Tizoc Beltrán', '23325061070754', '2008-06-12', 1, 'alejandro.tizoc23@cetis107.edu.mx', '6675720017'),
(4, 'Jan Carlo', 'Martinez Quintero', '23325061070581', '2008-07-06', 1, 'jan.martinez24@cetis107.edu.mx', '6675720017'),
(5, 'Luis Angel', 'Perez lozano', '23325061070854', '2008-06-09', 1, 'luis.perez23@cetis107.edu.mx', '6673090801'),
(6, 'David Sebastian', 'Payan Serrano', '23325061070731', '2008-11-05', 1, 'david.payan23@cetis107.edu.mx', '6774573001'),
(7, 'Jonathan Horus', 'Zazueta Hernandéz', '23325061070263', '2008-04-09', 1, 'jonathan.zazueta23@cetis107.edu.mx', '6677562259');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripción` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`, `descripción`) VALUES
(1, 'programación', 'Programación es relevante porque: contribuye a la formación de personas capaces de\r\nintegrarse a un mercado laboral dinámico y de alta demanda, que esta a la vanguardia en el uso de la tecnología y que contribuye a la\r\ntransformación digital de los sectores productivos en el país'),
(2, 'Ofimática', 'La carrera de Técnico en Ofimática ofrece las competencias profesionales que permiten al estudiante realizar actividades dirigidas a gestionar\r\nhardware y software de la Ofimática; gestionar información de manera local; gestionar información de manera remota, diseñar y gestionar bases\r\nde datos ofim'),
(3, 'Electrónica', 'La electrónica es la rama de la física y la ingeniería que estudia el comportamiento y control de los electrones en dispositivos como circuitos, semiconductores, transistores y microchips. Es fundamental en el desarrollo de tecnologías modernas, desde computadoras hasta sistemas de comunicación.'),
(4, 'construcción', 'La construcción es el proceso de edificar y desarrollar estructuras, como viviendas, puentes y carreteras, mediante la planificación, diseño y uso de materiales y técnicas especializadas. Implica coordinación de recursos, mano de obra y cumplimiento de normativas.\r\n\r\n\r\n\r\n\r\n'),
(5, 'diseño grafico', 'El diseño gráfico es el arte de comunicar visualmente ideas y mensajes mediante el uso de tipografía, imágenes, colores y formas. Se aplica en publicidad, branding, medios digitales y más, buscando captar la atención y transmitir eficazmente la información.'),
(6, 'contabilidad', 'La contabilidad es la disciplina que se encarga del registro, clasificación y análisis de las operaciones financieras de una entidad. Su objetivo es proporcionar información clara y precisa para la toma de decisiones económicas y garantizar la transparencia fiscal.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `semestre`) VALUES
(0, 'ciencias sociales ', 4),
(1, 'matemáticas', 4),
(3, 'Historia', 4),
(4, 'ingles', 4),
(5, 'Tutoria', 4),
(6, 'Reacciones Quimicas', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
