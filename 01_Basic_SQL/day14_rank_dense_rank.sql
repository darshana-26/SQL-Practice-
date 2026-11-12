
-- Day 14: SQL Practice
-- Topic: RANK() and DENSE_RANK()

WITH sales AS (
    SELECT *
    FROM (VALUES
        ('Emma', 2000),
        ('Sarah', 1200),
        ('John', 1200),
        ('Mike', 500)
    ) AS s(customer_name, amount)
)

SELECT
    customer_name,
    amount,
    RANK() OVER (ORDER BY amount DESC) AS sales_rank,
    DENSE_RANK() OVER (ORDER BY amount DESC) AS dense_rank
FROM sales
ORDER BY amount DESC, customer_name;
