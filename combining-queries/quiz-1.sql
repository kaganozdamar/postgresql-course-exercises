--All columns should not be used with the SELECT operator like this unless necessary to avoid any performance loss.
SELECT *
FROM film
WHERE rating = 'PG'
UNION
SELECT *
FROM film
WHERE special_features::text LIKE '%Trailers%'