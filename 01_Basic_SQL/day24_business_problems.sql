
-- Day 24: Real-World SQL Business Problems


-- Exercise 1: Total Sales Revenue by City

WITH sales AS (
    SELECT *
    FROM (VALUES
        ('Emma', 'Dallas', 1500),
        ('John', 'Houston', 2000),
        ('Sarah', 'Dallas', 2500),
        ('Mike', 'Austin', 1800),
        ('David', 'Houston', 1200),
        ('Lisa', 'Austin', 2200)
    ) AS s(customer_name, city, sales_amount)
)
SELECT
    city,
    SUM(sales_amount) AS total_revenue
FROM sales
GROUP BY city
ORDER BY total_revenue DESC, city;


-- Exercise 2: Product Revenue Analysis

WITH sales AS (
    SELECT *
    FROM (VALUES
        ('Laptop', 1500),
        ('Phone', 800),
        ('Laptop', 2000),
        ('Tablet', 600),
        ('Phone', 1200),
        ('Tablet', 900)
    ) AS s(product_name, sales_amount)
)
SELECT
    product_name,
    SUM(sales_amount) AS total_revenue
FROM sales
GROUP BY product_name
ORDER BY total_revenue DESC;


-- Exercise 3: Top 3 Customers by Revenue

WITH sales AS (
    SELECT *
    FROM (VALUES
        ('Emma', 1500),
        ('John', 2000),
        ('Sarah', 2500),
        ('Emma', 1000),
        ('John', 1200),
        ('Mike', 1800),
        ('Sarah', 1500)
    ) AS s(customer_name, sales_amount)
)
SELECT
    customer_name,
    SUM(sales_amount) AS total_spent
FROM sales
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 3;
