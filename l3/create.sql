CREATE TABLE IF NOT EXISTS articol(
	idArticol int NOT NULL AUTO_INCREMENT,
	denarticol varchar(256),
	PRIMARY KEY (idArticol)
);

CREATE TABLE IF NOT EXISTS universitate(
	idUniversitate int NOT NULL AUTO_INCREMENT,
	denuniversitate varchar(256),
	PRIMARY KEY (idUniversitate)
);

CREATE TABLE IF NOT EXISTS cercetor(
	idCercetor NOT NULL AUTO_INCREMENT,
	numecercetor varchar(256),
	idArticol int NOT NULL,
	idUniversitate int NOT NULL,
	FOREIGN KEY (idArticol) REFERENCES articol(idArticol),
	FOREIGN KEY (idUniversitate) REFERENCES universitate(idUniversitate),
	PRIMARY KEY (idCercetor)
);