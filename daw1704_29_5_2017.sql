-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 29, 2017 at 11:04 AM
-- Server version: 5.6.33-0ubuntu0.14.04.1
-- PHP Version: 7.0.19-1+deb.sury.org~trusty+2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `daw1704`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `idanswer` int(4) NOT NULL,
  `nickname` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idquestion` int(4) DEFAULT NULL,
  `input` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`idanswer`, `nickname`, `idquestion`, `input`, `date`) VALUES
(2, 'Pepe', 2, 'you can remove a given character from String by converting it into character array and then using su', '2017-05-24'),
(3, 'Xmen', 3, 'String is final because of same reason it is immutable. Couple of reasons which I think make sense i', '2017-05-23'),
(4, 'anonymous', 1, 'wdf is a palindrome niggy', '2017-05-15'),
(5, 'tester', 19, 'Yes bro, this definetively works!', '2017-05-15'),
(6, 'anonymous', 1, 'i have an author, amazing!', '2017-05-15'),
(7, 'anonymous', 2, 'Xq queda question 2  y are you a ...nCortado?', '2017-05-16'),
(8, 'anonymous', 32, 'Broh that\'s because you are latino. I will pray omega the strong for your hot soul', '2017-05-16'),
(10, 'anonymous', 4, 'test answer', '2017-05-16'),
(11, 'anonymous', 33, 'with taw tool', '2017-05-17'),
(12, 'anonymous', 34, 'Poleeeee and I take sit. waiting for questions. Kinda interesting brahs.', '2017-05-17'),
(13, 'OmegaElFuerte', 32, 'Poleeee. Waiting answers!', '2017-05-17'),
(14, 'anonymous', 32, 'test answer for lols.', '2017-05-18'),
(15, 'tester', 37, 'Fisrt utopic answer! :)', '2017-05-24'),
(16, 'HolaMundo', 32, 'Try to play merenge electronico form OmegaElFuerte!', '2017-05-24'),
(17, 'tester', 38, 'omeeeeeeeeeeeeeeeeeeeeega el real', '2017-05-24'),
(18, 'Bronko', 34, 'Hola', '2017-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `idquestion` int(4) NOT NULL,
  `nickname` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `topicname` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `input` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`idquestion`, `nickname`, `topicname`, `input`, `date`) VALUES
(1, 'Lola', 'Java', 'Write code to check a String is palindrome or not?', '2017-04-12'),
(2, 'Pepe', 'Education', 'Write a method which will remove any given character from a String?', '2017-02-06'),
(3, 'Xmen', 'Flu', 'Why String is final in Java?', '2017-04-25'),
(4, 'Snoopy', 'C#', 'How to Split String in Java?', '2017-04-27'),
(5, 'TheRock', 'Economy', 'Why Char array is preferred over String for storing password?', '2017-02-13'),
(19, 'tester', 'C#', 'it works', '2017-05-06'),
(29, 'anonymous', 'Java', 'how can i learn java easy mode easy pace? thx', '2017-05-06'),
(30, 'tester', 'Java', 'Where can i find good springboot tutorialsÂ¿', '2017-05-07'),
(32, 'Aeros', 'Economy', 'Why i break consolas? i see the girls dancing alone and i cant avoid to break all the consoles i see', '2017-05-16'),
(33, 'anonymous', 'Flu', 'how can i validate taw?', '2017-05-17'),
(34, 'anonymous', 'C#', 'Why pink fiction is a good film? Is that because appears pink peaople in the film? #seriousDeal', '2017-05-17'),
(35, 'OmegaElFuerte', 'Flu', 'Why this projet is a fake kitty cat?', '2017-05-18'),
(36, 'anonymous', 'Education', 'Who is this guy?nhttps://es.wikipedia.org/wiki/Juan_Carlos_I_de_Espa%C3%B1a', '2017-05-18'),
(37, 'anonymous', 'untopic', 'first untopic question by anonymous, salutations', '2017-05-22'),
(38, 'HolaMundo', 'C#', 'Hola?', '2017-05-24'),
(39, 'JohnTheRipper', 'untopic', 'Hi, is xavi a big putero?', '2017-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `reporta`
--

CREATE TABLE `reporta` (
  `idreporta` int(4) NOT NULL,
  `nickname` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idanswer` int(4) DEFAULT NULL,
  `reporttext` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `reporta`
--

