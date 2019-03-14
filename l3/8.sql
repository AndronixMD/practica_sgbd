CREATE VIEW ved4 AS
SELECT *, COUNT(*) AS numar_de_articole
FROM cercetor
GROUP BY cercetor.idCercetor;