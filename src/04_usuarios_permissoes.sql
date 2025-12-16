CREATE USER IF NOT EXISTS 'Somellier'@'localhost'
IDENTIFIED BY 'senha_exemplo';

GRANT SELECT ON Loja_Vinhos.Vinho TO 'Somellier'@'localhost';

CREATE VIEW Vinicola_Somellier AS
SELECT codVinicola, nomeVinicola
FROM Vinicola;

GRANT SELECT ON Loja_Vinhos.Vinicola_Somellier TO 'Somellier'@'localhost';

ALTER USER 'Somellier'@'localhost'
WITH MAX_QUERIES_PER_HOUR 40;

FLUSH PRIVILEGES;
