SELECT film.titlu, film.anul
FROM film
WHERE film.titlu LIKE "Le%" OR film.titlu LIKE "%de%";