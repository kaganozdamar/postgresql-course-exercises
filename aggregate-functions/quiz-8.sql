SELECT
    department_id,
	COUNT(*) AS numberof_emps,
	CASE
	    WHEN COUNT(*) <= 3 THEN 'Small Room'
		WHEN COUNT(*) BETWEEN 4 AND 6 THEN 'Middle Room'
		WHEN COUNT(*) > 6 THEN 'Big Room'
	END AS room_type
FROM employees
GROUP BY department_id
ORDER BY 2;