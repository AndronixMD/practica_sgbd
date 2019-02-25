SELECT persoana.numele
FROM persoana
INNER JOIN rude
WHERE rude.idPersoana1 = persoana.idPersoana OR rude.idPersoana2 = persoana.idPersoana
GROUP BY persoana.idPersoana
HAVING COUNT(rude.idPersoana1) +  COUNT(rude.idPersoana2) > 1;

#SELECT * 
#FROM rude
#GROUP BY rude.idPersoana1
#HAVING COUNT(rude.idPersoana1) +  COUNT(rude.idPersoana2) > 1;