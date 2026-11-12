
-- Day 17: SQL Practice
-- Topic: PARTITION BY

WITH sales AS (
    SELECT *
    FROM (VALUES
        ('Dallas', 'Emma', 2000),
        ('Dallas', 'John', 1000),
        ('Austin', 'Sarah', 1500),
        ('Austin', 'Mike', 500)
    ) AS s(city, customer_name, amount)
)

SELECT
    city,
    customer_name,
    amount,
    SUM(amount) OVER (
        PARTITION BY city
    ) AS city_total
FROM sales
ORDER BY city DESC, amount DESC;
