
-- Day 13: SQL Practice
-- Topic: Window Function - ROW_NUMBER()

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
    ROW_NUMBER() OVER (ORDER BY amount DESC) AS row_num,
    customer_name,
    amount
FROM sales
ORDER BY amount DESC;
