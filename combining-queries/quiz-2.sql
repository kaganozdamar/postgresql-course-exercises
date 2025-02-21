SELECT
    'Country' AS place_type,
    country_id AS place_id,
    country AS place_name
FROM country
UNION ALL
SELECT
    'City' AS place_type,
    city_id AS place_id,
    city AS place_name
FROM city
UNION ALL
SELECT
    'Address' AS place_type,
    address_id AS place_id,
    address AS place_name
FROM address
ORDER BY 2,1 ASC;
