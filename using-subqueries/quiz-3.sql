SELECT
	department_id,
	dep.department_name,
	COUNT(*) AS emp_num
FROM
	employees
	INNER JOIN departments AS dep USING (department_id)
GROUP BY
	department_id,
	dep.department_name
HAVING
	COUNT(*) > (
		SELECT
			COUNT(*)
		FROM
			employees AS e
		WHERE
			e.department_id = (
				SELECT
					d.department_id
				FROM
					departments AS d
				WHERE
					department_name ILIKE '%it%'
			)
	)