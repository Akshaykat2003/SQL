 employee_id | first_name | last_name | salary 
-------------+------------+-----------+--------
(0 rows)



 employee_id | first_name | last_name | salary 
-------------+------------+-----------+--------
           7 | ajay       | thakur    |  20000
           8 | rahul      | yadav     |  65000
           9 | akshay     | katoch    |  30000
(3 rows)


 employee_id | first_name | last_name | salary 
-------------+------------+-----------+--------
           7 | ajay       | thakur    |  20000
           8 | rahul      | yadav     |  65000
           9 | akshay     | katoch    |  65000
(3 rows)

COMMIT




------------+--------------+-------
          1 | Product A    |    25
          3 | Product C    |    30
          4 | Product D    |    27
(3 rows)



--  DELETE FROM products WHERE product_id = '6';

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            DELETE 1
 product_id | product_name | price 
------------+--------------+-------
          3 | Product C    |    30
          4 | Product D    |    27
(2 rows)



-- INSERT INTO products (product_name, price) VALUES ('Books', 200);

 product_id | product_name | price 
------------+--------------+-------
          3 | Product C    |    30
          4 | Product D    |    27
          7 | Books        |   200
(3 rows)


ROLLBACK
 product_id | product_name | price 
------------+--------------+-------
          3 | Product C    |    30
          4 | Product D    |    27
(2 rows)


-- UPDATE products SET price = 25 WHERE product_id = 3;
UPDATE 1
 product_id | product_name | price 
------------+--------------+-------
          4 | Product D    |    27
          6 | Books        |   200
          3 | Product C    |    25
(3 rows)


-- INSERT INTO products (product_name, price) VALUES ('pendrive', 300);

 product_id | product_name | price 
------------+--------------+-------
          4 | Product D    |    27
          6 | Books        |   200
          3 | Product C    |    25
          8 | pendrive     |   300
(4 rows)

COMMIT