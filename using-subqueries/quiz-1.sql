--single-row subquery
SELECT city
FROM city
WHERE country_id = (SELECT country_id FROM country WHERE country = 'Japan');