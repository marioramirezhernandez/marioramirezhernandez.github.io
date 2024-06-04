-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-06-2024 a las 03:48:05
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
-- Base de datos: `spotify`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `biografia` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `biografia`) VALUES
(0, 'Daniel Coulter Reynolds', ' más conocido como Dan Reynolds, es un cantante, compositor y músico estadounidense, reconocido por ser el vocalista principal de la conocida banda de rock Imagine Dragons'),
(1, 'maluma', 'Juan Luis Londoño Arias, conocido por su nombre artístico Maluma, es un cantante y compositor colombiano. Saltó a la fama en su país natal en 2011, '),
(3, 'bruno mars', 'Peter Gene Hernández, conocido artísticamente como Bruno Mars, es un cantante, compositor, productor musical y bailarín estadounidense. Comenzó a crear música desde una edad muy temprana y actuó en muchos escenarios de su pueblo natal a lo largo de su niñez'),
(4, 'Edward Christopher Sheeran', 'conocido como Ed Sheeran, es un cantautor y músico británico.​ Desde niño comenzó a cantar en la iglesia a la que asistía y también aprendió a tocar la guitarra. A los 16 años abandonó la escuela secundaria, y se trasladó a Londres para proseguir una carrera artística'),
(5, 'Aubrey Drake Graham, ', ' conocido simplemente como Drake es un cantante, compositor, productor discográfico y actor canadiense. Es una figura influyente en la música popular contemporánea, Drake ha sido acreditado por popularizar el canto y la sensibilidad del R&B en el hip hop. '),
(6, 'Shakira Isabel Mebarak Ripoll', 'Shakira Isabel Mebarak Ripoll o conocida monónimamente como Shakira es una cantante, compositora, bailarina, actriz y empresaria colombiana'),
(7, 'Justin Drew Bieber ', 'Justin Drew Bieber es un cantautor canadiense. En 2008, el exejecutivo de la industria musical Scooter '),
(8, 'Benito Antonio Martínez Ocasio', 'Benito Antonio Martínez Ocasio, ​ conocido artísticamente como Bad Bunny, es un cantante, compositor, productor discográfico y luchador puertorriqueño'),
(9, 'Enrique Miguel Iglesias Preysler ', 'Enrique Miguel Iglesias Preysler es un cantautor y productor discográfico español. Es hijo del cantante Julio Iglesias y de Isabel Preysler.'),
(10, 'Stefani Joanne Angelina Germanotta', 'Stefani Joanne Angelina Germanotta, más conocida por su nombre artístico Lady Gaga, es una cantante, compositora, productora, bailarina, actriz, activista y diseñadora de moda estadounidense.'),
(11, 'Giovanni Giuseppe Baptista Gioeli,', 'Giovanni Giuseppe Baptista Gioeli, más conocido como Johnny Gioeli es un cantante estadounidense de hard rock. Originalmente es el vocalista de la banda Hardline, aunque también es el vocalista de la banda liderada por el guitarrista alemán Axel Rudi Pell y Crush 40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `cancion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `generos`
--

CREATE TABLE `generos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Volcado de datos para la tabla `generos`
--

INSERT INTO `generos` (`id`, `nombre`) VALUES
(1, 'rock'),
(2, 'musica pop'),
(3, 'regeton'),
(4, 'country'),
(5, 'rap'),
(6, 'musica electronica'),
(7, 'jazz'),
(8, 'cumbia'),
(9, 'rock'),
(10, 'musica pop'),
(11, 'regeton'),
(12, 'country'),
(13, 'rap'),
(14, 'musica electronica'),
(15, 'jazz'),
(16, 'cumbia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membrecia`
--

CREATE TABLE `membrecia` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `play_list`
--

CREATE TABLE `play_list` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `total canciones` int(11) NOT NULL,
  `descipciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `play_list_canciones`
--

CREATE TABLE `play_list_canciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_id`
--

CREATE TABLE `usuarios_id` (
  `id` int(11) NOT NULL,
  `nombre` varchar(120) NOT NULL,
  `correo` varchar(150) NOT NULL,
  `membrecia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `generos`
--
ALTER TABLE `generos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membrecia`
--
ALTER TABLE `membrecia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `play_list`
--
ALTER TABLE `play_list`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `play_list_canciones`
--
ALTER TABLE `play_list_canciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios_id`
--
ALTER TABLE `usuarios_id`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `generos`
--
ALTER TABLE `generos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `play_list`
--
ALTER TABLE `play_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `play_list_canciones`
--
ALTER TABLE `play_list_canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios_id`
--
ALTER TABLE `usuarios_id`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
