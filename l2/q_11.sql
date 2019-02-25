SELECT (
			SELECT COUNT(amici.idPersoana1) + COUNT(amici.idPersoana2)
			FROM amici
		) / COUNT(persoana.idPersoana) AS media_prieteni
FROM persoana