
-- Day 21: SQL Practice
-- Topic: SQL String Functions


-- Exercise 1: UPPER() and LOWER()

WITH customers AS (
    SELECT *
    FROM (VALUES
        ('Emma', 'Dallas'),
        ('John', 'Houston'),
        ('Sarah', 'Austin'),
        ('Mike', 'Chicago')
    ) AS c(customer_name, city)
)
SELECT
    customer_name,
    UPPER(customer_name) AS uppercase_name,
    LOWER(customer_name) AS lowercase_name,
    city,
    UPPER(city) AS uppercase_city
FROM customers;


-- Exercise 2: LENGTH()

WITH customers AS (
    SELECT *
    FROM (VALUES
        ('Emma', 'Dallas'),
        ('John', 'Houston'),
        ('Sarah', 'Austin'),
        ('Mike', 'Chicago')
    ) AS c(customer_name, city)
)
SELECT
    customer_name,
    LENGTH(customer_name) AS name_length,
    city,
    LENGTH(city) AS city_length
FROM customers;


-- Exercise 3: TRIM()

WITH customers AS (
    SELECT *
    FROM (VALUES
        ('  Emma  ', '  Dallas  '),
        (' John ', ' Houston '),
        ('  Sarah', 'Austin  '),
        ('Mike  ', ' Chicago ')
    ) AS c(customer_name, city)
)
SELECT
    customer_name,
    TRIM(customer_name) AS clean_name,
    LENGTH(customer_name) AS original_length,
    LENGTH(TRIM(customer_name)) AS clean_length,
    TRIM(city) AS clean_city
FROM customers;
