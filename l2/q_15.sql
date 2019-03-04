(SELECT * 
FROM persoana
WHERE persoana.virsta IN (SELECT MAX(p.virsta) FROM persoana AS p) 
LIMIT 1)
UNION
(SELECT * 
FROM persoana
WHERE persoana.virsta < (SELECT MAX(p.virsta) FROM persoana AS p)
LIMIT 1)
UNION
(SELECT * 
FROM persoana
WHERE persoana.virsta IN (SELECT MIN(p.virsta) FROM persoana AS p)
LIMIT 1)