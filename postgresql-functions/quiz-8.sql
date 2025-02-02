SELECT
     first_name, last_name, hire_date, salary,
	 CASE
	     WHEN DATE_PART('year', hire_date) BETWEEN 2018 AND 2020 THEN '%25'
		 WHEN DATE_PART('year', hire_date) < 2018 THEN '%35'
		 WHEN DATE_PART('year', hire_date) > 2020 THEN '%15'
	 END AS salary_increase
FROM employees;