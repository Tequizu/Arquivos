-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 01-Nov-2019 às 04:10
-- Versão do servidor: 10.1.40-MariaDB
-- versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trab`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `innere` ()  select *from cliente  c
INNER JOIN tipocliente tc ON
c.tpc=tc.tpc$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `innere2` ()  SELECT *FROM funcionario f
inner JOIN cargo cg ON
f.idc=cg.idc$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `inneree` ()  SELECT *FROM funcionario f
INNER JOIN endereço ende ON
f.ide=ende.ide$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `innereec` ()  SELECT *FROM cliente c
INNER JOIN endereço ende ON
c.ide=ende.ide$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `innereee` ()  SELECT *FROM empresa e
INNER JOIN endereço ende ON
e.ide=ende.ide$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `innerempresa` ()  SELECT *FROM empresa emp
INNER JOIN tipoempresa te ON
emp.idest=te.idest$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `innerfc` ()  SELECT *from funcionario fc
INNER JOIN venda v on
fc.idf=v.idf$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `innerfcc` ()  SELECT *FROM fornecedor fd
INNER JOIN tipofornecedor tfc ON
fd.idtpfc=tfc.idtpfc$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `innerp` ()  SELECT *FROM hist h
INNER JOIN produto pr ON
h.idpr=pr.idpr$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `innervenda` ()  SELECT *from fornecedor fcc
INNER JOIN produto pt ON
fcc.idfc=pt.idfc$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargo`
--

CREATE TABLE `cargo` (
  `idc` int(11) NOT NULL,
  `cargo` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cargo`
--

INSERT INTO `cargo` (`idc`, `cargo`) VALUES
(300, 'Estagiario');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `idcc` int(11) NOT NULL,
  `categ` varchar(330) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`idcc`, `categ`) VALUES
(1, 'fruta');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `tpc` int(11) DEFAULT NULL,
  `ide` int(11) DEFAULT NULL,
  `nome` varchar(220) DEFAULT NULL,
  `cpf` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `tpc`, `ide`, `nome`, `cpf`) VALUES
(1, 1, 1, 'Daniel', 321);

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `ides` int(11) NOT NULL,
  `idest` int(11) DEFAULT NULL,
  `ide` int(11) DEFAULT NULL,
  `nomedaempresa` varchar(220) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`ides`, `idest`, `ide`, `nomedaempresa`) VALUES
(800, 800, 800, 'Acessoria');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereço`
--

CREATE TABLE `endereço` (
  `ide` int(11) NOT NULL,
  `logadouro` varchar(220) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `endereço`
--

INSERT INTO `endereço` (`ide`, `logadouro`) VALUES
(1, 'rua evanilsdo silva, 31'),
(300, 'joao never, 300, casa'),
(800, 'JL, 300, rio branco');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `idfc` int(11) NOT NULL,
  `idtpfc` int(11) DEFAULT NULL,
  `nome` varchar(220) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`idfc`, `idtpfc`, `nome`) VALUES
(900, 900, 'eduarditos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `idf` int(11) NOT NULL,
  `idc` int(11) DEFAULT NULL,
  `ide` int(11) DEFAULT NULL,
  `nome` varchar(220) DEFAULT NULL,
  `cpf` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`idf`, `idc`, `ide`, `nome`, `cpf`) VALUES
(300, 300, 300, 'eduardo', 1414);

-- --------------------------------------------------------

--
-- Estrutura da tabela `hist`
--

CREATE TABLE `hist` (
  `idpr` int(11) NOT NULL,
  `preatual` decimal(5,2) DEFAULT NULL,
  `hist` varchar(220) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `hist`
--

INSERT INTO `hist` (`idpr`, `preatual`, `hist`) VALUES
(1, '260.00', '122,20\r\n130,20\r\n460,20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idp` int(11) NOT NULL,
  `idpr` int(11) DEFAULT NULL,
  `idcc` int(11) DEFAULT NULL,
  `idfc` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idp`, `idpr`, `idcc`, `idfc`) VALUES
(1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipocliente`
--

CREATE TABLE `tipocliente` (
  `tpc` int(11) NOT NULL,
  `descricao` varchar(220) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipocliente`
--

INSERT INTO `tipocliente` (`tpc`, `descricao`) VALUES
(1, 'consumista nato');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipoempresa`
--

CREATE TABLE `tipoempresa` (
  `idest` int(11) NOT NULL,
  `descricao` varchar(220) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipoempresa`
--

INSERT INTO `tipoempresa` (`idest`, `descricao`) VALUES
(800, 'cobradora');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipofornecedor`
--

CREATE TABLE `tipofornecedor` (
  `idtpfc` int(11) NOT NULL,
  `descricao` varchar(220) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipofornecedor`
--

INSERT INTO `tipofornecedor` (`idtpfc`, `descricao`) VALUES
(900, 'entrega produtos de qualidade');

-- --------------------------------------------------------

--
-- Estrutura da tabela `venda`
--

CREATE TABLE `venda` (
  `idv` int(11) NOT NULL,
  `idvi` int(11) DEFAULT NULL,
  `idf` int(11) DEFAULT NULL,
  `idp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `venda`
--

INSERT INTO `venda` (`idv`, `idvi`, `idf`, `idp`) VALUES
(1, 1, 300, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`idc`);

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`idcc`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`ides`);

--
-- Indexes for table `endereço`
--
ALTER TABLE `endereço`
  ADD PRIMARY KEY (`ide`);

--
-- Indexes for table `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`idfc`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idf`);

--
-- Indexes for table `hist`
--
ALTER TABLE `hist`
  ADD PRIMARY KEY (`idpr`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idp`);

--
-- Indexes for table `tipocliente`
--
ALTER TABLE `tipocliente`
  ADD PRIMARY KEY (`tpc`);

--
-- Indexes for table `tipoempresa`
--
ALTER TABLE `tipoempresa`
  ADD PRIMARY KEY (`idest`);

--
-- Indexes for table `tipofornecedor`
--
ALTER TABLE `tipofornecedor`
  ADD PRIMARY KEY (`idtpfc`);

--
-- Indexes for table `venda`
--
ALTER TABLE `venda`
  ADD PRIMARY KEY (`idv`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cargo`
--
ALTER TABLE `cargo`
  MODIFY `idc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `categoria`
--
ALTER TABLE `categoria`
  MODIFY `idcc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `empresa`
--
ALTER TABLE `empresa`
  MODIFY `ides` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=801;

--
-- AUTO_INCREMENT for table `endereço`
--
ALTER TABLE `endereço`
  MODIFY `ide` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=801;

--
-- AUTO_INCREMENT for table `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `idfc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=901;

--
-- AUTO_INCREMENT for table `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `idf` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;

--
-- AUTO_INCREMENT for table `hist`
--
ALTER TABLE `hist`
  MODIFY `idpr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `produto`
--
ALTER TABLE `produto`
  MODIFY `idp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tipocliente`
--
ALTER TABLE `tipocliente`
  MODIFY `tpc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tipoempresa`
--
ALTER TABLE `tipoempresa`
  MODIFY `idest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tipofornecedor`
--
ALTER TABLE `tipofornecedor`
  MODIFY `idtpfc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=901;

--
-- AUTO_INCREMENT for table `venda`
--
ALTER TABLE `venda`
  MODIFY `idv` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
