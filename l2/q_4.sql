SELECT persoana.numele
FROM persoana 
WHERE persoana.virsta > ALL(
					SELECT p.virsta
					FROM persoana AS p
					WHERE 
							p.idPersoana IN (
									SELECT amici.idPersoana2
									FROM amici
									WHERE amici.idPersoana1 = persoana.idPersoana
							)
							OR 
							p.idPersoana IN (
									SELECT amici.idPersoana1
									FROM amici
									WHERE amici.idPersoana2 = persoana.idPersoana
					)
);
