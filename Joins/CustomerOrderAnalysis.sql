
-- 1. Customer Order Analysis

 customer_id |     name      |           email           
-------------+---------------+---------------------------
           1 | akshay katoch | akshay.21@gmail.com
           2 | Alice Johnson | alice.johnson@example.com
           3 | Bob Smith     | bob.smith@example.com
           4 | Diana Prince  | diana.prince@example.com
           5 | Ethan Hunt    | ethan.hunt@example.com
(5 rows)



 order_id | customer_id |     order_date      
----------+-------------+---------------------
        1 |           1 | 2025-01-01 10:00:00
        2 |           1 | 2025-01-05 15:30:00
        3 |           2 | 2025-01-03 12:15:00
        4 |           4 | 2025-01-04 09:45:00
        5 |           5 | 2025-01-02 14:20:00
        6 |           5 | 2025-01-06 11:00:00
(6 rows)



-- Q1 dentify customers who have not placed any orders.


 customer_id |   name    
-------------+-----------
           3 | Bob Smith
(1 row)


-- SELECT customers.customer_id, customers.name
-- FROM customers
-- LEFT JOIN orders ON customers.customer_id = orders.customer_id
-- WHERE orders.order_id IS NULL;



