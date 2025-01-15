-- Scenario: You have tables: users, posts, and likes.
-- Problem: Find the most popular post (the one with the most likes).
-- Solution: Use INNER JOIN to connect posts with their likes. Group the results by post and count the number of likes for each post.


Query: SELECT 
     p.post_id,
     p.post_content,
     COUNT(l.like_id) AS like_count
 FROM 
     posts p
 LEFT JOIN 
     likes l
 ON 
     p.post_id = l.post_id
 GROUP BY 
     p.post_id, p.post_content
 ORDER BY 
     like_count DESC;
     
Output:
 post_id |  post_content   | like_count 
---------+-----------------+------------
       2 | Post by Bob     |          3
       1 | Post by Alice   |          2
       3 | Post by Charlie |          0
(3 rows)
