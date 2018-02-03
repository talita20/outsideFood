-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Dez-2017 às 22:33
-- Versão do servidor: 10.1.28-MariaDB
-- PHP Version: 7.1.10

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
-- Estrutura da tabela `cidades`
--

CREATE TABLE `cidades` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cidades`
--

INSERT INTO `cidades` (`id`, `nome`) VALUES
(1, 'Aracaju'),
(2, 'Belém'),
(3, 'Belo Horizonte'),
(4, 'Boa Vista'),
(5, 'Brasília'),
(6, 'Campo Grande'),
(7, 'Cuiabá'),
(8, 'Curitiba'),
(9, 'Florianópolis'),
(10, 'Fortaleza'),
(11, 'Goiânia'),
(12, 'João Pessoa'),
(13, 'Macapá'),
(14, 'Maceió'),
(15, 'Manaus'),
(16, 'Natal'),
(17, 'Palmas'),
(18, 'Porto Alegre'),
(19, 'Porto Velho'),
(20, 'Recife'),
(21, 'Rio de Janeiro'),
(22, 'Salvador'),
(23, 'São Luís'),
(24, 'São Paulo'),
(25, 'Rio Branco'),
(26, 'Teresina'),
(27, 'Vitória'),
(28, 'Uberlândia'),
(29, 'Contagem'),
(30, 'Juiz de Fora'),
(31, 'Montes Claros'),
(32, 'João Monlevade'),
(33, 'Campinas'),
(34, 'Santos'),
(35, 'São José dos Campos'),
(36, 'Duque de Caxias'),
(37, 'Nova Iguaçu'),
(38, 'Niterói'),
(39, 'Volta Redonda'),
(40, 'Petrópolis');

-- --------------------------------------------------------

--
-- Estrutura da tabela `culinaria`
--

CREATE TABLE `culinaria` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo_culinaria` varchar(45) NOT NULL,
  `tempo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `culinaria` (`id`, `tipo_culinaria`, `tempo`) VALUES
(1, 'Brasileira', 10),
(2, 'Italiana', 8),
(3, 'Francesa', 9),
(4, 'Japonesa', 2),
(5, 'Indigena', 8),
(6, 'Mexicana', 3),
(7, 'Portuguesa', 2),
(8, 'Africana', 5),
(9, 'Asiática', 5),
(10, 'Mineira', 3),
(11, 'Nordestina', 11),
(12, 'Mesopotâmia', 10),
(13, 'Mediterrânea', 5),
(14, 'Sudoeste Americano', 8),
(15, 'Indiana', 15),
(16, 'Russa', 12),
(17, 'Chinesa', 2),
(18, 'Coreana', 4),
(19, 'Tailandesa', 6),
(20, 'Alemã', 10),
(21, 'Argentina', 9),
(22, 'Chilena', 7),
(23, 'Uruguaia', 3),
(24, 'Sul Africana', 12),
(25, 'Gaucha', 7),
(26, 'Goiana', 3),
(27, 'Paulista', 11),
(28, 'Baiana', 5),
(29, 'Paraense', 14),
(30, 'Capixaba', 2),
(31, 'Sul Matrogossense', 1),
(32, 'Paraibana', 7),
(33, 'Inglesa', 15),
(34, 'Grega', 13),
(35, 'Egípcia', 10),
(36, 'Australiana', 8),
(37, 'Peruana', 12),
(38, 'Colombiana', 13),
(39, 'Turca', 8),
(40, 'Canadense', 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `edicoes`
--

CREATE TABLE `edicoes` (
  `id` int(10) UNSIGNED NOT NULL,
  `numero` int(11) NOT NULL,
  `capacidade` int(11) NOT NULL,
  `lotacao` int(11) NOT NULL,
  `eventos_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `edicoes` (`id`, `numero`, `capacidade`, `lotacao`, `eventos_id`) VALUES
