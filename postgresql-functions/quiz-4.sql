--two alternative methods for this quiz
SELECT
    CONCAT_WS(' ',
	'Quarter is:', DATE_PART('quarter', t_date),
	'Year is: ', DATE_PART('year', t_date),
	'Month is:', DATE_PART('month', t_date),
	'Doy is: ', DATE_PART('doy', t_date)
	) AS todays_date
FROM
    (SELECT CURRENT_DATE::TIMESTAMP as t_date) tbl;

SELECT
    CONCAT_WS(' ',
	'Quarter is:', EXTRACT(quarter FROM t_date),
	'Year is: ', EXTRACT(year FROM t_date),
	'Month is:', EXTRACT(month FROM t_date),
	'Doy is: ', EXTRACT(doy FROM t_date)
	) AS todays_date
FROM
    (SELECT CURRENT_DATE::TIMESTAMP as t_date) tbl;
	