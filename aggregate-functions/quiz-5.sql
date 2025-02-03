SELECT
    customer_id,
    COUNT(*) AS rental_count,
    MIN(rental_date)::date AS first_rental,
    MAX(rental_date)::date AS last_rental
FROM rental
GROUP BY customer_id;