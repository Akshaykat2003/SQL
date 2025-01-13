 
 -- Q1 Ensure that the price column in the products table is always greater than zero.
 
 product_id | product_name | price |  category   
------------+--------------+-------+-------------
          1 | Laptop       |  1000 | Electronics
          2 | Smartphone   |   500 | Gadgets
          3 | Headphones   |   150 | Accessories
          4 | Tablet       |   300 | Gadgets
(4 rows)



 Table "public.products"
    Column    |          Type          | Collation | Nullable |                   Default                    
--------------+------------------------+-----------+----------+----------------------------------------------
 product_id   | integer                |           | not null | nextval('products_product_id_seq'::regclass)
 product_name | character varying(255) |           |          | 
 price        | double precision       |           |          | 
 category     | character varying(255) |           |          | 
Indexes:
    "products_pkey" PRIMARY KEY, btree (product_id)
Check constraints:
    "price_check" CHECK (price > 0::double precision)
Referenced by:
    TABLE "sales" CONSTRAINT "sales_product_id_fkey" FOREIGN KEY (product_id) REFERENCES products(product_id)



-- Q2 Prevent duplicate entries in the email column of the customers table.


 customer_id | customer_name |       email        
-------------+---------------+--------------------
           1 | akshay        | akshay23@gmail.com
           2 | aman          | aman21@gmail.com
           3 | rahul         | rahul44@gmail.com
           4 | john          | john88@gmail.com
           5 | ajay          | ajay56@gmail.com
           6 |               | 
           7 |               | 
           8 |               | 
           9 |               | 
          10 |               | 
(10 rows)


--  Q3 alter table customers ADD constraint email_unique UNIQUE (email);

                                            ALTER TABLE
                                            Table "public.customers"
    Column     |          Type          | Collation | Nullable |                    Default                     
---------------+------------------------+-----------+----------+------------------------------------------------
 customer_id   | integer                |           | not null | nextval('customers_customer_id_seq'::regclass)
 customer_name | character varying(255) |           |          | 
 email         | character varying(255) |           |          | 
Indexes:
    "customers_pkey" PRIMARY KEY, btree (customer_id)
    "email_unique" UNIQUE CONSTRAINT, btree (email)
Referenced by:
    TABLE "sales" CONSTRAINT "sales_customer_id_fkey" FOREIGN KEY (customer_id) REFERENCES customers(customer_id)



-- Q4 Make sure that the age column in the employees table is always between 18 and 65.
 
 employee_id | first_name | last_name | department_id |  salary  | age 
-------------+------------+-----------+---------------+----------+-----
           1 | akshay     | katoch    |             1 | 40000.00 |  20
           2 | Jane       | Smith     |             2 | 75000.00 |  25
           3 | Emily      | Johnson   |             3 | 80000.00 |  32
           4 | Michael    | Brown     |             4 | 70000.00 |  21
           5 | Jessica    | Davis     |             5 | 65000.00 |  76
(5 rows)

-- ADD CONSTRAINT age_check CHECK (age BETWEEN 18 AND 65);




