
CREATE TABLE
                                              Table "public.departments"
     Column      |          Type          | Collation | Nullable |                      Default                       
-----------------+------------------------+-----------+----------+----------------------------------------------------
 department_id   | integer                |           | not null | nextval('departments_department_id_seq'::regclass)
 department_name | character varying(255) |           | not null | 
Indexes:
    "departments_pkey" PRIMARY KEY, btree (department_id)



CREATE TABLE
                                             Table "public.employees"
      Column      |          Type          | Collation | Nullable |                    Default                     
------------------+------------------------+-----------+----------+------------------------------------------------
 employee_id      | integer                |           | not null | nextval('employees_employee_id_seq'::regclass)
 emp_name         | character varying(255) |           | not null | 
 salary           | numeric(10,2)          |           |          | 
 fordeaprtment_id | integer                |           |          | 
Indexes:
    "employees_pkey" PRIMARY KEY, btree (employee_id)
Foreign-key constraints:
    "employees_fordeaprtment_id_fkey" FOREIGN KEY (fordeaprtment_id) REFERENCES departments(department_id)


INSERT 0 4
 
 department_id | department_name 
---------------+-----------------
             1 | Banking
             2 | Finanance
             3 | Engineering    
             4 | HR
(4 rows)


 employee_id | emp_name |  salary  | department_id 
-------------+----------+----------+---------------
           1 | akshay   | 50000.00 |             1
           2 | agrim    | 60000.00 |             2
           3 | rohit    |  3000.00 |             1
           4 | akhil    | 25000.00 |             3
           5 | rahul    | 45000.00 |             4
(5 rows)



-- Q1 How can you use a subquery to find employees who earn more than the average salary?


--  SELECT emp_name,salary from employees 
--  where salary > (select AVG(salary) from employees);
 emp_name |  salary  
----------+----------
 akshay   | 50000.00
 agrim    | 60000.00
 rahul    | 45000.00
(3 rows)


-- Q2 What is the difference between EXISTS and IN subqueries?
-- select department_name from departments d 
-- WHERE exists(select 1 from employees e 
-- WHERE e.department_id = d.department_id);

-- EXIST
department_name 
-----------------
 Banking
 Finanance
 Engineering
 HR
(4 rows)


-- IN 

-- select emp_name,salary from employees
-- where department_id IN (select department_id from departments
-- WHERE department_name IN('banking','HR'));

emp_name |  salary  
----------+----------
 akshay   | 50000.00
 rohit    |  3000.00
 rahul    | 45000.00
(3 rows)



CREATE TABLE
            List of relations
 Schema |    Name     | Type  |  Owner   
--------+-------------+-------+----------
 public | customers   | table | postgres
 public | departments | table | postgres
 public | employees   | table | postgres
 public | orders      | table | postgres
(4 rows)

-- Q3 TABLE

CUSTOMER TABLE

customer_id | cust_name 
-------------+-----------
           1 | Akshay
           2 | agrim
           3 | Charlie
           4 | Diana
(4 rows)


ORDER TABLE

 order_id | customer_id | order_date 
----------+-------------+------------
        1 |           1 | 2025-01-01
        2 |           1 | 2025-01-02
        3 |           2 | 2025-01-03
        4 |           3 | 2025-01-01
        5 |           3 | 2025-01-02
        6 |           3 | 2025-01-03
        7 |           4 | 2025-01-04
(7 rows)

-- Q3 How can you use a correlated subquery to find customers who have placed the most orders?


cust_name 
-----------
 Charlie
(1 row)

-- Q4 Can you use a subquery in the FROM clause? If so, how?



 department_name |     avg_salary     
-----------------+--------------------
 Banking         | 26500.00
 Finanance       | 60000.00
 Engineering     | 25000.00
 HR              | 45000.00
(4 rows)

-- Q5 How can you use a subquery to find the department with the highest average salary?

department_name 
-----------------
 Finanance
(1 row)

-- Q6 What are some common performance issues with subqueries?

Common performance issues with subqueries:

1 Poor indexing: If tables lack proper indexes, subqueries can become slow.
2 Repeated execution: Correlated subqueries may execute multiple times for each row.
3 Large datasets: Subqueries processing large datasets can lead to memory and CPU bottlenecks.


-- Q7  Optimize a subquery to improve performance:


1 Use EXISTS instead of IN for larger datasets.
2 Simplify correlated subqueries by using joins.
3 Apply indexing on columns used in the subquery.

-- Q8 Use a subquery within ano emp_name 

SELECT emp_name
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees
    WHERE department_id IN (
        SELECT department_id
        FROM departments
        WHERE department_name IN ('Banking', 'Engineering')
    )
);

-- OUTPUT 
emp_name
----------
 akshay
 agrim
 rahul
(3 rows)


-- Q9 Use a subquery to find duplicate records in a table.
SELECT emp_name, COUNT(*)
FROM employees
GROUP BY emp_name
HAVING COUNT(*) > 1;

emp_name | count 
----------+-------
 akshay   |     2
(1 row)


-- 10. Real-world examples of subqueries in business applications:

Employee Management:

Find employees eligible for promotion based on performance and average department performance.
E-commerce:

Identify products with sales above the average in a specific category.
Finance:

Find accounts with transactions above the average monthly spend.
Marketing:

Find customers whose spending exceeds the 90th percentile of all customers.
