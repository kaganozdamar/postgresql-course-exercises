SELECT
	(
		SELECT
			d.first_name || ' ' || d.last_name AS child_name
		FROM
			dependents AS d
		WHERE
			d.employee_id = e.employee_id
	),
	e.first_name || ' ' || e.last_name AS parent_name
FROM
	employees AS e
ORDER BY
	e.employee_id ASC;