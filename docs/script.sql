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
