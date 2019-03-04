#SELECT persoana.idPersoana
SELECT *
FROM persoana
INNER JOIN rude
WHERE 
	(rude.idPersoana1 = persoana.idPersoana OR 
	rude.idPersoana2 = persoana.idPersoana) 
	AND (
	persoana.idPersoana NOT IN (
										SELECT amici.idPersoana1
										FROM amici
										WHERE amici.idPersoana1 = persoana.idPersoana OR amici.idPersoana2 = persoana.idPersoana
										)
	AND 
	persoana.idPersoana NOT IN (
										SELECT amici.idPersoana2
										FROM amici
										WHERE amici.idPersoana1 = persoana.idPersoana OR amici.idPersoana2 = persoana.idPersoana
										)
	)