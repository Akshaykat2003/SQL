-- Scenario: You have tables: employees, departments, and sales.
-- Problem: Find the top-performing department based on total sales.
-- Solution: Use INNER JOIN to combine employee, department, and sales data. Group the results by department and calculate the total sales for each department.

Query: SELECT 
     d.department_id,
     d.department_name,
     SUM(s.sale_amount) AS total_sales
 FROM departments d
 INNER JOIN employees e ON d.department_id = e.department_id
 INNER JOIN sales s ON e.employee_id = s.employee_id
 GROUP BY d.department_id, d.department_name
 ORDER BY total_sales DESC;

Output:
 department_id | department_name | total_sales 
---------------+-----------------+-------------
             2 | Sales           |     4500.00
             1 | Marketing       |      500.00
(2 rows)