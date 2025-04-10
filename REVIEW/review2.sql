 create table students(student_id int primary key , first_name varchar(50) , last_name varchar(50) , enrollment_date date , email varchar(100) unique);
    CREATE TABLE

    create table courses(course_id int primary key , course_name varchar(100) , credits int);
    CREATE TABLE

    create table enrollments(enrollment_id int primary key , student_id int , course_id int , grade decimal(3,2) , foreign key(student_id) references students(student_id) , foreign key(course_id) references courses(course_id));
    CREATE TABLE



    
INSERT 0 3
insert into students(student_id , first_name , last_name , enrollmentdate , email)
values

 student_id | first_name | last_name | enrollmentdate |       email        
------------+------------+-----------+----------------+--------------------
          1 | akshay     | katoch    | 2023-01-22     | akshay12@gmail.com
          2 | agrim      | chaudhary | 2023-02-12     | agrim13@gmail.com
          3 | ajay       | kummar    | 2023-05-20     | ajay13@gmail.com
          4 | rahul      | singh     | 2024-06-12     | rahul10@gmail.com
(4 rows)




insert into courses(course_id , course_name , credits) 
values

 course_id |   course_name   | credits 
-----------+-----------------+---------
         1 | java            |       4
         2 | DBMS            |       3
         3 | Cloud computing |       2
         4 | Python          |       5
(4 rows)

insert into enrollments(student_id , course_id , grade) 
values
 student_id | course_id | grade 
------------+-----------+-------
          1 |         1 |  9.80
          2 |         2 |  8.70
          3 |         3 |  6.50
          4 |         4 |  7.00
(4 rows)





Stored procedure

create procedure enrollstudent(enroll_id int, stud_id int, cour_id int, grad decimal(3,2))
    language plpgsql
    as $$
    begin
    if not exists (select 1 from enrollments where student_id = stud_id and course_id = cour_id) then
        insert into enrollments(enrollment_id, student_id, course_id, grade)
        values (enroll_id, stud_id, cour_id, grad);
    else
        if grad is not null then
        update enrollments
        set grade = grad
        where student_id = stud_id and course_id = cour_id;
        end if;
    end if;
    end $$;



    CREATE PROCEDURE
    call enrollstudent(209 , 2 , 102 , 3.2);
    CALL
    select * from enrollments;


  | student_id | course_id | grade
    -----------+-----------+---
             1 |       100 |  4.00
             2 |       101 |  3.20
             3 |       102 |  5.10
             2 |       102 |  3.20
    (4 rows)



    select * from students where student_id = ( select student_id from enrollments group by student_id having count(course_id) >= 3);

    student_id | first_name | last_name | enrollment_date |       email
    -----------+-----------+------------+-----------------+-------------------
            1  | akshy      | katoch    | 2023-01-22      | akshay12@gmail.com
    (1 row)




    select * from students where student_id = ( select student_id from enrollments group by student_id having avg(grade)>=8);

    student_id | first_name | last_name | enrollment_date | email
    -----------+------------+-----------+-----------------+-------
    (0 rows)

    --  student_id |        avg
    -- ------------+--------------------
    --       3 | 5.1000000000000000
    --       2 | 3.2000000000000000
    --       1 | 3.5666666666666667
    -- (3 rows)


  -- Indexing :-

    create index index_student_course on enrollments(student_id , course_id);

    CREATE INDEX
