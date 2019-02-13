SELECT film.titlu, film.anul
FROM film
INNER JOIN film_actor ON film.idFilm = film_actor.idFilm
INNER JOIN actor ON actor.idActor = film_actor.idActor
WHERE film.regizor IN (
							SELECT film.regizor
							FROM film
							WHERE film.titlu = "Le parrain"
);