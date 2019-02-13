SELECT persoana.numele
FROM persoana
WHERE 
		persoana.idPersoana IN (
				SELECT amici.idPersoana2
				FROM amici
				WHERE amici.idPersoana1 = 1
		)
		OR 
		persoana.idPersoana IN (
				SELECT amici.idPersoana1
				FROM amici
				WHERE amici.idPersoana2 = 1
);