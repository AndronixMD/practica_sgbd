SELECT *,
	(
	SELECT GROUP_CONCAT(p.numele)
	FROM persoana AS p
	JOIN rude
	WHERE rude.idPersoana1 = persoana.idPersoana OR rude.idPersoana2 = persoana.idPersoana
	WHERE p.idPersoana != persoana.idPersoana AND (p.idPersoana = rude.idPersoana1 OR p.idPersoana = rude.idPersoana2)
	)
FROM persoana