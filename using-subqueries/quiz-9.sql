SELECT DISTINCT
	ON (customer_id) c.first_name,
	c.last_name
FROM
	customer AS c
	INNER JOIN payment USING (customer_id)
ORDER BY
	customer_id ASC;