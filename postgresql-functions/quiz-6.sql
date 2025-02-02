SELECT
    brand, price, discount,
	(price - COALESCE(discount, 0)) as net_price
FROM cars;