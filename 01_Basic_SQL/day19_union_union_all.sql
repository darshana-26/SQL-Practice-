
-- Day 19: SQL Practice
-- Topic: UNION

WITH store1 AS (
    SELECT *
    FROM (VALUES
        ('Emma'),
        ('John'),
        ('Sarah')
    ) AS s(customer_name)
),
store2 AS (
    SELECT *
    FROM (VALUES
        ('Sarah'),
        ('Mike'),
        ('David')
    ) AS s(customer_name)
)

SELECT customer_name FROM store1
UNION
SELECT customer_name FROM store2
ORDER BY customer_name;
