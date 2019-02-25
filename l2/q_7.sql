SELECT persoana.numele
FROM persoana
LEFT JOIN rude ON rude.idPersoana2 = persoana.idPersoana
WHERE rude.idPersoana1 IS NULL