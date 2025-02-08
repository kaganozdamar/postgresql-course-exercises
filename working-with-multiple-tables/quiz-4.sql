SELECT
    brand,
	type_name,
	color
FROM cars
CROSS JOIN car_types
CROSS JOIN colors
ORDER BY 1, 2, 3 ASC;