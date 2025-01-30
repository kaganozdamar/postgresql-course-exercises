SELECT
    UPPER(title) AS title_name,
    LOWER(description) AS description_new
FROM
    film
WHERE
    LOWER(description) LIKE '%drama%'
	AND LOWER(description) LIKE '%australia%';