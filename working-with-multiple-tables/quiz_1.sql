SELECT
    first_name, last_name,
    department_name
FROM employees
INNER JOIN departments USING(department_id)
ORDER BY first_name ASC;

--alternative method

SELECT
    first_name, last_name,
    department_name
FROM employees as e
INNER JOIN departments AS d
    ON d.department_id = e.department_id
ORDER BY first_name ASC;
