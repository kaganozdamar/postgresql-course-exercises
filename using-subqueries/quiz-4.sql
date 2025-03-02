SELECT
	film_id,
	title,
	rating
FROM
	film
WHERE
	film_id IN (
		SELECT
			i.film_id
		FROM
			inventory AS i
		WHERE
			i.inventory_id IN (
				SELECT
					r.inventory_id
				FROM
					rental AS r
				WHERE
					rental_date BETWEEN '2005-05-25' AND '2005-05-26'
			)
	)