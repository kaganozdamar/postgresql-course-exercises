SELECT
	*
FROM
	employees AS e
	INNER JOIN jobs AS j USING (job_id)
WHERE
	j.job_title ILIKE '%manager%';
--using from clause
UPDATE employees e
SET
	salary = salary * 1.2
FROM
	jobs j
WHERE
	e.job_id = j.job_id
	AND LOWER(job_title) LIKE '%manager%'
--without using from clause
UPDATE employees AS e
SET
	salary = salary * 1.2
WHERE
	e.job_id IN (
		SELECT
			j.job_id
		FROM
			jobs AS j
		WHERE
			job_title ILIKE '%manager%'
	);