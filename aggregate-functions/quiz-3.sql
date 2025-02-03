SELECT
    COUNT(*) AS total_rows
FROM address;

SELECT
    COUNT(*) AS pc_is_not_null
FROM address
WHERE
    postal_code IS NOT NULL;

-- for the query above, we can use COUNT with a column name to calculate only non-null rows; like the following query

SELECT
    COUNT(postal_code) AS pc_is_not_null
FROM address;

SELECT
    COUNT(DISTINCT district) AS total_distinct_district
FROM
    address;