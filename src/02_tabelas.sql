-- Tabela Regiao
CREATE TABLE Regiao (
  codRegiao BIGINT AUTO_INCREMENT PRIMARY KEY,
  nomeRegiao VARCHAR(100) NOT NULL,
  descricaoRegiao TEXT
);

-- Tabela Vinicola
CREATE TABLE Vinicola (
  codVinicola BIGINT AUTO_INCREMENT PRIMARY KEY,
  nomeVinicola VARCHAR(100) NOT NULL,
  descricaoVinicola TEXT,
  foneVinicola VARCHAR(15),
  emailVinicola VARCHAR(100),
  codRegiao BIGINT NOT NULL,
  FOREIGN KEY (codRegiao) REFERENCES Regiao(codRegiao)
);

-- Tabela Vinho
CREATE TABLE Vinho (
  codVinho BIGINT AUTO_INCREMENT PRIMARY KEY,
  nomeVinho VARCHAR(50) NOT NULL,
  tipoVinho VARCHAR(30) NOT NULL,
  anoVinho INT NOT NULL,
  descricaoVinho TEXT,
  codVinicola BIGINT NOT NULL,
  FOREIGN KEY (codVinicola) REFERENCES Vinicola(codVinicola)
);
