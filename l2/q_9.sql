SELECT COUNT(*) - COUNT(IF(persoana.virsta >= 18, 1, NULL)) AS diferenta
FROM persoana