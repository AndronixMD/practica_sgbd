CREATE VIEW ved1 AS
SELECT cercetor.idCercetor, cercetor.numecercetor, cercetor.idArticol, cercetor.idUniversitate 
FROM cercetor
WHERE cercetor.idUniversitate IN (SELECT idUniversitate FROM universitate WHERE denuniversitate = "ASEM");


UPDATE cercetor
SET numecercetor = "Om Bogdan"
WHERE numecercetor = "Ombun Bogdan";


SELECT * 
FROM ved1;