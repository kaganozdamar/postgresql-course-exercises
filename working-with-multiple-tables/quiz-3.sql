SELECT
    c1.first_name AS c1_first_name,
	c1.last_name AS c1_last_name,
	c2.first_name AS c2_first_name,
	c2.last_name AS c2_last_name,
	ci.city
FROM customer AS c1
INNER JOIN address AS a1
    ON a1.address_id = c1.address_id
INNER JOIN customer AS c2
    ON c1.customer_id <> c2.customer_id
INNER JOIN address AS a2
    ON a2.address_id = c2.address_id
INNER JOIN city AS ci
    ON a1.city_id = a2.city_id
	AND a1.city_id = ci.city_id;