-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-05-2017 a las 19:59:26
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `daw1704`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `answers`
--

CREATE TABLE `answers` (
  `idanswer` int(4) NOT NULL,
  `nickname` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idquestion` int(4) DEFAULT NULL,
  `input` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `answers`
--

INSERT INTO `answers` (`idanswer`, `nickname`, `idquestion`, `input`, `date`) VALUES
(1, 'Lola', 1, 'Palindrome are those String whose reverse is equal to original.This can be done by using either Stri', '2017-05-17'),
(2, 'Pepe', 2, 'you can remove a given character from String by converting it into character array and then using su', '2017-05-24'),
(3, 'Xmen', 3, 'String is final because of same reason it is immutable. Couple of reasons which I think make sense i', '2017-05-23');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `idquestion` int(4) NOT NULL,
  `nickname` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `topicname` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `input` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `questions`
--

INSERT INTO `questions` (`idquestion`, `nickname`, `topicname`, `input`, `date`) VALUES
(1, 'Lola', 'Java', 'Write code to check a String is palindrome or not?', '2017-04-12'),
(2, 'Pepe', 'Education', 'Write a method which will remove any given character from a String?', '2017-02-06'),
(3, 'Xmen', 'Flu', 'Why String is final in Java?', '2017-04-25'),
(4, 'Snoopy', 'C#', 'How to Split String in Java?', '2017-04-27'),
(5, 'TheRock', 'Economy', 'Why Char array is preferred over String for storing password?', '2017-02-13'),
(19, 'tester', 'C#', 'it works', '2017-05-06'),
(29, 'anonymous', 'Java', 'how can i learn java easy mode easy pace? thx', '2017-05-06'),
(30, 'tester', 'Java', 'Where can i find good springboot tutorialsÂ¿', '2017-05-07');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporta`
--

CREATE TABLE `reporta` (
  `idreporta` int(4) NOT NULL,
  `nickname` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idanswer` int(4) DEFAULT NULL,
  `reporttext` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `reporta`
--

INSERT INTO `reporta` (`idreporta`, `nickname`, `idanswer`, `reporttext`, `date`) VALUES
(1, 'Lola', 2, 'incorrect topic', '2017-06-15'),
(2, 'Pepe', 2, 'incorrect topic', '2017-06-15'),
(3, 'Xmen', 2, 'incorrect topic', '2017-07-18'),
(4, 'Snoopy', 2, 'incorrect topic', '2017-06-21'),
(5, 'TheRock', 2, 'incorrect topic', '2017-07-19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reportq`
--

CREATE TABLE `reportq` (
  `idreportq` int(4) NOT NULL,
  `nickname` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idquestion` int(4) DEFAULT NULL,
  `reporttext` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `reportq`
--

INSERT INTO `reportq` (`idreportq`, `nickname`, `idquestion`, `reporttext`, `date`) VALUES
(1, 'Lola', 1, 'incorrect topic', '2017-06-16'),
(2, 'Pepe', 1, 'incorrect topic', '2017-06-30'),
(3, 'Xmen', 1, 'incorrect topic', '2017-06-23'),
(4, 'Snoopy', 1, 'incorrect topic', '2017-06-17'),
(5, 'TheRock', 1, 'incorrect topic', '2017-07-29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `topics`
--

CREATE TABLE `topics` (
  `topicname` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `maintopic` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `topics`
--

INSERT INTO `topics` (`topicname`, `maintopic`) VALUES
('C#', 'programming'),
('Economy', 'socialpolitics'),
('Education', 'socialpolitics'),
('Flu', 'programming'),
('Java', 'programming');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `nickname` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `userscore` int(4) DEFAULT NULL,
  `firstname` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lastname` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(80) COLLATE utf8_spanish_ci DEFAULT NULL,
  `postalcode` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`nickname`, `userscore`, `firstname`, `lastname`, `email`, `password`, `postalcode`) VALUES
('anonymous', 0, 'anonymous', 'anonymous', 'not@real.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0),
('Lola', 2, 'Lola', 'Loli', 'loli@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 45623),
('Pepe', 3, 'Pepe', 'Väth', 'pepe@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 45623),
('Snoopy', 50, 'Snoopy', 'Loli', 'snoopy@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 45623),
('succesfullreal', 0, 'succesrealName', 'succesrealLastname', 'succesreal@mail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 8004),
('tester', 0, 'tester', 'tester', 'n@mail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 12345),
('TheRock', 20, 'TheRock', 'Pierdra', 'marcos@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 78945),
('Xmen', 5, 'Xmen', 'Pescador', 'rocki@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 45632);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valorationa`
--

CREATE TABLE `valorationa` (
  `idvalorationa` int(4) NOT NULL,
  `nickname` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idanswer` int(4) NOT NULL,
  `valoration` int(4) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `valorationa`
--

INSERT INTO `valorationa` (`idvalorationa`, `nickname`, `idanswer`, `valoration`, `date`) VALUES
(1, 'Lola', 1, 5, '2017-04-26'),
(2, 'Pepe', 1, 4, '2017-06-22'),
(3, 'Xmen', 1, 3, '2017-06-14'),
(4, 'Snoopy', 1, 4, '2017-06-18'),
(5, 'TheRock', 1, 5, '2017-06-20');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valorationq`
--

CREATE TABLE `valorationq` (
  `idvalorationq` int(4) NOT NULL,
  `nickname` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idquestion` int(4) DEFAULT NULL,
  `valoration` int(4) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `valorationq`
--

INSERT INTO `valorationq` (`idvalorationq`, `nickname`, `idquestion`, `valoration`, `date`) VALUES
(1, 'Lola', 1, 5, '2017-06-15'),
(2, 'Pepe', 1, 5, '2017-06-20'),
(3, 'Xmen', 1, 5, '2017-06-13'),
(4, 'Snoopy', 1, 5, '2017-06-08'),
(5, 'TheRock', 1, 5, '2017-06-10');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`idanswer`),
  ADD UNIQUE KEY `idanswer` (`idanswer`),
  ADD KEY `nickname` (`nickname`),
  ADD KEY `idquestion` (`idquestion`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`idquestion`),
  ADD UNIQUE KEY `idquestion` (`idquestion`),
  ADD KEY `nickname` (`nickname`),
  ADD KEY `topicname` (`topicname`);

--
-- Indices de la tabla `reporta`
--
ALTER TABLE `reporta`
  ADD PRIMARY KEY (`idreporta`),
  ADD UNIQUE KEY `idreporta` (`idreporta`),
  ADD KEY `idanswer` (`idanswer`),
  ADD KEY `nickname` (`nickname`);

--
-- Indices de la tabla `reportq`
--
ALTER TABLE `reportq`
  ADD PRIMARY KEY (`idreportq`),
  ADD UNIQUE KEY `idreportq` (`idreportq`),
  ADD KEY `idquestion` (`idquestion`);

--
-- Indices de la tabla `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topicname`),
  ADD UNIQUE KEY `topicname` (`topicname`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`nickname`),
  ADD UNIQUE KEY `nickname` (`nickname`);

--
-- Indices de la tabla `valorationa`
--
ALTER TABLE `valorationa`
  ADD PRIMARY KEY (`idvalorationa`),
  ADD UNIQUE KEY `idvalorationa` (`idvalorationa`),
  ADD KEY `idanswer` (`idanswer`),
  ADD KEY `nickname` (`nickname`);

--
-- Indices de la tabla `valorationq`
--
ALTER TABLE `valorationq`
  ADD PRIMARY KEY (`idvalorationq`),
  ADD UNIQUE KEY `idvalorationq` (`idvalorationq`),
  ADD KEY `idquestion` (`idquestion`),
  ADD KEY `nickname` (`nickname`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `answers`
--
ALTER TABLE `answers`
  MODIFY `idanswer` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `idquestion` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT de la tabla `reporta`
--
ALTER TABLE `reporta`
  MODIFY `idreporta` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `reportq`
--
ALTER TABLE `reportq`
  MODIFY `idreportq` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `valorationa`
--
ALTER TABLE `valorationa`
  MODIFY `idvalorationa` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `valorationq`
--
ALTER TABLE `valorationq`
  MODIFY `idvalorationq` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`nickname`) REFERENCES `users` (`nickname`),
  ADD CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`idquestion`) REFERENCES `questions` (`idquestion`);

--
-- Filtros para la tabla `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`nickname`) REFERENCES `users` (`nickname`),
  ADD CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`topicname`) REFERENCES `topics` (`topicname`);

--
-- Filtros para la tabla `reporta`
--
ALTER TABLE `reporta`
  ADD CONSTRAINT `reporta_ibfk_1` FOREIGN KEY (`idanswer`) REFERENCES `answers` (`idanswer`),
  ADD CONSTRAINT `reporta_ibfk_2` FOREIGN KEY (`nickname`) REFERENCES `users` (`nickname`);

--
-- Filtros para la tabla `reportq`
--
ALTER TABLE `reportq`
  ADD CONSTRAINT `reportq_ibfk_1` FOREIGN KEY (`idquestion`) REFERENCES `questions` (`idquestion`);

--
-- Filtros para la tabla `valorationa`
--
ALTER TABLE `valorationa`
  ADD CONSTRAINT `valorationa_ibfk_1` FOREIGN KEY (`idanswer`) REFERENCES `answers` (`idanswer`),
  ADD CONSTRAINT `valorationa_ibfk_2` FOREIGN KEY (`nickname`) REFERENCES `users` (`nickname`);

--
-- Filtros para la tabla `valorationq`
--
ALTER TABLE `valorationq`
  ADD CONSTRAINT `valorationq_ibfk_1` FOREIGN KEY (`idquestion`) REFERENCES `questions` (`idquestion`),
  ADD CONSTRAINT `valorationq_ibfk_2` FOREIGN KEY (`nickname`) REFERENCES `users` (`nickname`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
