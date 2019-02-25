SELECT 
	persoana.numele,
	persoana.virsta,
	COUNT(persoana.idPersoana) AS prieteni
FROM persoana
INNER JOIN amici
WHERE (amici.idPersoana1 = persoana.idPersoana OR amici.idPersoana2 = persoana.idPersoana)
GROUP BY persoana.idPersoana
HAVING prieteni IN (
								SELECT MAX(t.c)
								FROM (
									SELECT COUNT(p.idPersoana) AS c
									FROM persoana AS p
									INNER JOIN amici AS a
									WHERE a.idPersoana1 = p.idPersoana OR a.idPersoana2 = p.idPersoana
									GROUP BY p.idPersoana								
								) AS t
							);