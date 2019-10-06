SELECT * FROM
(SELECT title FROM film
INNER JOIN
film_actor ON film.film_id = film_actor.film_id
WHERE
actor_id = 105) t1
JOIN
(SELECT title FROM film
INNER JOIN
film_actor ON film.film_id = film_actor.film_id
WHERE
actor_id = 122) t2
ON t1.title = t2.title;
