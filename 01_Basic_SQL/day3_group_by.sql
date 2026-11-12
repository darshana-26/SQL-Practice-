
-- Day 3: SQL Practice
-- Topic: GROUP BY

SELECT
    city,
    SUM(sales_amount) AS total_sales
FROM (
    VALUES
        ('Dallas', 500),
        ('Houston', 300),
        ('Dallas', 700),
        ('Austin', 400),
        ('Houston', 600),
        ('Austin', 200)
) AS sales(city, sales_amount)
GROUP BY city
ORDER BY total_sales DESC;
