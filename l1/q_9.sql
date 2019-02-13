SELECT actor.name, film_actor.salariu * 17.11 AS "salatiu in lei"
FROM film_actor
INNER JOIN actor ON film_actor.idActor = actor.idActor