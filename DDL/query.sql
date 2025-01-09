CREATE DATABASE
CREATE TABLE
          List of relations
 Schema |   Name   | Type  |  Owner   
--------+----------+-------+----------
 public | employee | table | postgres
(1 row)


                                          Table "public.employee"
   Column    |         Type          | Collation | Nullable |                    Default                    
-------------+-----------------------+-----------+----------+-----------------------------------------------
 employee_id | integer               |           | not null | nextval('employee_employee_id_seq'::regclass)
 first_name  | character varying(50) |           | not null | 
 last_name   | character varying(50) |           | not null | 
 salary      | double precision      |           |          | 





ALTER TABLE employee ADD COLUMN department VARCHAR(50);
                                          Table "public.employee"
   Column    |         Type          | Collation | Nullable |                    Default                    
-------------+-----------------------+-----------+----------+-----------------------------------------------
 employee_id | integer               |           | not null | nextval('employee_employee_id_seq'::regclass)
 first_name  | character varying(50) |           | not null | 
 last_name   | character varying(50) |           | not null | 
 salary      | double precision      |           |          | 
 department  | character varying(50) |           |          | 



ALTER TABLE
ALTER TABLE employee ALTER COLUMN salary DROP NOT NULL;

  
                                          Table "public.employee"
   Column    |         Type          | Collation | Nullable |                    Default                    
-------------+-----------------------+-----------+----------+-----------------------------------------------
 employee_id | integer               |           | not null | nextval('employee_employee_id_seq'::regclass)
 first_name  | character varying(50) |           | not null | 
 last_name   | character varying(50) |           | not null | 
 salary      | double precision      |           |          | 
 department  | character varying(50) |           |          | 





ALTER TABLE employee RENAME TO staff;
                                            Table "public.staff"
   Column    |         Type          | Collation | Nullable |                    Default                    
-------------+-----------------------+-----------+----------+-----------------------------------------------
 employee_id | integer               |           | not null | nextval('employee_employee_id_seq'::regclass)
 first_name  | character varying(50) |           | not null | 
 last_name   | character varying(50) |           | not null | 
 salary      | double precision      |           |          | 
 department  | character varying(50) |           |          | 




 ALTER TABLE staff DROP COLUMN department;
                                            Table "public.staff"
   Column    |         Type          | Collation | Nullable |                    Default                    
-------------+-----------------------+-----------+----------+-----------------------------------------------
 employee_id | integer               |           | not null | nextval('employee_employee_id_seq'::regclass)
 first_name  | character varying(50) |           | not null | 
 last_name   | character varying(50) |           | not null | 
 salary      | double precision      |           |          | 





CREATE TABLE
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);

                                             Table "public.departments"
     Column      |         Type          | Collation | Nullable |                      Default                       
-----------------+-----------------------+-----------+----------+----------------------------------------------------
 department_id   | integer               |           | not null | nextval('departments_department_id_seq'::regclass)
 department_name | characterCREATE DATABASE





CREATE TABLE

 CREATE DATABASE inventory;
  \c inventory;
 CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10, 2)
);


                                          Table "public.products"
    Column    |         Type          | Collation | Nullable |                   Default                    
--------------+-----------------------+-----------+----------+----------------------------------------------
 product_id   | integer               |           | not null | nextval('products_product_id_seq'::regclass)





 DROP DATABASE inventory;

            List of relations
 Schema |    Name     | Type  |  Owner   
--------+-------------+-------+----------
 public | departments | table | postgres
 public | staff       | table | postgres
(2 rows)








COMBINED Commands

\o C:/SQLOutputs/output.sql
CREATE DATABASE company;
\c company

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    salary DECIMAL(10, 2)
);
ALTER TABLE employees ADD COLUMN department VARCHAR(50);
ALTER TABLE employees ALTER COLUMN salary DROP NOT NULL;
ALTER TABLE employees RENAME TO staff;
ALTER TABLE staff DROP COLUMN department;

CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
);
CREATE DATABASE inventory;
\c inventory

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(50),
    price DECIMAL(10, 2)
);
DROP DATABASE inventory;
\o