(1, 3, 269, 435, 1),
(2, 2, 670, 483, 1),
(3, 1, 506, 598, 1),
(4, 3, 333, 595, 1),
(5, 5, 375, 582, 1),
(6, 4, 593, 495, 1),
(7, 3, 393, 226, 1),
(8, 4, 459, 279, 1),
(9, 2, 288, 588, 1),
(10, 4, 696, 294, 1),
(11, 4, 623, 248, 1),
(12, 4, 476, 331, 1),
(13, 4, 528, 290, 1),
(14, 5, 417, 243, 1),
(15, 2, 566, 480, 1),
(16, 4, 347, 144, 1),
(17, 4, 580, 235, 1),
(18, 3, 349, 160, 1),
(19, 3, 402, 319, 1),
(20, 2, 495, 453, 1),
(21, 1, 282, 394, 1),
(22, 4, 283, 166, 1),
(23, 2, 455, 377, 1),
(24, 3, 284, 109, 1),
(25, 3, 505, 185, 1),
(26, 2, 665, 345, 1),
(27, 2, 278, 149, 1),
(28, 5, 565, 213, 1),
(29, 4, 524, 528, 1),
(30, 3, 279, 306, 1),
(31, 1, 555, 518, 1),
(32, 1, 428, 126, 1),
(33, 2, 528, 469, 1),
(34, 4, 590, 382, 1),
(35, 4, 431, 211, 1),
(36, 1, 272, 170, 1),
(37, 5, 685, 347, 1),
(38, 1, 350, 553, 1),
(39, 3, 568, 440, 1),
(40, 4, 662, 303, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `edicoes_has_espacos`
--

CREATE TABLE `edicoes_has_espacos` (
  `edicoes_id` int(10) UNSIGNED NOT NULL,
  `espacos_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `espacos`
--

CREATE TABLE `espacos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(45) NOT NULL,
  `aluguel` double NOT NULL,
  `metragem` double NOT NULL,
  `benfeitoria` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `espacos` (`id`, `nome`, `aluguel`, `metragem`, `benfeitoria`) VALUES
(1, 'Palco', 515.67, 400, 'Asfaltamento'),
(2, 'Quiosque', 433.92, 300, 'Substituição dos sistemas elétricos'),
(3, 'Rua 1', 602.91, 218.98, 'Limpeza da rua'),
(4, 'Rua 2', 518.14, 518.07, 'Asfaltamento'),
(5, 'Rua 3', 194.04, 228.26, 'Instalação de grades protetoras'),
(6, 'Rua 4', 281.85, 431.92, 'Obra de Jardinagem'),
(7, 'Quiosque', 433.92, 300, 'Reconstrução de muro'),
(8, 'Palco', 515.67, 400, 'Pintura'),
(9, 'Rua 5', 331.66, 780.09, 'Estátua'),
(10, 'Rua 3', 157.69, 106.49, 'Chafariz'),
(11, 'Gramado', 460, 250, 'Corte do gramado'),
(12, 'Gramado', 460, 250, 'Construção de grade'),
(13, 'Gramado', 460, 250, 'Obra de Jardinagem'),
(14, 'Gramado', 460, 250, 'Limpeza do gramado'),
(15, 'Gramado', 460, 250, 'Instalação de poste de luz'),
(16, 'Palco', 515.67, 400, 'Limpeza'),
(17, 'Palco', 515.67, 400, 'Pintura'),
(18, 'Quiosque', 433.92, 300, 'Instalação de grades protetoras'),
(19, 'Quiosque', 433.92, 300, 'Demão de Verniz'),
(20, 'Quiosque', 433.92, 300, 'Manutenção do telhado'),
(21, 'Quiosque', 433.92, 300, 'Substituição do piso'),
(22, 'Quiosque', 433.92, 300, 'Limpeza'),
(23, 'Quiosque', 433.92, 300, 'Instalação de grade'),
(24, 'Rua 1', 460, 602.91, 'Manutenção da rua'),
(25, 'Rua 1', 602.91, 250, 'Instalação de lixeira'),
(26, 'Rua 1', 460, 250, 'Pintura'),
(27, 'Rua 2', 602.91, 106.49, 'Manutenção da rua'),
(28, 'Rua 2', 602.91, 106.49, 'Instalação de lixeira'),
(29, 'Rua 2', 602.91, 106.49, 'Pintura'),
(30, 'Rua 3', 602.91, 106.49, 'Manutenção da rua'),
(31, 'Rua 3', 602.91, 106.49, 'Instalação de lixeira'),
(32, 'Rua 3', 602.91, 106.49, 'Pintura'),
(33, 'Rua 4', 602.91, 106.49, 'Manutenção da rua'),
(34, 'Rua 4', 602.91, 106.49, 'Instalação de lixeira'),
(35, 'Rua 4', 602.91, 106.49, 'Pintura'),
(36, 'Rua 5', 602.91, 106.49, 'Manutenção da rua'),
(37, 'Rua 5', 602.91, 106.49, 'Instalação de lixeira'),
(38, 'Rua 5', 602.91, 106.49, 'Pintura'),
(39, 'Cimentado', 307.99, 150.2, 'Encerar piso'),
(40, 'Cimentado', 307.99, 150.2, 'Limpeza'),
(41, 'Cimentado', 307.99, 150.2, 'Pintura'),
(42, 'Cimentado', 307.99, 150.2, 'Coleta de Lixo'),
(43, 'Cimentado', 307.99, 150.2, 'Instalação de lixeiras'),
(44, 'Cimentado', 307.99, 150.2, 'Instalação de Rampas'),
(45, 'Cimentado', 307.99, 150.2, 'Instalação de Postes de luz'),
(46, 'Cimentado', 307.99, 150.2, 'Manutenção da rede elétrica'),
(47, 'Cimentado', 307.99, 150.2, 'Manutenção Hidraulica'),
(48, 'Cimentado', 307.99, 150.2, 'Instalação de Pias'),
(49, 'Quiosque', 433.92, 300, 'Instalação de Pias'),
(50, 'Quiosque', 433.92, 300, 'Manutenção Hidraulica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `eventos`
--

CREATE TABLE `eventos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(45) NOT NULL,
  `data` date NOT NULL,
  `horario` time NOT NULL,
  `organizador` varchar(45) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `cidades_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(45) NOT NULL,
  `tipo` tinyint(4) NOT NULL,
  `servicos_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `funcionarios` (`id`, `nome`, `tipo`, `servicos_id`) VALUES
(1, 'Avye Mcgee', 0, 40),
(2, 'Rae Fischer', 0, 17),
(3, 'Maile Mcdowell', 1, 21),
(4, 'Inga Riley', 1, 31),
(5, 'Hilda Stein', 1, 25),
(6, 'Olivia Mcintyre', 1, 25),
(7, 'Linda Higgins', 1, 13),
(8, 'Blossom Whitley', 0, 17),
(9, 'Kelsey Rodriguez', 1, 36),
(10, 'Rana Stevenson', 1, 30),
(11, 'Cora Odonnell', 1, 14),
(12, 'Constance Terry', 1, 37),
(13, 'Katelyn Waters', 1, 15),
(14, 'Tallulah Solis', 0, 4),
(15, 'Maggie Hickman', 1, 40),
(16, 'Deborah Duran', 1, 32),
(17, 'Hannah Hubbard', 1, 21),
(18, 'Yetta Hinton', 1, 11),
(19, 'Oprah Abbott', 0, 21),
(20, 'Odette Vincent', 0, 36),
(21, 'Ingrid Russo', 1, 8),
(22, 'Sharon Walters', 1, 39),
(23, 'April Rutledge', 0, 30),
(24, 'Sigourney Dejesus', 1, 2),
(25, 'Lilah Lara', 1, 9),
(26, 'Alea Smith', 1, 4),
(27, 'Xaviera Sweeney', 0, 7),
(28, 'Mara Cooper', 0, 37),
(29, 'Vivien Davidson', 1, 31),
(30, 'Eliana Bishop', 1, 33),
(31, 'Germane Garza', 1, 1),
(32, 'Lucy Alford', 0, 34),
(33, 'Shelly Hendricks', 0, 1),
(34, 'Tana Ellison', 0, 2),
(35, 'Alexis Brock', 1, 35),
(36, 'Quon Gomez', 0, 12),
(37, 'Liberty Hart', 1, 27),
(38, 'Jenette Schultz', 0, 35),
(39, 'Stephanie Petty', 0, 3),
(40, 'Abra Waters', 1, 31),
(41, 'Justina Reese', 1, 28),
(42, 'Yael Mcfarland', 0, 36),
(43, 'Sandra Hudson', 0, 5),
(44, 'Ina Moore', 1, 33),
(45, 'Jasmine Pearson', 1, 14),
(46, 'McKenzie Frederick', 0, 27),
(47, 'Keelie Acevedo', 1, 14),
(48, 'Kelsie Miles', 0, 9),
(49, 'Cally Lamb', 0, 4),
(50, 'Nadine Fowler', 0, 6),
(51, 'Harriet Romero', 0, 24),
(52, 'Eugenia Stanley', 1, 11),
(53, 'Jaime Fletcher', 1, 29),
(54, 'Nadine Cooke', 0, 39),
(55, 'Xaviera Obrien', 0, 8),
(56, 'Quon Duke', 0, 16),
(57, 'Wendy Wolfe', 1, 37),
(58, 'Dara Mueller', 0, 33),
(59, 'Amethyst French', 1, 12),
(60, 'Chanda Mcdowell', 0, 37),
(61, 'Chanda Clemons', 0, 6),
(62, 'Kylan Christian', 1, 22),
(63, 'Quynn Gates', 0, 17),
(64, 'Rhona Hogan', 1, 24),
(65, 'Hope Murphy', 1, 35),
(66, 'Madeline Riggs', 0, 10),
(67, 'Yetta Finley', 0, 28),
(68, 'Xandra Day', 1, 21),
(69, 'Azalia Adkins', 1, 36),
(70, 'Zoe Velez', 0, 37),
(71, 'Nadine Nash', 1, 33),
(72, 'Yael Luna', 0, 10),
(73, 'Maryam Lowery', 1, 15),
(74, 'Jessamine Riddle', 0, 28),
(75, 'Candice Foley', 1, 30),
(76, 'Lysandra Malone', 1, 30),
(77, 'Mikayla Moss', 0, 16),
(78, 'Illiana Shepard', 0, 9),
(79, 'Kylie Roberson', 0, 35),
(80, 'Farrah Maxwell', 0, 7),
(81, 'Felicia Webster', 1, 13),
(82, 'Jacqueline Sanford', 0, 34),
(83, 'Dora Stafford', 0, 8),
(84, 'Demetria Hansen', 0, 21),
(85, 'Sarah Cline', 1, 14),
(86, 'Shea Sweeney', 0, 15),
(87, 'Kaitlin Young', 1, 38),
(88, 'Scarlet Sloan', 0, 20),
(89, 'Noelle Mullins', 0, 26),
(90, 'Denise Rojas', 0, 15),
(91, 'Juliet Bond', 1, 9),
(92, 'Ivy Fields', 1, 36),
(93, 'Cathleen Day', 1, 17),
(94, 'Martena Ewing', 1, 25),
(95, 'Carissa Baird', 0, 12),
(96, 'Maia Meyer', 0, 15),
(97, 'Tallulah Garner', 1, 23),
(98, 'Barbara Lester', 0, 9),
(99, 'Anika Britt', 1, 1),
(100, 'Signe Knowles', 0, 13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios_has_culinaria`
--

CREATE TABLE `funcionarios_has_culinaria` (
  `funcionarios_id` int(10) UNSIGNED NOT NULL,
  `culinaria_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ingredientes`
--

CREATE TABLE `ingredientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `locais`
--

CREATE TABLE `locais` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cidades_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `locais`
--

INSERT INTO `locais` (`id`, `nome`, `cidades_id`) VALUES
(1, 'Riomar Shopping', 1),
(2, 'Espaço São José Liberto', 2),
(3, 'Expominas', 3),
(4, 'Reciclar Eventos', 4),
(5, 'Casa das Nações', 5),
(6, 'Espaço Nutri', 6),
(7, 'Centro de Eventos do Pantanal', 7),
(8, 'Capri Gastronomia para Eventos', 8),
(9, 'Kobrasol', 9),
(10, 'Iate Clube de Fortaleza', 10),
(11, 'Viela Gastronômica', 11),
(12, 'Goiamum Gigante', 12),
(13, 'Estacionamento do SEBRAE', 13),
(14, 'Praça Multieventos', 14),
(15, 'Estacionamento Uni Nilton Lins', 15),
(16, 'AMPARO GASTRONÔMICO', 16),
(17, 'Praça vereador Tarcísio Machado', 17),
(18, 'Praça Gustavo Langsch', 18),
(19, 'R&M buffet e eventos gastronômicos', 19),
(20, 'Hotel Armação Convention Center', 20),
(21, 'Praia de Copacabana', 21),
(22, 'Casacor', 22),
(23, 'Shopping da Ilha', 23),
(24, 'Pacaembú', 24),
(25, 'Ágora Gastronomia & Eventos', 25),
(26, 'Praça da Bandeira', 26),
(27, 'Salão Sabores', 27),
(28, 'Granja Marileusa', 28),
(29, 'Praça Tancredo Neves', 29),
(30, 'Fátima Buffet', 30),
(31, 'Alfa Eventos', 31),
(32, 'Praça do Povo', 32),
(33, 'Condomínio Civil Shopping Center Iguatemi', 33),
(34, 'Centro Histórico de Santos', 34),
(35, 'Parque Robert Burle Max', 35),
(36, 'Parque Araruama', 36),
(37, 'Reserva Gastronomia', 37),
(38, 'Teatro Popular de Niterói', 38),
(39, 'Praça São José de Calazans', 39),
(40, 'Palácio de Cristal', 40),
(41, 'Praça da Liberdade', 3),
(42, 'Mineirinho', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `tipo` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `pratos`
--

CREATE TABLE `pratos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(45) NOT NULL,
  `preco` double NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `pratos` (`id`, `nome`, `preco`, `foto`) VALUES
(1, 'Feijoada', 17.23, 'foto'),
(2, 'Macarrão', 12.59, 'foto'),
(3, 'Sushi', 24.94, 'foto'),
(4, 'Crepes', 10.45, 'foto'),
(5, 'Mingau de Farinha de Tapioca', 13.89, 'foto'),
(6, 'Tacos', 10.46, 'foto'),
(7, 'Bacalhau', 39.67, 'foto'),
(8, 'Bobotie', 16.78, 'foto'),
(9, 'Ganoush', 19.31, 'foto'),
(10, 'Tourtière', 30.78, 'foto'),
(11, 'Mocotó', 20.23, 'foto'),
(12, 'Sanduiche Natural', 8.59, 'foto'),
(13, 'Pastel de Queijo', 4.5, 'foto'),
(14, 'Pastel de Carne', 4.5, 'foto'),
(15, 'Pastel de Pizza', 6.5, 'foto'),
(16, 'Feijão Tropeiro', 10, 'foto'),
(17, 'Vatapá', 15.99, 'foto'),
(18, 'Acarajé', 8, 'foto'),
(19, 'Empadão', 6, 'foto'),
(20, 'Tapioca', 9.99, 'foto'),
(21, 'Lasanha', 20.23, 'foto'),
(22, 'Escondidinho de Carne moída', 20, 'foto'),
(23, 'Hamburguer', 14.5, 'foto'),
(24, 'Misto Quente', 4.5, 'foto'),
(25, 'Moqueca', 6.5, 'foto'),
(26, 'Charque', 20.46, 'foto'),
(27, 'Risoto', 39.67, 'foto'),
(28, 'Khao tom', 16.78, 'foto'),
(29, 'Bún bò Huế', 19.31, 'foto'),
(30, 'Bánh bao', 30.78, 'foto'),
(31, 'Bánh xèo', 20.23, 'foto'),
(32, 'Cassoulet', 38.59, 'foto'),
(33, 'Blanquette de veau', 44.5, 'foto'),
(34, 'Coq au vin', 4.5, 'foto'),
(35, 'Biltong', 26.5, 'foto'),
(36, 'Bobotie', 10.46, 'foto'),
(37, 'Chakalaka', 39.67, 'foto'),
(38, 'Baião de Dois', 16.78, 'foto'),
(39, 'Melktert', 19.31, 'foto'),
(40, 'Sosatie', 30.78, 'foto');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pratos_has_ingredientes`
--

CREATE TABLE `pratos_has_ingredientes` (
  `pratos_id` int(10) UNSIGNED NOT NULL,
  `ingredientes_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo` tinyint(4) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `salario` double NOT NULL,
  `espacos_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `servicos` (`id`, `tipo`, `foto`, `salario`, `espacos_id`) VALUES
(1, 1, 'foto', 1425.54, 2),
(2, 0, 'foto', 4139.73, 4),
(3, 1, 'foto', 1294.95, 11),
(4, 0, 'foto', 3339.22, 16),
(5, 0, 'foto', 3966.67, 27),
(6, 0, 'foto', 3744.36, 2),
(7, 1, 'foto', 2214.43, 40),
(8, 0, 'foto', 644.84, 8),
(9, 1, 'foto', 1775.94, 28),
(10, 0, 'foto', 1901, 34),
(11, 1, 'foto', 832, 9),
(12, 0, 'foto', 3380.2, 39),
(13, 1, 'foto', 3933.89, 22),
(14, 0, 'foto', 2835.4, 38),
(15, 1, 'foto', 4635.49, 20),
(16, 0, 'foto', 1925.75, 2),
(17, 0, 'foto', 3675.95, 28),
(18, 1, 'foto', 3068.13, 34),
(19, 0, 'foto', 3275.16, 27),
(20, 0, 'foto', 2339.77, 8),
(21, 0, 'foto', 1992.99, 17),
(22, 1, 'foto', 1711.67, 33),
(23, 0, 'foto', 2052.32, 36),
(24, 1, 'foto', 2574.92, 1),
(25, 0, 'foto', 2688.76, 3),
(26, 0, 'foto', 545.1, 6),
(27, 0, 'foto', 2052.01, 27),
(28, 0, 'foto', 992.87, 5),
(29, 1, 'foto', 997.46, 20),
(30, 0, 'foto', 4602.51, 25),
(31, 1, 'foto', 3264.5, 23),
(32, 0, 'foto', 572.52, 34),
(33, 1, 'foto', 706.13, 5),
(34, 0, 'foto', 2906.66, 40),
(35, 1, 'foto', 4756.79, 33),
(36, 0, 'foto', 3025.02, 34),
(37, 0, 'foto', 4625.51, 7),
(38, 1, 'foto', 3376.28, 37),
(39, 0, 'foto', 1828.58, 5),
(40, 1, 'foto', 3153.68, 21),
(41, 1, 'foto', 1931.54, 7),
(42, 0, 'foto', 4336.09, 11),
(43, 0, 'foto', 3977.8, 30),
(44, 0, 'foto', 3004.32, 37),
(45, 1, 'foto', 3885.03, 28),
(46, 1, 'foto', 4137.09, 11),
(47, 1, 'foto', 4565.21, 40),
(48, 0, 'foto', 3777.27, 38),
(49, 1, 'foto', 579.76, 7),
(50, 0, 'foto', 1156.04, 2),
(51, 1, 'foto', 2301.72, 4),
(52, 0, 'foto', 2216.46, 30),
(53, 0, 'foto', 2218.22, 40),
(54, 1, 'foto', 2116.15, 7),
(55, 1, 'foto', 1648.44, 7),
(56, 0, 'foto', 3124.38, 35),
(57, 0, 'foto', 4772.62, 21),
(58, 0, 'foto', 1826.99, 27),
(59, 1, 'foto', 4880.68, 7),
(60, 1, 'foto', 2393.15, 6),
(61, 0, 'foto', 843.04, 13),
(62, 1, 'foto', 4795.7, 16),
(63, 1, 'foto', 1456.03, 37),
(64, 0, 'foto', 2427.83, 23),
(65, 0, 'foto', 527.96, 20),
(66, 0, 'foto', 715.23, 39),
(67, 0, 'foto', 516.94, 25),
(68, 0, 'foto', 4998.96, 24),
(69, 0, 'foto', 2968.17, 17),
(70, 1, 'foto', 2289.35, 20),
(71, 0, 'foto', 2646.54, 33),
(72, 0, 'foto', 649.05, 12),
(73, 0, 'foto', 4917.91, 1),
(74, 0, 'foto', 3059.28, 30),
(75, 0, 'foto', 1106.24, 19),
(76, 1, 'foto', 2291.28, 18),
(77, 0, 'foto', 2982.62, 29),
(78, 1, 'foto', 2480.82, 12),
(79, 0, 'foto', 2521.7, 12),
(80, 1, 'foto', 2837.31, 5),
(81, 1, 'foto', 2419.27, 25),
(82, 1, 'foto', 4901.65, 16),
(83, 1, 'foto', 3839.23, 30),
(84, 0, 'foto', 1146.93, 27),
(85, 0, 'foto', 3516.95, 11),
(86, 0, 'foto', 3967.86, 25),
(87, 1, 'foto', 709.07, 27),
(88, 1, 'foto', 4437.07, 15),
(89, 1, 'foto', 3794.26, 14),
(90, 0, 'foto', 1847.84, 27),
(91, 1, 'foto', 922.12, 10),
(92, 1, 'foto', 1876.55, 13),
(93, 0, 'foto', 1280.77, 25),
(94, 0, 'foto', 3624.22, 13),
(95, 1, 'foto', 3313.55, 25),
(96, 1, 'foto', 2703.35, 6),
(97, 1, 'foto', 3844.16, 24),
(98, 0, 'foto', 4198.36, 4),
(99, 1, 'foto', 508.78, 35),
(100, 1, 'foto', 2477.69, 4);
-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos_has_pratos`
--

CREATE TABLE `servicos_has_pratos` (
  `servicos_id` int(10) UNSIGNED NOT NULL,
  `pratos_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantidade` int(11) NOT NULL,
  `servicos_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `culinaria`
--
ALTER TABLE `culinaria`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edicoes`
--
ALTER TABLE `edicoes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_edicoes_eventos1_idx` (`eventos_id`);

--
-- Indexes for table `edicoes_has_espacos`
--
ALTER TABLE `edicoes_has_espacos`
  ADD PRIMARY KEY (`edicoes_id`,`espacos_id`),
  ADD KEY `fk_edicoes_has_espacos_espacos1_idx` (`espacos_id`),
  ADD KEY `fk_edicoes_has_espacos_edicoes1_idx` (`edicoes_id`);

--
-- Indexes for table `espacos`
--
ALTER TABLE `espacos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_eventos_cidades1_idx` (`cidades_id`);

--
-- Indexes for table `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_funcionarios_servicos1_idx` (`servicos_id`);

--
-- Indexes for table `funcionarios_has_culinaria`
--
ALTER TABLE `funcionarios_has_culinaria`
  ADD PRIMARY KEY (`funcionarios_id`,`culinaria_id`),
  ADD KEY `fk_funcionarios_has_culinaria_culinaria1_idx` (`culinaria_id`),
  ADD KEY `fk_funcionarios_has_culinaria_funcionarios1_idx` (`funcionarios_id`);

--
-- Indexes for table `ingredientes`
--
ALTER TABLE `ingredientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locais`
--
ALTER TABLE `locais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_locais_cidades_idx` (`cidades_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pratos`
--
ALTER TABLE `pratos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pratos_has_ingredientes`
--
ALTER TABLE `pratos_has_ingredientes`
  ADD PRIMARY KEY (`pratos_id`,`ingredientes_id`),
  ADD KEY `fk_pratos_has_ingredientes_ingredientes1_idx` (`ingredientes_id`),
  ADD KEY `fk_pratos_has_ingredientes_pratos1_idx` (`pratos_id`);

--
-- Indexes for table `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_servicos_espacos1_idx` (`espacos_id`);

--
-- Indexes for table `servicos_has_pratos`
--
ALTER TABLE `servicos_has_pratos`
  ADD PRIMARY KEY (`servicos_id`,`pratos_id`),
  ADD KEY `fk_servicos_has_pratos_pratos1_idx` (`pratos_id`),
  ADD KEY `fk_servicos_has_pratos_servicos1_idx` (`servicos_id`);

--
-- Indexes for table `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_vendas_servicos1_idx` (`servicos_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cidades`
--
ALTER TABLE `cidades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `culinaria`
--
ALTER TABLE `culinaria`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `edicoes`
--
ALTER TABLE `edicoes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `espacos`
--
ALTER TABLE `espacos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eventos`
--
ALTER TABLE `eventos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ingredientes`
--
ALTER TABLE `ingredientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locais`
--
ALTER TABLE `locais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pratos`
--
ALTER TABLE `pratos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `edicoes`
--
ALTER TABLE `edicoes`
  ADD CONSTRAINT `fk_edicoes_eventos1` FOREIGN KEY (`eventos_id`) REFERENCES `eventos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `edicoes_has_espacos`
--
ALTER TABLE `edicoes_has_espacos`
  ADD CONSTRAINT `fk_edicoes_has_espacos_edicoes1` FOREIGN KEY (`edicoes_id`) REFERENCES `edicoes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_edicoes_has_espacos_espacos1` FOREIGN KEY (`espacos_id`) REFERENCES `espacos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `eventos`
--
ALTER TABLE `eventos`
  ADD CONSTRAINT `fk_eventos_cidades1` FOREIGN KEY (`cidades_id`) REFERENCES `cidades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD CONSTRAINT `fk_funcionarios_servicos1` FOREIGN KEY (`servicos_id`) REFERENCES `servicos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `funcionarios_has_culinaria`
--
ALTER TABLE `funcionarios_has_culinaria`
  ADD CONSTRAINT `fk_funcionarios_has_culinaria_culinaria1` FOREIGN KEY (`culinaria_id`) REFERENCES `culinaria` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_funcionarios_has_culinaria_funcionarios1` FOREIGN KEY (`funcionarios_id`) REFERENCES `funcionarios` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `locais`
--
ALTER TABLE `locais`
  ADD CONSTRAINT `fk_locais_cidades` FOREIGN KEY (`cidades_id`) REFERENCES `cidades` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `pratos_has_ingredientes`
--
ALTER TABLE `pratos_has_ingredientes`
  ADD CONSTRAINT `fk_pratos_has_ingredientes_ingredientes1` FOREIGN KEY (`ingredientes_id`) REFERENCES `ingredientes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pratos_has_ingredientes_pratos1` FOREIGN KEY (`pratos_id`) REFERENCES `pratos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `servicos`
--
ALTER TABLE `servicos`
  ADD CONSTRAINT `fk_servicos_espacos1` FOREIGN KEY (`espacos_id`) REFERENCES `espacos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `servicos_has_pratos`
--
ALTER TABLE `servicos_has_pratos`
  ADD CONSTRAINT `fk_servicos_has_pratos_pratos1` FOREIGN KEY (`pratos_id`) REFERENCES `pratos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_servicos_has_pratos_servicos1` FOREIGN KEY (`servicos_id`) REFERENCES `servicos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `vendas`
--
ALTER TABLE `vendas`
  ADD CONSTRAINT `fk_vendas_servicos1` FOREIGN KEY (`servicos_id`) REFERENCES `servicos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
