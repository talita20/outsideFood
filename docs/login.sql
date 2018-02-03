-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 03-Fev-2018 às 17:09
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `outsidefood`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE IF NOT EXISTS `login` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `tipo` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id`, `email`, `senha`, `tipo`) VALUES
(1, 'tigas245@outlook.com', '123123', 2),
(2, 'ac.nulla.In@pretiumetrutrum.net', '278502', 0),
(3, 'Cras@aneque.com', '432741', 1),
(4, 'Duis.gravida.Praesent@mauris.co.uk', '826293', 0),
(5, 'dolor.Fusce.feugiat@euelitNulla.org', '938035', 1),
(6, 'quis.diam@acipsumPhasellus.com', '246985', 1),
(7, 'montes.nascetur@bibendum.co.uk', '653828', 0),
(8, 'dui@Maecenas.co.uk', '937410', 0),
(9, 'in@arcuAliquamultrices.com', '447550', 0),
(10, 'Quisque.porttitor@odiovel.com', '526975', 0),
(11, 'facilisis@faucibuslectus.ca', '232981', 0),
(12, 'tristique.neque.venenatis@nuncac.com', '193518', 0),
(13, 'quis.tristique.ac@tellus.ca', '362532', 1),
(14, 'Cras.pellentesque.Sed@sapiengravidanon.edu', '553679', 0),
(15, 'vitae.purus@enimNunc.co.uk', '252666', 1),
(16, 'pede.blandit@rutrumFuscedolor.ca', '579559', 1),
(17, 'Cum.sociis.natoque@convallis.net', '210377', 0),
(18, 'ipsum@Phasellus.com', '578110', 1),
(19, 'sagittis@porttitorinterdum.co.uk', '472046', 0),
(20, 'libero@sitamet.org', '803751', 0),
(21, 'tristique.aliquet@pedeNuncsed.ca', '807383', 0),
(22, 'tristique.senectus.et@ante.org', '631831', 1),
(23, 'ac.mattis@nuncestmollis.co.uk', '647779', 1),
(24, 'quam@Maurisnon.co.uk', '672868', 0),
(25, 'vel.arcu.eu@elementumpurus.co.uk', '785694', 1),
(26, 'erat.nonummy.ultricies@Pellentesque.co.uk', '455790', 0),
(27, 'fermentum.vel.mauris@nostra.ca', '307726', 1),
(28, 'a.purus@Nulla.net', '209818', 0),
(29, 'mi.enim.condimentum@lectus.ca', '243158', 0),
(30, 'est.vitae@necdiamDuis.co.uk', '667144', 1),
(31, 'a.nunc@et.edu', '524413', 0),
(32, 'eros.turpis@tortorat.edu', '755433', 0),
(33, 'Vivamus.nibh.dolor@etultrices.com', '735856', 1),
(34, 'ultrices@amet.ca', '966936', 0),
(35, 'tincidunt.tempus.risus@massa.edu', '188255', 1),
(36, 'velit.egestas@ascelerisque.org', '611157', 0),
(37, 'nulla@faucibuslectusa.net', '849766', 1),
(38, 'tellus.Nunc@acipsum.edu', '769640', 1),
(39, 'nonummy.ipsum@felis.ca', '161269', 0),
(40, 'montes.nascetur.ridiculus@ultrices.ca', '642605', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
