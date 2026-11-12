
-- Day 10: SQL Practice
-- Topic: SELF JOIN

WITH employees AS (
    SELECT *
    FROM (VALUES
        (1, 'John', NULL::INTEGER),
        (2, 'Sarah', 1),
        (3, 'Mike', 1),
        (4, 'Emma', 2)
    ) AS e(employee_id, employee_name, manager_id)
)

SELECT
    e.employee_name AS employee,
    m.employee_name AS manager
FROM employees e
LEFT JOIN employees m
    ON e.manager_id = m.employee_id
ORDER BY e.employee_id;