INSERT INTO `reporta` (`idreporta`, `nickname`, `idanswer`, `reporttext`, `date`) VALUES
(1, 'Lola', 2, 'incorrect topic', '2017-06-15'),
(3, 'Xmen', 2, 'incorrect topic', '2017-07-18'),
(4, 'Snoopy', 2, 'incorrect topic', '2017-06-21'),
(5, 'TheRock', 2, 'incorrect topic', '2017-07-19');

-- --------------------------------------------------------

--
-- Table structure for table `reportq`
--

CREATE TABLE `reportq` (
  `idreportq` int(4) NOT NULL,
  `nickname` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idquestion` int(4) DEFAULT NULL,
  `reporttext` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `reportq`
--

INSERT INTO `reportq` (`idreportq`, `nickname`, `idquestion`, `reporttext`, `date`) VALUES
(2, 'Pepe', 1, 'incorrect topic', '2017-06-30'),
(3, 'Xmen', 1, 'incorrect topic', '2017-06-23'),
(4, 'Snoopy', 1, 'incorrect topic', '2017-06-17'),
(5, 'TheRock', 1, 'incorrect topic', '2017-07-29');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `topicname` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `maintopic` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`topicname`, `maintopic`) VALUES
('C#', 'programming'),
('Economy', 'socialpolitics'),
('Education', 'socialpolitics'),
('Flu', 'programming'),
('Java', 'programming'),
('untopic', 'untopic');

-- --------------------------------------------------------

--
-- Table structure for table `users`
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
-- Dumping data for table `users`
--

INSERT INTO `users` (`nickname`, `userscore`, `firstname`, `lastname`, `email`, `password`, `postalcode`) VALUES
('Aeros', 0, 'Aeros', 'Serio ElReal', 'aeros@programmer.net', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 8940),
('anonymous', 0, 'anonymous', 'anonymous', 'not@real.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0),
('Bronko', 0, 'Billy', 'Wonka', 'Patatafrita@hotmail.', 'd1d2580625e2905b937186b5240c4cd62ecf683e', 8038),
('HolaMundo', 0, 'proyectoSublime', 'de la vida', 'hola@gola.asd', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 12354),
('JohnTheRipper', 0, 'John', 'Doe', 'john@doe.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 12345),
('juan', 0, 'juan', 'juan', 'juan@juan.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 12345),
('Lola', 2, 'Lola', 'Loli', 'loli@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 45623),
('OmegaElFuerte', 0, 'Omar', 'ElFuerte', 'omarElFuerte@sempre.', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 123),
('Pepe', 3, 'Pepe', 'Väth', 'pepe@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 45623),
('Snoopy', 50, 'Snoopy', 'Loli', 'snoopy@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 45623),
('succesfullreal', 0, 'succesrealName', 'succesrealLastname', 'succesreal@mail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 8004),
('tester', 0, 'tester', 'tester', 'n@mail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 12345),
('testera', 0, 'test', 'test', 'joh@mail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 5080),
('testeri', 0, 'test', 'tester', 'test@mail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 12345),
('TheRock', 20, 'TheRock', 'Pierdra', 'marcos@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 78945),
('Xmen', 5, 'Xmen', 'Pescador', 'rocki@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 45632);

-- --------------------------------------------------------

--
-- Table structure for table `valorationa`
--

CREATE TABLE `valorationa` (
  `idvalorationa` int(4) NOT NULL,
  `nickname` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idanswer` int(4) NOT NULL,
  `valoration` int(4) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `valorationa`
--

INSERT INTO `valorationa` (`idvalorationa`, `nickname`, `idanswer`, `valoration`, `date`) VALUES
(1, 'Aeros', 3, 3, '2017-05-10'),
(2, 'OmegaElFuerte', 2, 1, '2017-05-18');

-- --------------------------------------------------------

--
-- Table structure for table `valorationq`
--

CREATE TABLE `valorationq` (
  `idvalorationq` int(4) NOT NULL,
  `nickname` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idquestion` int(4) DEFAULT NULL,
  `valoration` int(4) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `valorationq`
--

INSERT INTO `valorationq` (`idvalorationq`, `nickname`, `idquestion`, `valoration`, `date`) VALUES
(1, 'Lola', 1, 5, '2017-06-15'),
(2, 'Pepe', 1, 5, '2017-06-20'),
(3, 'Xmen', 1, 5, '2017-06-13'),
(4, 'Snoopy', 1, 5, '2017-06-08'),
(5, 'TheRock', 1, 5, '2017-06-10'),
(6, 'tester', 38, 5, '2017-05-28'),
(7, 'TheRock', 38, 4, '2017-05-28'),
(8, 'TheRock', 34, 4, '2017-05-28'),
(9, 'Bronko', 34, 3, '2017-05-29'),
(10, 'JohnTheRipper', 30, 3, '2017-05-29'),
(11, 'JohnTheRipper', 38, 5, '2017-05-29'),
(12, 'JohnTheRipper', 39, 5, '2017-05-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`idanswer`),
  ADD UNIQUE KEY `idanswer` (`idanswer`),
  ADD KEY `nickname` (`nickname`),
  ADD KEY `idquestion` (`idquestion`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`idquestion`),
  ADD UNIQUE KEY `idquestion` (`idquestion`),
  ADD KEY `nickname` (`nickname`),
  ADD KEY `topicname` (`topicname`);

--
-- Indexes for table `reporta`
--
ALTER TABLE `reporta`
  ADD PRIMARY KEY (`idreporta`),
  ADD UNIQUE KEY `idreporta` (`idreporta`),
  ADD KEY `idanswer` (`idanswer`),
  ADD KEY `nickname` (`nickname`);

--
-- Indexes for table `reportq`
--
ALTER TABLE `reportq`
  ADD PRIMARY KEY (`idreportq`),
  ADD UNIQUE KEY `idreportq` (`idreportq`),
  ADD KEY `idquestion` (`idquestion`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`topicname`),
  ADD UNIQUE KEY `topicname` (`topicname`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`nickname`),
  ADD UNIQUE KEY `nickname` (`nickname`);

--
-- Indexes for table `valorationa`
--
ALTER TABLE `valorationa`
  ADD PRIMARY KEY (`idvalorationa`),
  ADD UNIQUE KEY `idvalorationa` (`idvalorationa`),
  ADD KEY `idanswer` (`idanswer`),
  ADD KEY `nickname` (`nickname`);

--
-- Indexes for table `valorationq`
--
ALTER TABLE `valorationq`
  ADD PRIMARY KEY (`idvalorationq`),
  ADD UNIQUE KEY `idvalorationq` (`idvalorationq`),
  ADD KEY `idquestion` (`idquestion`),
  ADD KEY `nickname` (`nickname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `idanswer` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `idquestion` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `reporta`
--
ALTER TABLE `reporta`
  MODIFY `idreporta` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `reportq`
--
ALTER TABLE `reportq`
  MODIFY `idreportq` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `valorationa`
--
ALTER TABLE `valorationa`
  MODIFY `idvalorationa` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `valorationq`
--
ALTER TABLE `valorationq`
  MODIFY `idvalorationq` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`nickname`) REFERENCES `users` (`nickname`),
  ADD CONSTRAINT `answers_ibfk_2` FOREIGN KEY (`idquestion`) REFERENCES `questions` (`idquestion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`nickname`) REFERENCES `users` (`nickname`),
  ADD CONSTRAINT `questions_ibfk_2` FOREIGN KEY (`topicname`) REFERENCES `topics` (`topicname`);

--
-- Constraints for table `reporta`
--
ALTER TABLE `reporta`
  ADD CONSTRAINT `reporta_ibfk_1` FOREIGN KEY (`idanswer`) REFERENCES `answers` (`idanswer`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reporta_ibfk_2` FOREIGN KEY (`nickname`) REFERENCES `users` (`nickname`);

--
-- Constraints for table `reportq`
--
ALTER TABLE `reportq`
  ADD CONSTRAINT `reportq_ibfk_1` FOREIGN KEY (`idquestion`) REFERENCES `questions` (`idquestion`);

--
-- Constraints for table `valorationa`
--
ALTER TABLE `valorationa`
  ADD CONSTRAINT `valorationa_ibfk_1` FOREIGN KEY (`idanswer`) REFERENCES `answers` (`idanswer`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `valorationa_ibfk_2` FOREIGN KEY (`nickname`) REFERENCES `users` (`nickname`);

--
-- Constraints for table `valorationq`
--
ALTER TABLE `valorationq`
  ADD CONSTRAINT `valorationq_ibfk_1` FOREIGN KEY (`idquestion`) REFERENCES `questions` (`idquestion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `valorationq_ibfk_2` FOREIGN KEY (`nickname`) REFERENCES `users` (`nickname`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
