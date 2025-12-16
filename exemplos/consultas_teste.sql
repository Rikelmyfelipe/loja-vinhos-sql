SELECT 
  v.nomeVinho,
  v.anoVinho,
  vin.nomeVinicola,
  r.nomeRegiao
FROM Vinho v
JOIN Vinicola vin ON v.codVinicola = vin.codVinicola
JOIN Regiao r ON vin.codRegiao = r.codRegiao;
