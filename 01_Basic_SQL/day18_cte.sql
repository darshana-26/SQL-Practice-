
-- Day 18: SQL Practice
-- Topic: Common Table Expressions (CTEs)

WITH employees AS (
    SELECT *
    FROM (VALUES
        ('Emma', 'IT', 6000),
        ('John', 'HR', 4500),
        ('Sarah', 'IT', 7000),
        ('Mike', 'Sales', 4000)
    ) AS e(employee_name, department, salary)
),

high_salary_employees AS (
    SELECT
        employee_name,
        department,
        salary
    FROM employees
    WHERE salary > 5000
)

SELECT *
FROM high_salary_employees
ORDER BY salary DESC;
