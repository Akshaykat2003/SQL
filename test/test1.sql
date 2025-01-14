
-- DDL COMMANDS
CREATE TABLE
--  CREATE TABLE books(
-- book_id SERIAL PRIMARY KEY,
-- title VARCHAR(255) NOT NULL,
-- author VARCHAR(255) NOT NULL,
--  publication_year DATE,
--  genre VARCHAR(255));

   
               Table "public.books"
      Column      |          Type          | Collation | Nullable |                Default                 
------------------+------------------------+-----------+----------+----------------------------------------
 book_id          | integer                |           | not null | nextval('books_book_id_seq'::regclass)
 title            | character varying(255) |           | not null | 
 author           | character varying(255) |           | not null | 
 publication_year | date                   |           |          | 
 genre            | character varying(255) |           |          | 
Indexes:
    "books_pkey" PRIMARY KEY, btree (book_id)



-- library=# CREATE TABLE members(
-- library(# member_id SERIAL PRIMARY KEY,
-- library(# name VARCHAR(255) NOT NULL,
-- library(# address VARCHAR(255) NOT NULL,
-- library(# contact_number INT NOT NULL);


                                                Table "public.members"
     Column     |          Type          | Collation | Nullable |                  Default                   
----------------+------------------------+-----------+----------+--------------------------------------------
 member_id      | integer                |           | not null | nextval('members_member_id_seq'::regclass)
 name           | character varying(255) |           | not null | 
 address        | character varying(255) |           | not null | 
 contact_number | integer                |           | not null | 
Indexes:
    "members_pkey" PRIMARY KEY, btree (member_id)









-- library=# CREATE TABLE borrowings(
-- library(# borrowing_id SERIAL PRIMARY KEY,
-- library(# book_id INT,
-- library(# member_id INT,
-- library(# borrow_date DATE NOT NULL,
-- library(# due_date DATE NOT NULL,
-- library(# returned_date DATE NOT NULL,
-- library(# FOREIGN KEY(book_id) REFERENCES books(book_id),
-- library(# FOREIGN KEY(member_id) REFERENCES members(member_id));

                                        CREATE TABLE


                             Table "public.borrowings"
    Column     |  Type   | Collation | Nullable |                     Default                      
---------------+---------+-----------+----------+--------------------------------------------------
 borrowing_id  | integer |           | not null | nextval('borrowings_borrowing_id_seq'::regclass)
 book_id       | integer |           |          | 
 member_id     | integer |           |          | 
 borrow_date   | date    |           | not null | 
 due_date      | date    |           | not null | 
 returned_date | date    |           | not null | 
Indexes:
    "borrowings_pkey" PRIMARY KEY, btree (borrowing_id)
Foreign-key constraints:
    "borrowings_book_id_fkey" FOREIGN KEY (book_id) REFERENCES books(book_id)
    "borrowings_member_id_fkey" FOREIGN KEY (member_id) REFERENCES members(member_id)



                       List of relations
 
 
 Schema |    Name    | Type  |  Owner   
--------+------------+-------+----------
 public | books      | table | postgres
 public | borrowings | table | postgres
 public | members    | table | postgres
(3 rows)



-- DML and -DQL


book_id |   title   | author | publication_year | genre  
---------+-----------+--------+------------------+--------
       1 | superhero | akshay | 2023-01-22       | action
       2 | book4     | ajay   | 2012-05-20       | Drama
       3 | book4     | ajay   | 2012-05-20       | Drama
       4 | ramayan   | ajay   | 2012-05-20       | thrill
(4 rows)



-- members table
member_id |  name   |     address      | contact_number 
-----------+---------+------------------+----------------
         1 | pankaj  | 123 st NORTH     |     1928362782
         2 | john    | 233 st SOUTH     |     1928362782
         3 | kelly   | 2343 st WEST     |     1328362734
         4 | amar    | 533 st EAST      |     1548587824
         5 | deepak  | Sector 25 mohali |     1548564545
         6 | rajveer | Sector 32 mohali |      154656545
(6 rows)

-- borrowings table

--  INSERT INTO borrowings(book_id,member_id,borrow_date,due_date,returned_date) VALUES
--  (2,3,'2025-01-19','2025-01-22','2024-01-25');
--   (2,2,'2025-01-20','2025-01-25','2024-01-23');
--   (3,4,'2025-01-25','2025-01-27','2024-01-29');



 borrowing_id | book_id | member_id | borrow_date |  due_date  | returned_date 
--------------+---------+-----------+-------------+------------+---------------
            1 |       1 |         1 | 2025-01-14  | 2025-01-20 | 2024-01-18
            3 |       2 |         2 | 2025-01-16  | 2025-01-20 | 2024-01-18
            4 |       2 |         3 | 2025-01-19  | 2025-01-22 | 2024-01-25
            5 |       2 |         2 | 2025-01-20  | 2025-01-25 | 2024-01-23
            6 |       2 |         2 | 2025-01-24  | 2025-01-27 | 2024-01-25
            7 |       2 |         4 | 2025-01-24  | 2025-01-27 | 2024-01-25
            8 |       3 |         4 | 2025-01-25  | 2025-01-27 | 2024-01-29
(7 rows)



