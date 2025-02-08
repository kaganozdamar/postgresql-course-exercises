SELECT
    c.first_name AS customer_first_name,
	c.last_name AS customer_last_name,
	amount,
    s.first_name AS staff_first_name,
	s.last_name AS staff_last_name
FROM customer AS c
INNER JOIN payment USING(customer_id)
INNER JOIN staff AS s USING(staff_id)
WHERE c.customer_id = 341;