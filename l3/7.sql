#CREATE VIEW ved22 AS
#SELECT cercetor.idCercetor, cercetor.numecercetor, articol.denarticol, articol.idArticol
#FROM cercetor
#INNER JOIN articol ON cercetor.idArticol = articol.idArticol;

#CREATE VIEW ved3 AS
#SELECT ved22.numecercetor, ved22.denarticol, universitate.denuniversitate
#FROM cercetor
#INNER JOIN ved22
#INNER JOIN universitate ON cercetor.idUniversitate = universitate.idUniversitate
#WHERE cercetor.idCercetor = ved22.idCercetor AND cercetor.idArticol = ved22.idArticol;

#SELECT * FROM ved3