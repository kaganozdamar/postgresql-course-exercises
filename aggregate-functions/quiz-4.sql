SELECT
    MIN(length(first_name)) AS min_name,
	MAX(length(first_name)) AS max_name,
	MIN(length(last_name)) AS min_surname,
	MAX(length(last_name)) AS max_surname,
	AVG(length(first_name))::numeric(10,2) AS avg_name,
	AVG(length(first_name))::numeric(10,2) AS avg_name
FROM employees;