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
