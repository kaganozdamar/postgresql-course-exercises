SELECT *
FROM film
WHERE description LIKE '%Hunter%';

--The one below is an alternative method but it is not best practice.

SELECT *
FROM film
WHERE POSITION('Hunter' IN description) > 0;