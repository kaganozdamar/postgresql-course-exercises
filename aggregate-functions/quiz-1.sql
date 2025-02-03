SELECT
    ROUND(AVG(length), 2) as avg_length,
	ROUND(AVG(rental_duration), 2) as avg_rental_duration,
	ROUND(AVG(replacement_cost), 2) as avg_replacement_cost
FROM film;

--or

SELECT
    (AVG(length))::numeric(10,2) as avg_length,
	(AVG(rental_duration))::numeric(10,2) as avg_rental_duration,
	(AVG(replacement_cost))::numeric(10,2) as avg_replacement_cost
FROM film;
