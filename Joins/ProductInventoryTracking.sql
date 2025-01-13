 product_id |    name    | price  
------------+------------+--------
          1 | Laptop     | 999.99
          2 | Smartphone | 499.99
          3 | Tablet     | 299.99
          4 | Headphones |  89.99
(4 rows)

 
 inventory_id | product_id | warehouse_id | quantity 
--------------+------------+--------------+----------
            1 |          1 |            1 |       50
            2 |          2 |            2 |      100
            3 |          3 |            1 |       75
            4 |          4 |            3 |      200
(4 rows)



warehouse_id |   warehouse_name    |         location          
--------------+---------------------+---------------------------
            1 | Main Warehouse      | Sector 23, Main st, Delhi
            2 | East Side Warehouse | 456 East St, Mumbai
            3 | West Side Warehouse | 764 west, Kolkata
            4 | North Warehouse     | sector 125 Mohali, Punjab
(4 rows)



-- Q2  Determine which products are not currently stocked in any warehouse.

 product_id |      name      
------------+----------------
          5 | Wireless Mouse
(1 row)


-- SELECT p.product_id, p.name 
-- FROM products p
-- LEFT JOIN inventories i ON p.product_id = i.product_id
-- WHERE i.product_id IS NULL;

