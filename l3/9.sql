#CREATE VIEW ved5 AS
#SELECT cercetor.idUniversitate, universitate.denuniversitate, COUNT(*) AS numar_de_articole
#FROM cercetor
#INNER JOIN universitate ON cercetor.idUniversitate = universitate.idUniversitate
#GROUP BY cercetor.idUniversitate;

SELECT * 
FROM ved5
WHERE denuniversitate = "USARB";