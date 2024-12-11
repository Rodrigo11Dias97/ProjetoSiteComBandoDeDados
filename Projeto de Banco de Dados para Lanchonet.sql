Projeto de Banco de Dados para Lanchonete 
 
Banco de Dados: lanchonete_si 
CREATE DATABASE `lanchonete_si`; 
 
Estrutura para Tabela cliente 
CREATE TABLE `cliente` ( 
  `ID_CLIENTE` varchar(10) NOT NULL, 
  `CLIENTE_CPF` varchar(11) NOT NULL, 
  `CLIENTE_NOME` varchar(255) NOT NULL, 
  `ID_LOJA` varchar(10) NOT NULL, 
  `ID_PRODUTO` varchar(10) NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci; 
 
Inserção de Dados na Tabela cliente 
INSERT INTO `cliente` (`ID_CLIENTE`, `CLIENTE_CPF`, `CLIENTE_NOME`, `ID_LOJA`, `ID_PRODUTO`) VALUES 
('01', '11122233344', 'Marco', '01', '01'), 
('02', '22233344455', 'Livia', '01', '02'), 
('03', '33344455566', 'Rodrigo', '01', '01'), 
('04', '44455566677', 'Armando', '01', '02'), 
('05', '55566677788', 'Isabela', '01', '03'); 
 
Estrutura para Tabela estoque 
 
CREATE TABLE `estoque` ( 
  `ID_PRODUTO` varchar(100) NOT NULL, 
  `PRODUTO_NOME` varchar(255) DEFAULT NULL, 
  `PRODUTO_VALIDADE` date DEFAULT NULL, 
  `PRODUTO_QTD` int(100) NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci; 
Inserção de Dados na Tabela estoque 
 
INSERT INTO `estoque` (`ID_PRODUTO`, `PRODUTO_NOME`, `PRODUTO_VALIDADE`, `PRODUTO_QTD`) VALUES 
('01', 'HAMBURGUER', '2001-01-25', 50), 
('02', 'PAO', '2001-01-25', 50), 
('03', 'ALFACE', '2001-01-25', 50), 
('04', 'COCA-COLA', '2001-01-25', 50); 
 
Estrutura para Tabela fornecedores 
 
CREATE TABLE `fornecedores` ( 
  `ID_FORNECEDOR` varchar(10) NOT NULL, 
  `SIV_GOV` varchar(100) DEFAULT NULL, 
  `PRODUTO_LOTE` varchar(100) DEFAULT NULL, 
  `NOME_FORNECEDOR` varchar(255) NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci; 
 
Inserção de Dados na Tabela fornecedores 
 
INSERT INTO `fornecedores` (`ID_FORNECEDOR`, `SIV_GOV`, `PRODUTO_LOTE`, `NOME_FORNECEDOR`) VALUES 
('1', '150', 'LOTE24/24', 'LaticiniosdaFazenda'), 
('2', '336', 'LOT3carne22', 'FriGado'), 
('3', '321', 'LOTE09/2024', 'FrutariaHortiFrutiGraos'), 
('4', '654', 'LOT3/2024', 'GranjaOvoGrosso'); 
 
Estrutura para Tabela funcionarios 
 
CREATE TABLE `funcionarios` ( 
  `ID_FUNCIONARIO` varchar(10) NOT NULL, 
  `NOME_FUNCIONARIO` varchar(255) DEFAULT NULL, 
  `NUM_CPF` char(11) DEFAULT NULL, 
  `FUNCAO` varchar(50) DEFAULT NULL, 
  `ID_LOJA` varchar(10) NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci; 
 
Inserção de Dados na Tabela funcionarios 
INSERT INTO `funcionarios` (`ID_FUNCIONARIO`, `NOME_FUNCIONARIO`, 
`NUM_CPF`, `FUNCAO`, `ID_LOJA`) VALUES 
('01', 'Maria Ganha Dez', '00000000000', 'COZINHEIRO', '01'), 
('02', 'Guina', '10000000000', 'GARCOM', '01'), 
('03', 'Cleiton Rasta', '20000000000', 'AUXILIAR DE COZINHA', '01'), 
('04', 'Rodrigo Goes', '30000000000', 'ATENDENTE', '01'), 
('05', 'Bluyi LePen', '40000000000', 'GERENTE', '01'); 
 
Estrutura para Tabela lojas 
 
CREATE TABLE `lojas` ( 
  `ID_LOJA` varchar(10) NOT NULL COMMENT 'ordem de cadastro de loja', 
  `LOJA_CEP` varchar(10) DEFAULT NULL, 
  `LOJA_END` varchar(255) NOT NULL, 
  `LOJA_UF` varchar(2) NOT NULL, 
  `LOJA_BAIRRO` varchar(255) NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='TABELA DE CADASTRO LOJA'; 
 
Inserção de Dados na Tabela lojas 
INSERT INTO `lojas` (`ID_LOJA`, `LOJA_CEP`, `LOJA_END`, `LOJA_UF`, 
`LOJA_BAIRRO`) VALUES 
('01', '0000000', 'Rua Me da 10 Professor', 'SP', 'PINHEIROS'); 
 
Estrutura para Tabela pedidos 
CREATE TABLE `pedidos` ( 
  `ID_PEDIDOS` varchar(10) NOT NULL, 
  `ID_PRODUTO` varchar(10) NOT NULL, 
  `DATA_HORA` datetime NOT NULL, 
  `PRECO` decimal(10,0) NOT NULL 
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci; 
 
Inserção de Dados na Tabela pedidos 
 
INSERT INTO `pedidos` (`ID_PEDIDOS`, `ID_PRODUTO`, `DATA_HORA`, `PRECO`) VALUES 
('01', '01', '0000-00-00 00:00:00', 30), 
('02', '01', '2023-02-01 09:10:00', 40), 
('03', '01', '0000-00-00 00:00:00', 10), 
('04', '01', '2023-02-01 18:30:00', 10); 
Índices para Tabelas Despejadas 
Índices da Tabela cliente 
ALTER TABLE `cliente` 
  ADD PRIMARY KEY (`ID_CLIENTE`), 
  ADD UNIQUE KEY `CLIENTE_CPF` (`CLIENTE_CPF`); 
 
ALTER TABLE `cliente` 
  ADD PRIMARY KEY (`ID_CLIENTE`), 
  ADD UNIQUE KEY `CLIENTE_CPF` (`CLIENTE_CPF`); 
 
ALTER TABLE `estoque` 
  ADD PRIMARY KEY (`ID_PRODUTO`); 
 
ALTER TABLE `fornecedores` 
  ADD PRIMARY KEY (`ID_FORNECEDOR`), 
  ADD UNIQUE KEY `SIV_GOV` (`SIV_GOV`); 
 
ALTER TABLE `funcionarios` 
  ADD PRIMARY KEY (`ID_FUNCIONARIO`), 
  ADD UNIQUE KEY `NUM_CPF` (`NUM_CPF`); 
 
ALTER TABLE `lojas` 
  ADD PRIMARY KEY (`ID_LOJA`), 
  ADD UNIQUE KEY `LOJA_CEP` (`LOJA_CEP`); 
 
ALTER TABLE `pedidos` 
  ADD PRIMARY KEY (`ID_PEDIDOS`); 
 
Conexão do Banco com o Site 
Script para Conexão com o Banco de Dados 
<?php 
$servername = "localhost"; 
$username = "root"; 
$password = ""; 
$dbname = "lanchonete_si"; 
 
// Criar a conexão 
$conn = new mysqli($servername, $username, $password, $dbname); 
 
// Checar a conexão if ($conn->connect_error) {     die("Conexão falhou: " . $conn->connect_error); 
} 
echo "Conexão bem-sucedida!"; 
?> 
 
Script para Exibir Dados da Tabela cliente 
<?php 
include 'conexao.php'; 
 
$sql = "SELECT * FROM cliente"; 
$result = $conn->query($sql); 
 
if ($result->num_rows > 0) {     echo "<table 
border='1'><tr><th>ID_CLIENTE</th><th>CLIENTE_CPF</th><th>CLIENTE_NOME</th><t h>ID_LOJA</th><th>ID_PRODUTO</th></tr>";     while($row = $result->fetch_assoc()) { 
