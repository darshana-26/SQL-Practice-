
-- Day 6: SQL Practice
-- Topic: LEFT JOIN

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
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
ORDER BY c.customer_id, o.order_id;
