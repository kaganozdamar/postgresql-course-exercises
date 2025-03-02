--the subquery in "where" command works like query that contains "any" operator 
SELECT
	first_name,
	last_name,
	salary
FROM
	employees
WHERE
	salary < (
		SELECT
			salary
		FROM
			employees
		ORDER BY
			salary DESC
		LIMIT
			1
	);