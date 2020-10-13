-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 13, 2020 at 11:29 PM
-- Server version: 10.5.5-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news`
--

-- --------------------------------------------------------

--
-- Table structure for table `news_list`
--

CREATE TABLE `news_list` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `picture` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `article` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news_list`
--

INSERT INTO `news_list` (`id`, `date`, `title`, `picture`, `description`, `article`) VALUES
(1, '2020-10-13', 'Hoy juega la Selección Colombiana de Fútbol', 'https://caracoltv.brightspotcdn.com/dims4/default/eb7405f/2147483647/strip/true/crop/1024x683+0+0/resize/615x410!/format/webp/quality/90/?url=http%3A%2F%2Fcaracol-brightspot.s3.amazonaws.com%2F57%2F1e%2F3fa949f14a88808b722279a1a41f%2Fcolombiavschilecopaamerica-getty.jpg', 'Hoy a las 19:30 no se puede perder el partido de Colombia vs Chile por eliminatorias a Catar 2022', 'Hoy juega la Selección Colombiana de Fútbol en el Estadio Nacional de Santiago de Chile. La alineación está por ser confirmada.'),
(2, '2020-10-12', 'Suspenden ensayos médicos de la vacuna contra el COVID-19 de Johnson & Johnson', 'https://static.iris.net.co/dinero/upload/images/2020/9/7/299293_1.jpg', 'Uno de los pacientes mostró síntomas de una enfermedad desconocida', 'Durante los ensayos médicos de la vacuna contra el COVID-19 desarrollada por Johnson & Johnson, uno de los voluntarios presentó síntomas de una enfermedad no diagnosticada.\r\n\r\nDebido a esto se cancelaron los demás ensayos hasta encontrar una solución'),
(3, '2020-10-14', 'Presentados los nuevos modelos de iPhone 12', 'https://static.iris.net.co/dinero/upload/images/2020/10/13/303247_1.jpg', 'Apple presenta los nuevos modelos de la familia iPhone. Destaca su conectividad 5G', 'Apple ha sorprendido con la nueva familia de dispositivos iPhone, los cuales incluyen conectividad 5G así como nuevas pantallas con tecnología OLED y mejor resolución.\r\n\r\nEntre los modelos presentados tenemos:\r\n\r\niPhone 12\r\niPhone 12 Mini\r\niPhone 12 Pro\r\niPhone 12 Pro Max\r\n\r\nOtra novedad es la de los accesorios MagSafe, los cuales usan imanes para ser acoplados a la parte trasera del dispositivo.\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `news_list`
--
ALTER TABLE `news_list`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `news_list`
--
ALTER TABLE `news_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23423424;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
