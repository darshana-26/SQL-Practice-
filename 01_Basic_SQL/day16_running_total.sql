
-- Day 16: SQL Practice
-- Topic: SUM() OVER() - Running Total

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
    SUM(sales) OVER (
        ORDER BY month_number
        ROWS BETWEEN UNBOUNDED PRECEDING
        AND CURRENT ROW
    ) AS running_total
FROM monthly_sales
ORDER BY month_number;
