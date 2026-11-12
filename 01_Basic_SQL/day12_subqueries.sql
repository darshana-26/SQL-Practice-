
-- Day 12: SQL Practice
-- Topic: Subqueries

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
    amount
FROM sales
WHERE amount > (
    SELECT AVG(amount)
    FROM sales
)
ORDER BY amount DESC;
