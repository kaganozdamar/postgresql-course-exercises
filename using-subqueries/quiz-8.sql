SELECT
	film_id,
	title,
	f1.length
FROM
	film AS f1
WHERE
	f1.length < ALL (
		SELECT
			ROUND(AVG(f2.length), 2)
		FROM
			film AS f2
		GROUP BY
			rating
	)
ORDER BY
	3;