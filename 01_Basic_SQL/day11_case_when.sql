
-- Day 11: SQL Practice
-- Topic: CASE WHEN

WITH sales AS (
    SELECT *
    FROM (VALUES
        ('John', 500),
        ('Sarah', 1200),
        ('Mike', 300),
        ('Emma', 2000)
    ) AS s(customer_name, amount)
)

SELECT
    customer_name,
    amount,
    CASE
        WHEN amount >= 1000 THEN 'High'
        WHEN amount >= 500 THEN 'Medium'
        ELSE 'Low'
    END AS category
FROM sales
ORDER BY amount DESC;
