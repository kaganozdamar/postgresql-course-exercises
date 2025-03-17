--explicit
INSERT INTO
	staff (
		staff_id,
		first_name,
		last_name,
		hire_date,
		departure_date
	)
VALUES
	(207, 'John', 'Doe', '2025-03-04', '2025-03-05');

--implicit
INSERT INTO
	staff
VALUES
	(208, 'Jane', 'Doe', '2025-03-02', '2025-03-03');