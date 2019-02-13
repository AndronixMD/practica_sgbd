# CREATE TABLE persoana (
#		idPersoana int NOT NULL AUTO_INCREMENT,
#		numele varchar(50),
#		virsta varchar(50),
#		PRIMARY KEY (idPersoana)
# );

# CREATE TABLE rude (
#		idPersoana1 int NOT NULL,
#		idPersoana2 int NOT NULL,
#		FOREIGN KEY (idPersoana1) REFERENCES persoana(idPersoana),
#		FOREIGN KEY (idPersoana2) REFERENCES persoana(idPersoana)
# );

# CREATE TABLE amici (
#		idPersoana1 int NOT NULL,
#		idPersoana2 int NOT NULL,
#		FOREIGN KEY (idPersoana1) REFERENCES persoana (idPersoana),
#		FOREIGN KEY (idPersoana2) REFERENCES persoana (idPersoana)
# );