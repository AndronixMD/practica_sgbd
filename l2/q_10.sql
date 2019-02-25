SELECT DISTINCT persoana.numele
FROM persoana
INNER JOIN amici
INNER JOIN rude
WHERE (amici.idPersoana1 = persoana.idPersoana OR amici.idPersoana2 = persoana.idPersoana) AND 
		(rude.idPersoana1 = persoana.idPersoana OR rude.idPersoana2 = persoana.idPersoana)