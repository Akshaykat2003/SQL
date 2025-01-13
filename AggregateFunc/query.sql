


product_id | product_name | price |  category   
------------+--------------+-------+-------------
          1 | Laptop       |  1000 | Electronics
          2 | Smartphone   |   500 | Gadgets
          3 | Headphones   |   150 | Accessories
          4 | Tablet       |   300 | Gadgets
(4 rows)




 employee_id | first_name | last_name | department_id |  salary  
-------------+------------+-----------+---------------+----------
           1 | akshay     | katoch    |             1 | 40000.00
           2 | Jane       | Smith     |             2 | 75000.00
           3 | Emily      | Johnson   |             3 | 80000.00
           4 | Michael    | Brown     |             4 | 70000.00
           5 | Jessica    | Davis     |             5 | 65000.00
(5 rows)



-            List of relations
 Schema |    Name     | Type  |  Owner   
--------+-------------+-------+----------
 public | customers   | table | postgres
 public | departments | table | postgres
 public | employees   | table | postgres
 public | products    | table | postgres
 public | sales       | table | postgres
 public | salesperson | table | postgres
(6 rows)


 department_id |department_name  
---------------+-----------------
             1 | Human Resources
             2 | Finance
             3 | Marketing
             4 | Sales
             5 | IT
(5 rows)


 employee_id | first_name | last_name | department_id |  salary  
-------------+------------+-----------+---------------+----------
           1 | akshay     | katoch    |             1 | 40000.00
           2 | Jane       | Smith     |             2 | 75000.00
           3 | Emily      | Johnson   |             3 | 80000.00
           4 | Michael    | Brown     |             4 | 70000.00
           5 | Jessica    | Davis     |             5 | 65000.00
(5 rows)



 sale_id | product_id | customer_id | sale_date  | quantity | total_amount | salesperson_id 
---------+------------+-------------+------------+----------+--------------+----------------
       1 |          1 |           1 | 2025-01-10 |        2 |      2000.00 |              1
       2 |          2 |           2 | 2025-01-11 |        1 |       500.00 |              2
       3 |          3 |           3 | 2025-01-12 |        3 |       450.00 |              3
       4 |          4 |           4 | 2025-01-13 |        1 |       300.00 |              4
(4 rows)





-- Q1 Find the average salary of employees in each department.
 department_id | avg_salary
---------------+------------
             1 |   40000.00
             2 |   75000.00
             3 |   80000.00
             4 |   70000.00
             5 |   65000.00
(5 rows)

-- Q2 Calculate the total sales for each product category.

 category    | total_sales
-------------+-------------
 Electronics |     2000.00
 Gadgets     |      800.00
 Accessories |      450.00
(3 rows)

-- Q3 Determine the maximum and minimum prices of products in the inventory.
 max_product       | max_price |min_product        | min_price
-------------------+-----------+-------------------+-----------
 Laptop            |      1000 | Headphones        |       150
(1 row)

-- Q4 Count the number of orders placed by each customer.

 customer_id | order_count
-------------+-------------
           3 |           1
           4 |           1
           2 |           1
           1 |           1
(4 rows)

-- Q5 Find the total revenue generated by each salesperson.

    salesperson_id | total_revenue 
----------------+---------------
              3 |        450.00
              4 |        300.00
              2 |        500.00
              1 |       2000.00
(4 rows)






