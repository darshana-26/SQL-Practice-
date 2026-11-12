
-- Day 2: SQL Practice
-- Topic: ORDER BY

SELECT *
FROM (
    VALUES
        (101, 'John', 55000),
        (102, 'Sarah', 65000),
        (103, 'Mike', 45000),
        (104, 'Emma', 75000)
) AS employees(employee_id, employee_name, salary)
ORDER BY salary DESC;
