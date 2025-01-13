department_id |     department_name      
---------------+--------------------------
             1 | Sales
             2 | Marketing
             3 | Customer Support
             4 | Research and Development
(4 rows)



 employee_id |      name      | department_id 
-------------+----------------+---------------
           1 | Akshay katoch  |             1
           2 | Alice Johnson  |             1
           3 | Charlie Brown  |             2
           4 | Diana Prince   |             3
           5 | Fiona Glenanne |             4
(5 rows)



 sale_id | employee_id | amount |         sale_date          
---------+-------------+--------+----------------------------
       1 |           1 | 500.00 | 2025-01-12 14:57:12.286989
       2 |           1 | 300.00 | 2025-01-12 14:57:12.286989
       3 |           2 | 700.00 | 2025-01-12 14:57:12.286989
       4 |           3 | 400.00 | 2025-01-12 14:57:12.286989
       5 |           4 | 200.00 | 2025-01-12 14:57:12.286989
(5 rows)


department_name  | total_sales 
------------------+-------------
 Sales            |     1500.00
 Marketing        |      400.00
 Customer Support |      200.00
(3 rows)




-- SELECT 
--     d.department_name,
--     SUM(s.amount) AS total_sales
-- FROM 
--     departments d
-- JOIN 
--     employees e ON d.department_id = e.department_id
-- JOIN 
--     sales s ON e.employee_id = s.employee_id
-- GROUP BY 
--     d.department_name
-- ORDER BY 
--     total_sales DESC
-- LIMIT 4;
