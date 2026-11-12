
-- Day 5: SQL Practice
-- Topic: INNER JOIN

WITH customers AS (
    SELECT *
    FROM (VALUES
        (1, 'John'),
        (2, 'Sarah'),
        (3, 'Mike')
    ) AS c(customer_id, customer_name)
),
orders AS (
    SELECT *
    FROM (VALUES
        (101, 1, 500),
        (102, 2, 700),
        (103, 1, 300)
    ) AS o(order_id, customer_id, amount)
)

SELECT
    c.customer_name,
    o.order_id,
    o.amount
FROM customers c
INNER JOIN orders o
    ON c.customer_id = o.customer_id
ORDER BY o.order_id;
