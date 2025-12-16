-- =========================================
-- Script Completo - Loja de Vinhos
-- Criação do banco, tabelas, dados e segurança
-- =========================================

-- Criação do banco de dados
DROP DATABASE IF EXISTS Loja_Vinhos;
CREATE DATABASE Loja_Vinhos;
USE Loja_Vinhos;

-- Garantir limpeza das tabelas
DROP TABLE IF EXISTS Vinho;
DROP TABLE IF EXISTS Vinicola;
DROP TABLE IF EXISTS Regiao;

-- Criação da tabela Regiao
CREATE TABLE Regiao (
  codRegiao BIGINT AUTO_INCREMENT PRIMARY KEY,
  nomeRegiao VARCHAR(100) NOT NULL,
  descricaoRegiao TEXT
);

-- Criação da tabela Vinicola
CREATE TABLE Vinicola (
  codVinicola BIGINT AUTO_INCREMENT PRIMARY KEY,
  nomeVinicola VARCHAR(100) NOT NULL,
  descricaoVinicola TEXT,
  foneVinicola VARCHAR(15),
  emailVinicola VARCHAR(100),
  codRegiao BIGINT NOT NULL,
  FOREIGN KEY (codRegiao) REFERENCES Regiao(codRegiao)
);

-- Criação da tabela Vinho
CREATE TABLE Vinho (
  codVinho BIGINT AUTO_INCREMENT PRIMARY KEY,
  nomeVinho VARCHAR(50) NOT NULL,
  tipoVinho VARCHAR(30) NOT NULL,
  anoVinho INT NOT NULL,
  descricaoVinho TEXT,
  codVinicola BIGINT NOT NULL,
  FOREIGN KEY (codVinicola) REFERENCES Vinicola(codVinicola)
);

-- Inserções de dados

-- Regiao
INSERT INTO Regiao (nomeRegiao, descricaoRegiao) VALUES
('Serra Gaúcha', 'Região tradicional de produção vinícola no RS'),
('Vale do São Francisco', 'Região de clima semiárido com produção irrigada'),
('Campanha Gaúcha', 'Região emergente no RS para vinhos finos'),
('Planalto Catarinense', 'Região de clima frio e altitudes elevadas'),
('Vale dos Vinhedos', 'Área nobre com vinícolas premiadas');

-- Vinicola
INSERT INTO Vinicola (nomeVinicola, descricaoVinicola, foneVinicola, emailVinicola, codRegiao) VALUES
('Vinícola Aurora', 'Uma das maiores do Brasil', '5430291010', 'contato@aurora.com.br', 1),
('Miolo Wine Group', 'Referência em inovação e exportação', '5430556060', 'vendas@miolo.com.br', 5),
('ViniBrasil', 'Produção moderna no semiárido', '8732254433', 'info@vinibrasil.com.br', 2),
('Pericó', 'Localizada na serra catarinense', '4932371222', 'comercial@perico.com.br', 4),
('Guatambu', 'Referência na campanha gaúcha', '5532517654', 'sac@guatambu.com.br', 3);

-- Vinho
INSERT INTO Vinho (nomeVinho, tipoVinho, anoVinho, descricaoVinho, codVinicola) VALUES
('Aurora Reserva Merlot', 'Tinto', 2020, 'Merlot encorpado com passagem por carvalho', 1),
('Miolo Lote 43', 'Tinto', 2019, 'Blend de Cabernet Sauvignon e Merlot', 2),
('Botticelli Branco', 'Branco', 2021, 'Fresco e frutado', 3),
('Pericó Espumante Brut', 'Espumante', 2022, 'Elaborado pelo método champenoise', 4),
('Guatambu Rastros do Pampa', 'Tinto', 2020, 'Com notas de frutas vermelhas e especiarias', 5);

-- Criação do usuário
CREATE USER IF NOT EXISTS 'Somellier'@'localhost'
IDENTIFIED BY 'senha_exemplo';

-- Concessão de permissões
GRANT SELECT ON Loja_Vinhos.Vinho TO 'Somellier'@'localhost';

-- View de segurança
CREATE VIEW Vinicola_Somellier AS
SELECT codVinicola, nomeVinicola
FROM Vinicola;

GRANT SELECT ON Loja_Vinhos.Vinicola_Somellier TO 'Somellier'@'localhost';

-- Limite de consultas
ALTER USER 'Somellier'@'localhost'
WITH MAX_QUERIES_PER_HOUR 40;

FLUSH PRIVILEGES;
