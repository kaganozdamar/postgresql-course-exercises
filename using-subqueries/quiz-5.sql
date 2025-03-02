SELECT
	e.first_name,
	e.last_name
FROM
	employees AS e
WHERE
	e.employee_id IN (
		SELECT
			d.employee_id
		FROM
			dependents AS d
		WHERE
			d.employee_id = e.employee_id
	);