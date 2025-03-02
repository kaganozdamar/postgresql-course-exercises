SELECT
	*
FROM
	employees AS e
WHERE
	EXISTS (
		SELECT
			1
		FROM
			jobs AS j
		WHERE
			1 = 1
			AND j.job_id = e.job_id
			AND job_title ILIKE '%manager%'
	);