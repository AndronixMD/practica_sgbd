SELECT 
		DISTINCT (actor.idActor), 
		actor.name, 
		(
			SELECT AVG(salariu) AS media
			FROM film_actor
			WHERE film_actor.idActor = actor.idActor
		) AS media
FROM actor
INNER JOIN film_actor ON film_actor.idActor = actor.idActor;