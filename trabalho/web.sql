-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12-Dez-2018 às 22:51
-- Versão do servidor: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `assalto`
--

CREATE TABLE `assalto` (
  `id` int(11) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `assalto`
--

INSERT INTO `assalto` (`id`, `bairro`, `rua`, `data`) VALUES
(1, 'Cidade baixa', 'Avenida Loureiro da Silva', '2018-12-04'),
(2, 'centro', 'Avenida Alberto Bins', '2018-12-04'),
(4, 'centro', 'Avenida Alberto Bins', '2018-12-05'),
(5, 'Cidade baixa', 'Rua Luiz Afonso', '2018-12-12'),
(6, 'Cidade baixa', 'Rua Vereador Dilamar Machado', '2018-12-01'),
(7, 'centro', 'Largo Archimedes Fortini', '2018-12-09'),
(8, 'Cidade baixa', 'Rua Miguel Teixeira', '2018-11-06'),
(9, 'centro', 'Largo Archimedes Fortini', '2018-11-12'),
(10, 'Cidade baixa', 'Rua Joaquim Nabuco', '2018-11-06'),
(11, 'centro', 'Avenida Osvaldo Aranha', '2018-11-16'),
(12, 'Cidade baixa', 'Rua Alberto Torres', '2018-10-12'),
(13, 'centro', 'Avenida Loureiro da Silva', '2018-10-08'),
(14, 'Cidade baixa', 'Rua Luiz Afonso', '2018-10-17'),
(15, 'Cidade baixa', 'Rua Sofia Veloso', '2018-10-10'),
(16, 'Cidade baixa', 'Rua Alberto Torres', '2018-12-10'),
(17, 'centro', 'Avenida Senador Salgado Filho', '2018-12-02'),
(18, 'Cidade baixa', 'Rua Vereador Dilamar Machado', '2018-09-13'),
(19, 'Cidade baixa', 'Travessa Comendador Batista', '2018-12-17'),
(20, 'centro', 'Rua General Andrade Neves', '2018-12-13'),
(21, 'centro', 'Avenida Borges de Medeiros', '2018-12-15'),
(22, 'centro', 'Largo Archimedes Fortini', '2018-12-10'),
(23, 'Cidade baixa', 'Rua Octávio Corrêa', '2018-10-10'),
(24, 'Cidade baixa', 'Rua da República', '2018-11-28'),
(25, 'centro', 'Avenida Independência', '2018-11-13');

-- --------------------------------------------------------

--
-- Estrutura da tabela `ruas`
--

CREATE TABLE `ruas` (
  `id` int(11) NOT NULL,
  `bairro` varchar(100) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `problema` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `ruas`
--

INSERT INTO `ruas` (`id`, `bairro`, `rua`, `problema`) VALUES
(1, 'Cidade baixa', 'Rua Luiz Afonso', 'Buraco na via'),
(2, 'centro', 'Largo dos Medeiros', 'Boeiro aberto'),
(3, 'Cidade baixa', 'Rua Joaquim Nabuco', 'Boeiro aberto'),
(4, 'centro', 'Avenida Osvaldo Aranha', 'Buraco na via'),
(5, 'centro', 'Largo dos Medeiros', 'Sem asfalto'),
(6, 'Cidade baixa', 'Rua Alberto Torres', 'Buraco na via'),
(7, 'centro', 'Avenida Senador Salgado Filho', 'Boeiro aberto'),
(8, 'Cidade baixa', 'Rua Luiz Afonso', 'Boeiro aberto'),
(9, 'centro', 'Avenida Borges de Medeiros', 'Boeiro aberto'),
(10, 'centro', 'Rua Carlos Chagas', 'Buraco na via'),
(11, 'centro', 'Avenida Osvaldo Aranha', 'Buraco na via'),
(12, 'Cidade baixa', 'Travessa Venezianos', 'Sem asfalto'),
(13, 'centro', 'Rua dos Andradas', 'Sem asfalto'),
(14, 'centro', 'Rua Doutor Flores', 'Boeiro aberto'),
(15, 'centro', 'Avenida João Pessoa', 'Calçada quebrada'),
(16, 'centro', 'Largo Jornalista Glênio Peres', 'Calçada quebrada'),
(17, 'centro', 'Avenida Otávio Rocha', 'Calçada quebrada'),
(18, 'Cidade baixa', 'Rua Leão XIII', 'Falta iluminação'),
(19, 'centro', 'Avenida Júlio de Castilhos', 'Boeiro aberto'),
(20, 'Cidade baixa', 'Rua João Alfredo', 'Falta iluminação'),
(21, 'centro', 'Avenida Mauá', 'Calçada quebrada'),
(22, 'centro', 'Avenida Independência', 'Calçada quebrada'),
(23, 'Cidade baixa', 'Rua Décio Martins Costa', 'Falta iluminação');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assalto`
--
ALTER TABLE `assalto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ruas`
--
ALTER TABLE `ruas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assalto`
--
ALTER TABLE `assalto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ruas`
--
ALTER TABLE `ruas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
