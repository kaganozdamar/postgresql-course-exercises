SELECT 
    b.*,
    COALESCE(
	    NULLIF(current_year, previous_year),
		previous_year) AS budget
FROM budgets AS b;