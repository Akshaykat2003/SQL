-- Ques6 :-> E-commerce Order Fulfillment
-- Scenario: You have tables: orders, order_items, and products.
-- Problem: Determine which products are frequently ordered together.
-- Solution: Use INNER JOIN to connect orders with their items and products. Analyze the frequency of product pairs within the same order.

Query: SELECT 
    p1.product_name AS product_1,
    p2.product_name AS product_2,
    COUNT(*) AS pair_count
FROM
    order_items oi1
INNER JOIN
    order_items oi2
ON
    oi1.order_id = oi2.order_id AND oi1.product_id < oi2.product_id
INNER JOIN
    productss p1
ON 
    oi1.product_id = p1.product_id
INNER JOIN 
    productss p2
ON 
    oi2.product_id = p2.product_id
GROUP BY 
    p1.product_name, p2.product_name
ORDER BY 
    pair_count DESC;

Output:
 product_1  | product_2  | pair_count 
------------+------------+------------
 Laptop     | Tablet     |          1
 Smartphone | Headphones |          1
 Laptop     | Smartphone |          1
 Smartphone | Tablet     |          1
 Laptop     | Charger    |          1
(5 rows)
