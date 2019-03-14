CREATE VIEW ved2 AS
SELECT cercetor.numecercetor, articol.denarticol
FROM cercetor
INNER JOIN articol ON cercetor.idArticol = articol.idArticol;