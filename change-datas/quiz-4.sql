SELECT
	*
FROM
	product AS p,
	product_segment AS ps
WHERE
	p.segment_id = ps.id
	AND ps.segment = 'Luxury';

DELETE FROM product AS p USING product_segment AS ps
WHERE
	p.segment_id = ps.id
	AND ps.segment = 'Luxury';