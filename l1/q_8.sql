SELECT actor.name, ac.name, film_actor.salariu
FROM actor
INNER JOIN film_actor ON film_actor.idActor = actor.idActor
INNER JOIN film_actor AS fm ON fm.salariu = film_actor.salariu
INNER JOIN actor AS ac ON ac.idActor = fm.idActor
WHERE film_actor.idFilm < fm.idFilm 