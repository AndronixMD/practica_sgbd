SELECT DISTINCT actor.idActor, actor.name
FROM actor
INNER JOIN film_actor ON film_actor.idActor = actor.idActor;