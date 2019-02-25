SELECT 
	persoana.numele, 
	SUM(
		(
			SELECT COUNT(a.idPersoana1)
			FROM amici AS a
			WHERE (a .idPersoana1 = amici.idPersoana1 OR a.idPersoana2 = amici.idPersoana1) AND amici.idPersoana1 != persoana.idPersoana
		) +
		(
			SELECT COUNT(a.idPersoana1)
			FROM amici AS a
			WHERE (a .idPersoana1 = amici.idPersoana2 OR a.idPersoana2 = amici.idPersoana2) AND amici.idPersoana2 != persoana.idPersoana
		)
	) AS numar_de_prieteni
FROM persoana
INNER JOIN amici
WHERE persoana.numele = "Tiany" AND (amici.idPersoana1 = persoana.idPersoana OR amici.idPersoana2 = persoana.idPersoana)