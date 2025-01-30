SELECT
    CONCAT_WS(' ',
	    customer_id,
	    'paid:',
	    TO_CHAR(amount, 'L99D99'),
	    'at',
	    TO_CHAR(payment_date, 'HH24:MI:SS'),
	    'on',
	    TO_CHAR(payment_date, 'Mon-DD-YYYY')
	    ) AS p_info
FROM payment
LIMIT 5;

-- SELECT
--     customer_id,
-- 	amount,
-- 	payment_date
-- FROM payment
-- LIMIT 5;
	