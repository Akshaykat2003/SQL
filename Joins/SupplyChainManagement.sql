-- Ques10 :-> Supply Chain Management
-- Scenario: You have tables: suppliers, products, and orders.
-- Problem: Determine which suppliers have not shipped any orders in the last quarter.
-- Solution: Use LEFT JOIN to identify suppliers with no corresponding orders within the specified time period.


Query: SELECT 
     s.supplier_id,
     s.supplier_name,
     s.contact_name
 FROM suppliersss s
 LEFT JOIN productsss p ON s.supplier_id = p.supplier_id
 LEFT JOIN ordersss o ON p.product_id = o.product_id
 WHERE o.order_date IS NULL 
    OR o.order_date < '2024-10-01'  
    OR o.order_date > '2024-12-31';
    
Output:
 supplier_id | supplier_name | contact_name 
-------------+---------------+--------------
           4 | Supplier D    | rahul
           3 | Supplier C    | vicky
(2 rows)
