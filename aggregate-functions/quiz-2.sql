SELECT
   CONCAT_WS(' ',
       DATE_PART('day', SUM(return_date - rental_date)),
	   'Days',
	   DATE_PART('hour', SUM(return_date - rental_date)),
	   'Hours',
	   DATE_PART('minute', SUM(return_date - rental_date)),
	   'Minutes') AS rental_duration
FROM rental;

--rounded time duration

SELECT
    SUM(return_date::DATE - rental_date::DATE) AS rental_duration
FROM rental;