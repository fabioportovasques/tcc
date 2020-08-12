-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Ago-2020 às 23:13
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.4

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
-- Estrutura da tabela `cargo`
--

CREATE TABLE `cargo` (
  `cod_cargo` int(10) NOT NULL,
  `nome_cargo` varchar(60) DEFAULT NULL,
  `descricao_cargo` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cargo`
--

INSERT INTO `cargo` (`cod_cargo`, `nome_cargo`, `descricao_cargo`) VALUES
(1, 'Almoxarife', 'Responsavel pela pelo almoxarifado'),
(2, 'aux. de almoxarifado', 'Responsavel pela pelo almoxarifado'),
(3, 'tecnico em informatica', 'Responsavel pela T.I da empresa'),
(4, 'mecanico', ''),
(5, 'Engenheiro', 'Responsavel pela atualização da planta daempresa além de obras em geral'),
(6, 'Aux. de serviços gerais', 'Responsavel pela limpeza em geral');

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `cod_departamento` int(10) NOT NULL,
  `nome_dep` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`cod_departamento`, `nome_dep`) VALUES
(1, 'Almoxarifado'),
(2, 'tecnologia da informação'),
(3, 'Mecanica'),
(4, 'serviços gerais'),
(5, 'engenharia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `epi`
--

CREATE TABLE `epi` (
  `cod_epi` int(10) NOT NULL,
  `situacao` varchar(30) DEFAULT NULL,
  `venc_ca` date DEFAULT NULL,
  `estoque_minimo` int(200) DEFAULT NULL,
  `unidade` varchar(40) DEFAULT NULL,
  `ca` int(15) DEFAULT NULL,
  `desc_epi` varchar(100) DEFAULT NULL,
  `nome_fornecedor` varchar(40) DEFAULT NULL,
  `nome_epi` varchar(50) DEFAULT NULL,
  `data_fabricacao` date DEFAULT NULL,
  `fabricante` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `epi_fornecedor`
--

CREATE TABLE `epi_fornecedor` (
  `cod_epi` int(10) DEFAULT NULL,
  `cod_fornecedor` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fabricante`
--

CREATE TABLE `fabricante` (
  `cod_fabricante` int(10) NOT NULL,
  `cidade_fabricante` varchar(40) DEFAULT NULL,
  `uf_fabricante` char(2) DEFAULT NULL,
  `nome_fabricanter` varchar(40) DEFAULT NULL,
  `telefone_fabricante` int(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fabricante_epi`
--

CREATE TABLE `fabricante_epi` (
  `cod_epi` int(10) DEFAULT NULL,
  `cod_fabricante` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ficha_epi`
--

CREATE TABLE `ficha_epi` (
  `cod_ficha_epi` int(10) NOT NULL,
  `matricula_funcionario` int(10) DEFAULT NULL,
  `quant_epi` int(30) DEFAULT NULL,
  `ca` int(10) DEFAULT NULL,
  `nome_epi` varchar(50) DEFAULT NULL,
  `data_devol_epi` date DEFAULT NULL,
  `data_entega_epi` date DEFAULT NULL,
  `obs_devolucao` varchar(200) DEFAULT NULL,
  `obs_entrega` varchar(200) DEFAULT NULL,
  `motivo_obtencao` varchar(50) DEFAULT NULL,
  `cod_epi` int(10) DEFAULT NULL,
  `cod_motivo` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `cod_fornecedor` int(10) NOT NULL,
  `uf` char(2) DEFAULT NULL,
  `obs` varchar(50) DEFAULT NULL,
  `telefone_comercial` int(25) DEFAULT NULL,
  `celular` int(20) DEFAULT NULL,
  `site` varchar(40) DEFAULT NULL,
  `razao_social` varchar(50) DEFAULT NULL,
  `cep` char(15) DEFAULT NULL,
  `bairro` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `numero_rua` int(10) DEFAULT NULL,
  `nome_representante` varchar(30) DEFAULT NULL,
  `nacionalidade` varchar(25) DEFAULT NULL,
  `cnpj` char(15) DEFAULT NULL,
  `nome_fornecedor` varchar(50) DEFAULT NULL,
  `cidade` varchar(40) DEFAULT NULL,
  `rua` varchar(30) DEFAULT NULL,
  `nome_fantasia` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `dep_funcionario` varchar(40) DEFAULT NULL,
  `cod_departamento` int(10) DEFAULT NULL,
  `cod_cargo` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`matricula_funcionario`, `nacionalidade`, `cpf`, `idade`, `data_demissao`, `data_admissao`, `data_nascimento`, `uf`, `nome_funcionario`, `sobrenome_funcionario`, `cidade`, `telefone1`, `telefone2`, `senha`, `rg`, `genero`, `status`, `foto_func`, `numero_rua`, `dep_funcionario`, `cod_departamento`, `cod_cargo`) VALUES
(11, 'Brazil', '01023445678', 23, '0000-00-00', '2020-10-20', '1987-10-20', 'rs', 'Jacinto', 'Borges', 'Hulha Negra', 99876534, 0, 2345777, '34666666666', 'masculino', 'ativo', '', 234, NULL, 2, 4),
(20, 'Brasileiro', '020456783', 25, '2019-08-06', '2020-08-01', '0000-00-00', 'rs', 'Carlos', 'Vitalicio', 'Hulha Negra', 999876543, NULL, 342354435, '1096853931', 'masculino', 'ativo', NULL, 434, NULL, 3, 4),
(21, 'Brasileiro', '020456783', 25, '2019-08-06', '2020-08-01', '0000-00-00', 'rs', 'fulano 1', 'de tal', 'Hulha Negra', 999876543, NULL, 342354435, '1096853931', 'masculino', 'ativo', NULL, 434, NULL, 3, 4),
(22, 'Brasileiro', '020456783', 25, '2019-08-06', '2020-08-01', '0000-00-00', 'rs', 'fulano 2', 'de tal2', 'Hulha Negra', 999876543, NULL, 342354435, '1096853931', 'masculino', 'ativo', NULL, 434, NULL, 1, 1),
(23, 'Brasileiro', '020456783', 25, '2019-08-06', '2020-08-01', '0000-00-00', 'rs', 'fulana 1', 'de tal 1', 'Bagé', 999876543, NULL, 342354435, '1096853931', 'Femenino', 'ativo', NULL, 434, NULL, 4, 6),
(24, 'Brasileiro', '020456783', 25, '2019-08-06', '2020-08-01', '0000-00-00', 'rs', 'fulano 3', 'de tal3', 'Bagé', 999876543, NULL, 342354435, '1096853931', 'masculino', 'ativo', NULL, 434, NULL, 5, 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario_fichaepi`
--

CREATE TABLE `funcionario_fichaepi` (
  `cod_ficha_epi` int(10) DEFAULT NULL,
  `matricula_funcionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario_tarefa`
--

CREATE TABLE `funcionario_tarefa` (
  `cod_tarefa` int(10) DEFAULT NULL,
  `matricula_funcionario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `motivo`
--

CREATE TABLE `motivo` (
  `cod_motivo` int(10) NOT NULL,
  `nome_motivo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tarefa`
--

CREATE TABLE `tarefa` (
  `cod_tarefa` int(10) NOT NULL,
  `obs` varchar(300) DEFAULT NULL,
  `descri_tarefa` varchar(300) DEFAULT NULL,
  `hora_fim_tarefa` time DEFAULT NULL,
  `hora_inicio_tarefa` time DEFAULT NULL,
  `quantidade_funcionario_tarefa` int(50) DEFAULT NULL,
  `data_fim_tarefa` date DEFAULT NULL,
  `data_inicio_tarefa` date DEFAULT NULL,
  `status_tarefa` varchar(25) DEFAULT NULL,
  `local_tarefa` varchar(100) DEFAULT NULL,
  `nome_tarefa` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tarefa_epi`
--

CREATE TABLE `tarefa_epi` (
  `cod_tarefa` int(10) DEFAULT NULL,
  `cod_epi` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`cod_cargo`);

--
-- Índices para tabela `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`cod_departamento`);

--
-- Índices para tabela `epi`
--
ALTER TABLE `epi`
  ADD PRIMARY KEY (`cod_epi`);

--
-- Índices para tabela `epi_fornecedor`
--
ALTER TABLE `epi_fornecedor`
  ADD KEY `cod_epi` (`cod_epi`),
  ADD KEY `cod_fornecedor` (`cod_fornecedor`);

--
-- Índices para tabela `fabricante`
--
ALTER TABLE `fabricante`
  ADD PRIMARY KEY (`cod_fabricante`);

--
-- Índices para tabela `fabricante_epi`
--
ALTER TABLE `fabricante_epi`
  ADD KEY `cod_epi` (`cod_epi`),
  ADD KEY `cod_fabricante` (`cod_fabricante`);

--
-- Índices para tabela `ficha_epi`
--
ALTER TABLE `ficha_epi`
  ADD PRIMARY KEY (`cod_ficha_epi`),
  ADD KEY `cod_epi` (`cod_epi`),
  ADD KEY `cod_motivo` (`cod_motivo`);

--
-- Índices para tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`cod_fornecedor`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`matricula_funcionario`),
  ADD KEY `cod_departamento` (`cod_departamento`);

--
-- Índices para tabela `funcionario_fichaepi`
--
ALTER TABLE `funcionario_fichaepi`
  ADD KEY `cod_ficha_epi` (`cod_ficha_epi`);

--
-- Índices para tabela `motivo`
--
ALTER TABLE `motivo`
  ADD PRIMARY KEY (`cod_motivo`);

--
-- Índices para tabela `tarefa`
--
ALTER TABLE `tarefa`
  ADD PRIMARY KEY (`cod_tarefa`);

--
-- Índices para tabela `tarefa_epi`
--
ALTER TABLE `tarefa_epi`
  ADD KEY `cod_tarefa` (`cod_tarefa`),
  ADD KEY `cod_epi` (`cod_epi`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cargo`
--
ALTER TABLE `cargo`
  MODIFY `cod_cargo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `departamento`
--
ALTER TABLE `departamento`
  MODIFY `cod_departamento` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `epi`
--
ALTER TABLE `epi`
  MODIFY `cod_epi` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fabricante`
--
ALTER TABLE `fabricante`
  MODIFY `cod_fabricante` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ficha_epi`
--
ALTER TABLE `ficha_epi`
  MODIFY `cod_ficha_epi` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `cod_fornecedor` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `matricula_funcionario` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `motivo`
--
ALTER TABLE `motivo`
  MODIFY `cod_motivo` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tarefa`
--
ALTER TABLE `tarefa`
  MODIFY `cod_tarefa` int(10) NOT NULL AUTO_INCREMENT;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `epi_fornecedor`
--
ALTER TABLE `epi_fornecedor`
  ADD CONSTRAINT `epi_fornecedor_ibfk_1` FOREIGN KEY (`cod_epi`) REFERENCES `epi` (`cod_epi`),
  ADD CONSTRAINT `epi_fornecedor_ibfk_2` FOREIGN KEY (`cod_fornecedor`) REFERENCES `fornecedor` (`cod_fornecedor`);

--
-- Limitadores para a tabela `fabricante_epi`
--
ALTER TABLE `fabricante_epi`
  ADD CONSTRAINT `fabricante_epi_ibfk_1` FOREIGN KEY (`cod_epi`) REFERENCES `epi` (`cod_epi`),
  ADD CONSTRAINT `fabricante_epi_ibfk_2` FOREIGN KEY (`cod_fabricante`) REFERENCES `fabricante` (`cod_fabricante`);

--
-- Limitadores para a tabela `ficha_epi`
--
ALTER TABLE `ficha_epi`
  ADD CONSTRAINT `ficha_epi_ibfk_1` FOREIGN KEY (`cod_epi`) REFERENCES `epi` (`cod_epi`),
  ADD CONSTRAINT `ficha_epi_ibfk_2` FOREIGN KEY (`cod_motivo`) REFERENCES `motivo` (`cod_motivo`);

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`cod_departamento`) REFERENCES `departamento` (`cod_departamento`);

--
-- Limitadores para a tabela `funcionario_fichaepi`
--
ALTER TABLE `funcionario_fichaepi`
  ADD CONSTRAINT `funcionario_fichaepi_ibfk_1` FOREIGN KEY (`cod_ficha_epi`) REFERENCES `ficha_epi` (`cod_ficha_epi`);

--
-- Limitadores para a tabela `tarefa_epi`
--
ALTER TABLE `tarefa_epi`
  ADD CONSTRAINT `tarefa_epi_ibfk_1` FOREIGN KEY (`cod_tarefa`) REFERENCES `tarefa` (`cod_tarefa`),
  ADD CONSTRAINT `tarefa_epi_ibfk_2` FOREIGN KEY (`cod_epi`) REFERENCES `epi` (`cod_epi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
