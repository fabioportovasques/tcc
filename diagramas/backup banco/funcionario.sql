-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Ago-2020 às 04:15
-- Versão do servidor: 10.4.13-MariaDB
-- versão do PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `segware-epi`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `matricula_funcionario` int(10) NOT NULL,
  `nacionalidade` varchar(40) DEFAULT NULL,
  `cpf` char(11) DEFAULT NULL,
  `idade` int(10) DEFAULT NULL,
  `data_demissao` date DEFAULT NULL,
  `data_admissao` date DEFAULT NULL,
  `data_nascimento` date DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `nome_funcionario` char(40) DEFAULT NULL,
  `sobrenome_funcionario` varchar(100) DEFAULT NULL,
  `cidade` varchar(40) DEFAULT NULL,
  `telefone1` int(15) DEFAULT NULL,
  `telefone2` int(15) DEFAULT NULL,
  `senha` int(10) DEFAULT NULL,
  `rg` varchar(30) DEFAULT NULL,
  `genero` varchar(30) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `foto_func` blob DEFAULT NULL,
  `numero_rua` int(10) DEFAULT NULL,
  `cod_departamento` int(10) DEFAULT NULL,
  `cod_cargo` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`matricula_funcionario`, `nacionalidade`, `cpf`, `idade`, `data_demissao`, `data_admissao`, `data_nascimento`, `uf`, `nome_funcionario`, `sobrenome_funcionario`, `cidade`, `telefone1`, `telefone2`, `senha`, `rg`, `genero`, `status`, `foto_func`, `numero_rua`, `cod_departamento`, `cod_cargo`) VALUES
(3, 'Nacionalidade', '02041884070', 32, NULL, '2020-08-20', '1987-11-17', 'rs', 'fabio geovane', 'porto vasques', 'Bagé', 999367651, NULL, 224460, '1096853931', 'masculiino', 'ativo', NULL, 841, 1, NULL),
(4, 'Brasileiro', '020456783', 25, '2019-08-06', '2020-08-01', '0000-00-00', 'rs', 'Carlos', 'Vitalicio', 'Hulha Negra', 999876543, NULL, 342354435, '1096853931', 'masculino', 'ativo', NULL, 434, 2, NULL),
(6, 'Brazil', '01023445678', 23, '0000-00-00', '2020-10-20', '1987-10-20', 'rs', 'fulano', 'de tal', 'Hulha Negra', 99876534, 0, 2345777, '34666666666', 'masculino', 'ativo', '', 234, 2, 4),
(7, 'Brazil', '01023445678', 23, '0000-00-00', '2020-10-20', '1987-10-20', 'rs', 'Jacinto', 'Borges', 'Candiota', 99876534, 0, 2345777, '34666666666', 'masculino', 'ativo', '', 234, 2, 4),
(8, 'Brazil', '01023445678', 23, '0000-00-00', '2020-10-20', '1987-10-20', 'rs', 'Maria', 'Aparecida', 'Pinheiro Machado', 99876534, 0, 2345777, '34666666666', 'masculino', 'ativo', '', 234, 6, 7);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`matricula_funcionario`),
  ADD KEY `cod_departamento` (`cod_departamento`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `matricula_funcionario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`cod_departamento`) REFERENCES `departamento` (`cod_departamento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
