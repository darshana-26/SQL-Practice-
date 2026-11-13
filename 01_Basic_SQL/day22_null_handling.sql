
-- Day 22: SQL Practice
-- Topic: NULL Handling
-- COALESCE() and NULLIF()


-- Exercise 1: COALESCE() with Text

WITH customers AS (
    SELECT *
    FROM (VALUES
        ('Emma', 'Dallas'),
        ('John', NULL),
        ('Sarah', 'Austin'),
        ('Mike', NULL)
    ) AS c(customer_name, city)
)
SELECT
    customer_name,
    city,
    COALESCE(city, 'Unknown') AS updated_city
FROM customers;


-- Exercise 2: COALESCE() with Numbers

WITH employees AS (
    SELECT *
    FROM (VALUES
        ('Emma', 500),
        ('John', NULL),
        ('Sarah', 800),
        ('Mike', NULL)
    ) AS e(employee_name, bonus)
)
SELECT
    employee_name,
    bonus,
    COALESCE(bonus, 0) AS updated_bonus
FROM employees;


-- Exercise 3: NULLIF()

WITH products AS (
    SELECT *
    FROM (VALUES
        ('Laptop', 100),
        ('Phone', 0),
        ('Tablet', 50),
        ('Monitor', 0)
    ) AS p(product_name, stock_quantity)
)
SELECT
    product_name,
    stock_quantity,
    NULLIF(stock_quantity, 0) AS updated_stock
FROM products;
