
-- Day 9: SQL Practice
-- Topic: CROSS JOIN

WITH customers AS (
    SELECT *
    FROM (VALUES
        (1, 'John'),
        (2, 'Sarah')
    ) AS c(customer_id, customer_name)
),
products AS (
    SELECT *
    FROM (VALUES
        (101, 'Laptop'),
        (102, 'Phone'),
        (103, 'Tablet')
    ) AS p(product_id, product_name)
)

SELECT
    c.customer_name,
    p.product_name
FROM customers c
CROSS JOIN products p
ORDER BY c.customer_id, p.product_id;
