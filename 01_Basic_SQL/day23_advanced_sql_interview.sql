
-- Day 23: Advanced SQL Interview Questions


-- Exercise 1: Find the Second-Highest Salary

WITH employees AS (
    SELECT *
    FROM (VALUES
        (1, 'Emma', 7000),
        (2, 'John', 5000),
        (3, 'Sarah', 9000),
        (4, 'Mike', 7000),
        (5, 'David', 6000)
    ) AS e(employee_id, employee_name, salary)
),
ranked_employees AS (
    SELECT
        employee_name,
        salary,
        DENSE_RANK() OVER (
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employees
)
SELECT
    employee_name,
    salary,
    salary_rank
FROM ranked_employees
WHERE salary_rank = 2;


-- Exercise 2: Find Duplicate Email Addresses

WITH customers AS (
    SELECT *
    FROM (VALUES
        ('Emma', 'emma@gmail.com'),
        ('John', 'john@gmail.com'),
        ('Sarah', 'emma@gmail.com'),
        ('Mike', 'mike@gmail.com'),
        ('David', 'john@gmail.com'),
        ('Lisa', 'lisa@gmail.com')
    ) AS c(customer_name, email)
)
SELECT
    email,
    COUNT(*) AS duplicate_count
FROM customers
GROUP BY email
HAVING COUNT(*) > 1
ORDER BY duplicate_count DESC, email;


-- Exercise 3: Highest-Paid Employee
-- in Each Department

WITH employees AS (
    SELECT *
    FROM (VALUES
        ('Emma', 'IT', 7000),
        ('John', 'IT', 5000),
        ('Sarah', 'HR', 9000),
        ('Mike', 'HR', 6000),
        ('David', 'Sales', 8000),
        ('Lisa', 'Sales', 5500)
    ) AS e(employee_name, department, salary)
),
ranked_employees AS (
    SELECT
        employee_name,
        department,
        salary,
        DENSE_RANK() OVER (
            PARTITION BY department
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employees
)
SELECT
    employee_name,
    department,
    salary,
    salary_rank
FROM ranked_employees
WHERE salary_rank = 1
ORDER BY department;
