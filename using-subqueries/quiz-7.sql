SELECT
	first_name,
	last_name,
	salary
FROM
	employees
WHERE
	salary > ALL (
		SELECT
			salary
		FROM
			employees
		WHERE
			manager_id = 1
	);

--i wrote a query that works similarly to the query above without using the "all" operator
SELECT
	first_name,
	last_name,
	salary
FROM
	employees
WHERE
	salary > ALL (
		SELECT
			MAX(salary)
		FROM
			employees
		WHERE
			manager_id = 1
	);