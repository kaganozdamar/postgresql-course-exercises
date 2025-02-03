SELECT
    customer_id,
	staff_id,
	COUNT(*) AS rental_count
FROM rental
GROUP BY
    customer_id,
    staff_id
HAVING COUNT(*) > 5
ORDER BY COUNT(*) ASC;