-- who has worked on 2022-05-01?

SELECT * FROM staff
WHERE hire_date < '2022-05-01' AND departure_date > '2022-05-02';

-- the best practice is the one below

SELECT * FROM staff
WHERE '2022-05-01' BETWEEN hire_date AND departure_date;
