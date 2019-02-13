SELECT film_actor.rolu, film.anul
FROM film
INNER JOIN film_actor ON film.idFilm = film_actor.idFilm
INNER JOIN actor ON actor.idActor = film_actor.idActor
WHERE actor.name = "Johny Deep";