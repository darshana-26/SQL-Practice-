
-- Day 4: SQL Practice
-- Topic: HAVING

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
HAVING SUM(sales_amount) > 800
ORDER BY total_sales DESC;
