
-- ============================================
-- DAY 25: FINAL SQL PORTFOLIO PROJECT
-- Project: Retail Sales Analysis
-- Database: PostgreSQL
-- ============================================

-- Business Question 1:
-- What is the total company revenue?

SELECT
    SUM(quantity * unit_price) AS total_revenue
FROM retail_sales;


-- Business Question 2:
-- Which city generates the most revenue?

SELECT
    city,
    SUM(quantity * unit_price) AS total_revenue
FROM retail_sales
GROUP BY city
ORDER BY total_revenue DESC;


-- Business Question 3:
-- Which product generates the most revenue?

SELECT
    product_name,
    SUM(quantity * unit_price) AS total_revenue
FROM retail_sales
GROUP BY product_name
ORDER BY total_revenue DESC;


-- Business Question 4:
-- Who are the top 3 customers by spending?

SELECT
    customer_name,
    SUM(quantity * unit_price) AS total_spent
FROM retail_sales
GROUP BY customer_name
ORDER BY total_spent DESC
LIMIT 3;


-- Business Question 5:
-- How much revenue is generated each month?

SELECT
    DATE_TRUNC('month', sale_date)::DATE
        AS sales_month,
    SUM(quantity * unit_price) AS monthly_revenue
FROM retail_sales
GROUP BY DATE_TRUNC('month', sale_date)
ORDER BY sales_month;
