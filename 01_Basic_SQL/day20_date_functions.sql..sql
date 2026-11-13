
-- Day 20: SQL Practice
-- Topic: SQL Date Functions


-- Exercise 1: CURRENT_DATE and EXTRACT()

SELECT
    CURRENT_DATE AS today_date,
    EXTRACT(YEAR FROM CURRENT_DATE) AS current_year,
    EXTRACT(MONTH FROM CURRENT_DATE) AS current_month,
    EXTRACT(DAY FROM CURRENT_DATE) AS current_day;


-- Exercise 2: Extract Dates from Customer Orders

WITH orders AS (
    SELECT *
    FROM (VALUES
        ('Emma', DATE '2026-01-15', 1000),
        ('John', DATE '2026-02-20', 1500),
        ('Sarah', DATE '2026-03-10', 2000),
        ('Mike', DATE '2026-04-05', 1200)
    ) AS o(customer_name, order_date, amount)
)
SELECT
    customer_name,
    order_date,
    amount,
    EXTRACT(YEAR FROM order_date) AS order_year,
    EXTRACT(MONTH FROM order_date) AS order_month,
    EXTRACT(DAY FROM order_date) AS order_day
FROM orders
ORDER BY order_date;


-- Exercise 3: Date Addition and Subtraction

WITH orders AS (
    SELECT *
    FROM (VALUES
        ('Emma', DATE '2026-01-15'),
        ('John', DATE '2026-02-20'),
        ('Sarah', DATE '2026-03-10'),
        ('Mike', DATE '2026-04-05')
    ) AS o(customer_name, order_date)
)
SELECT
    customer_name,
    order_date,
    order_date + 7 AS delivery_date,
    order_date - 3 AS three_days_before,
    (order_date + 7) - order_date AS delivery_days
FROM orders
ORDER BY order_date;
