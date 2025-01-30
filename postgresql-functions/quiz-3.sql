SELECT first_name || ' ' || last_name || ' ' || email as aligned
FROM employees;

SELECT CONCAT_WS(' ', first_name, last_name, email) as aligned
FROM employees;

SELECT CONCAT(first_name, ' ', last_name, ' ', email) as aligned
FROM employees;