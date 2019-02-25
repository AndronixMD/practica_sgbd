SELECT 	
	p1.numele,
	p2.numele,
	p1.virsta
FROM 
	amici,
	persoana AS p1,
	persoana AS p2
WHERE amici.idPersoana1 = p1.idPersoana AND amici.idPersoana2 = p2.idPersoana AND p1.virsta = p2.virsta
ORDER BY p1.virsta, p1.numele ASC