 SELECT *,
	(
	SELECT GROUP_CONCAT(p.numele)
	FROM persoana AS p
	JOIN rude 
	WHERE p.idPersoana != persoana.idPersoana AND 
			((rude.idPersoana1 = persoana.idPersoana AND p.idPersoana = rude.idPersoana2) 
				OR (rude.idPersoana2 = persoana.idPersoana AND p.idPersoana = rude.idPersoana1))
	) AS r1
FROM persoana
HAVING r1 IS NOT NULL;