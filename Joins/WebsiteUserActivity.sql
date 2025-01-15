-- Scenario: You have tables: users, sessions, and page_views.
-- Problem: Identify users who have never logged in to the website.
-- Solution: Use a LEFT JOIN to connect users with their sessions. Filter for users with no corresponding sessions.

Query:SELECT 
     u.user_id,
     u.username,
     u.email
 FROM 
     users u
 LEFT JOIN 
     sessions s
 ON 
     u.user_id = s.user_id
 WHERE 
     s.session_id IS NULL;

Output:

 user_id | username |       email       
---------+----------+-------------------
       4 | john     | john@email.com
       3 | jolly    | jolly@email.com
(2 rows)

