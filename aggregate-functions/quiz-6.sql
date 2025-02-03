--GROUP BY logic has been used without using GROUP BY
SELECT
    DISTINCT rating,
	CASE
        WHEN rating = 'PG' THEN (SELECT COUNT(*) FROM film WHERE rating = 'PG')
		WHEN rating = 'R' THEN (SELECT COUNT(*) FROM film WHERE rating = 'R')
		WHEN rating = 'PG-13' THEN (SELECT COUNT(*) FROM film WHERE rating = 'PG-13')
		WHEN rating = 'G' THEN (SELECT COUNT(*) FROM film WHERE rating = 'G')
		WHEN rating = 'NC-17' THEN (SELECT COUNT(*) FROM film WHERE rating = 'NC-17')
	END AS x
FROM film;