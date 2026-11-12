
-- Day 15: SQL Practice
-- Topic: LAG() and LEAD()

WITH monthly_sales AS (
    SELECT *
    FROM (VALUES
        (1, 'January', 1000),
        (2, 'February', 1500),
        (3, 'March', 1200),
        (4, 'April', 2000)
    ) AS s(month_number, month_name, sales)
)

SELECT
    month_name,
    sales,
    LAG(sales) OVER (
        ORDER BY month_number
    ) AS previous_sales,
    LEAD(sales) OVER (
        ORDER BY month_number
    ) AS next_sales
FROM monthly_sales
ORDER BY month_number;
