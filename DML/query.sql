

                                            Table "public.staff"
   Column    |         Type          | Collation | Nullable |                    Default                    
-------------+-----------------------+-----------+----------+-----------------------------------------------
 employee_id | integer               |           | not null | nextval('employee_employee_id_seq'::regclass)
 first_name  | character varying(50) |           | not null | 
 last_name   | character varying(50) |           | not null | 
 salary      | double precision      |           |          | 
Indexes:
    "employee_pkey" PRIMARY KEY, btree (employee_id)



--  INSERT INTO staff (first_name, last_name, salary) VALUES
-- ('Akshay', 'katoch', 50000),
-- ('Armaan', 'Jain', 55000),
-- ('sarvit', 'chauhan', 30000);

 employee_id | first_name | last_name | salary 
-------------+------------+-----------+--------
           4 | akshay     | katoch    |  50000
           5 | Armaan     | jain      |  55000
           6 | sarvit     | chauhan   |  30000
(3 rows)


-- SELECT first_name,last_name from staff;
------------+-----------
 akshay     | katoch
 Armaan     | jain
 sarvit     | chauhan
(3 rows)




-- UPDATE staff SET salary = 90000 WHERE employee_id = 4;

 employee_id | first_name | last_name | salary 
-------------+------------+-----------+--------
           5 | Armaan     | jain      |  55000
           6 | sarvit     | chauhan   |  30000
           4 | akshay     | katoch    |  90000
(3 rows)




-- DELETE FROM staff WHERE employee_id = 6;
-------------+------------+-----------+--------
           5 | Armaan     | jain      |  55000
           4 | akshay     | katoch    |  90000
(2 rows)





-- SELECT * FROM staff WHERE salary > 80000;

-------------+------------+-----------+--------
           4 | akshay     | katoch    |  90000
(1 row)




CREATE TABLE


                                           Table "public.products"
    Column    |          Type          | Collation | Nullable |                   Default                    
--------------+------------------------+-----------+----------+----------------------------------------------
 product_id   | integer                |           | not null | nextval('products_product_id_seq'::regclass)
 product_name | character varying(255) |           | not null | 
 price        | double precision       |           |          | 
Indexes:
    "products_pkey" PRIMARY KEY, btree (product_id)




-- INSERT INTO products (product_name, price) VALUES
-- ('Product A', 25.00),
-- ('Product B', 15.50),
-- ('Product C', 30.00),
-- ('Product D', 22.75),
-- ('Product E', 10.00);

 product_id | product_name | price 
------------+--------------+-------
          1 | Product A    |    25
          2 | Product B    |    15
          3 | Product C    |    30
          4 | Product D    | 22.75
          5 | Product E    |    10
(5 rows)



-- UPDATE products SET price = 27 WHERE product_id = 4;

 product_id | product_name | price 
------------+--------------+-------
          1 | Product A    |    25
          2 | Product B    |    15
          3 | Product C    |    30
          5 | Product E    |    10
          4 | Product D    |    27
(5 rows)



--  SELECT * FROM products WHERE price BETWEEN 15 AND 30;

------------+--------------+-------
          1 | Product A    |    25
          2 | Product B    |    15
          3 | Product C    |    30
          4 | Product D    |    27
(4 rows)



-- DELETE FROM products WHERE price < 20;

 product_id | product_name | price 
------------+--------------+-------
          1 | Product A    |    25
          3 | Product C    |    30
          4 | Product D    |    27
(3 rows)








-- \o D:/postgresSql/DML/query.sql
-- \c company
-- INSERT INTO staff (first_name, last_name, salary) VALUES
-- ('Akshay', 'katoch', 50000),
-- ('Armaan', 'Jain', 55000),
-- ('sarvit', 'chauhan', 30000);
-- SELECT * FROM staff;
-- SELECT first_name, last_name FROM staff;
-- UPDATE staff SET salary = 90000 WHERE employee_id = 4;
-- DELETE FROM staff WHERE employee_id = 2;
-- SELECT * FROM staff WHERE salary > 55000;
-- \c inventory
-- INSERT INTO products (product_name, price) VALUES
-- ('Product A', 25.00),
-- ('Product B', 15.50),
-- ('Product C', 30.00),
-- ('Product D', 22.75),
-- ('Product E', 10.00);
-- UPDATE products SET price = 27.50 WHERE product_id = 1;
-- SELECT * FROM products WHERE price BETWEEN 15 AND 30;
-- DELETE FROM products WHERE price < 20;
-- \o
