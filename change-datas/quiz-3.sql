--delete statement without using "using" clause
DELETE FROM movies AS m
WHERE
	m.movie_id IN (
		SELECT
			mr.movie_id
		FROM
			movie_reviews AS mr
	);