CREATE VIEW cercetori_usarb AS
SELECT cercetor.idCercetor, cercetor.numecercetor, cercetor.idArticol, cercetor.idUniversitate 
FROM cercetor
WHERE cercetor.idUniversitate IN (SELECT idUniversitate FROM universitate WHERE denuniversitate = "USARB");
