SELECT 
	(
		SELECT numele
		FROM persoana
		WHERE persoana.idPersoana = amici.idPersoana1
	) AS numele_1,
	(
		SELECT GROUP_CONCAT(rude.idPersoana1, ",", rude.idPersoana2)
		FROM rude
		WHERE rude.idPersoana1 = amici.idPersoana1 AND rude.idPersoana2 NOT IN (
			SELECT a.idPersoana1
			FROM amici as a
			WHERE a.idPersoana1 = amici.idPersoana2 OR a.idPersoana2 = amici.idPersoana2 
		)
	) AS rude_1,
	(
		SELECT numele
		FROM persoana
		WHERE persoana.idPersoana = amici.idPersoana2
	) AS numele_2,
		(
		SELECT GROUP_CONCAT(rude.idPersoana1, ",", rude.idPersoana2)
		FROM rude
		WHERE rude.idPersoana1 = amici.idPersoana1 AND rude.idPersoana2 NOT IN (
			SELECT a.idPersoana1
			FROM amici as a
			WHERE a.idPersoana1 = amici.idPersoana2 OR a.idPersoana2 = amici.idPersoana2 
		)
	) AS rude_2,
#	GROUP_CONCAT(persoana.numele)
FROM amici