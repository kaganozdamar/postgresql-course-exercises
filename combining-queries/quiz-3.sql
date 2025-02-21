SELECT film.film_id, title
FROM film
INNER JOIN
	(SELECT film_id FROM film EXCEPT SELECT film_id FROM inventory) AS f
	ON film.film_id = f.film_id;