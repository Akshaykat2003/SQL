
order_id | customer_id | order_date | order_total 
----------+-------------+------------+-------------
        1 |           1 | 2025-01-01 |      250.00
        2 |           2 | 2025-01-02 |      150.00
        3 |           3 | 2025-01-03 |      300.00
        4 |           1 | 2025-01-04 |      100.00
        5 |           2 | 2025-01-05 |      200.00
(5 rows)

CREATE TABLE
CREATE FUNCTION
--  Create the Trigger Function
 This function will check if there are any associated shipments for the order being deleted. If shipments exist, it raises an error.
-- CREATE OR REPLACE FUNCTION prevent_order_deletion_if_shipments_exist()
-- RETURNS TRIGGER AS $$
-- BEGIN
--     -- Check if there are any shipments for the order
--     IF EXISTS (SELECT 1 FROM shipments WHERE order_id = OLD.order_id) THEN
--         RAISE EXCEPTION 'Cannot delete order %: associated shipments exist.', OLD.order_id;
--     END IF;
--     RETURN OLD; -- Allow the delete if no shipments exist
-- END;
-- $$ LANGUAGE plpgsql;



CREATE TRIGGER
-- =>CREATE OR REPLACE FUNCTION prevent_order_deletion_if_shipments_exist()
-- RETURNS TRIGGER AS $$
-- BEGIN
--     -- Check if there are any shipments for the order
--     IF EXISTS (SELECT 1 FROM shipments WHERE order_id = OLD.order_id) THEN
--         RAISE EXCEPTION 'Cannot delete order %: associated shipments exist.', OLD.order_id;
--     END IF;
--     RETURN OLD; -- Allow the delete if no shipments exist
-- END;
-- $$ LANGUAGE plpgsql;



INSERT 0 1
INSERT 0 1


-- INSERT INTO orders (customer_name, order_total) VALUES ('John Doe', 200.00);


-- INSERT INTO shipments (order_id) VALUES (1);

 order_id | customer_id | order_date | order_total 
----------+-------------+------------+-------------
        1 |           1 | 2025-01-01 |      250.00
        3 |           3 | 2025-01-03 |      300.00
        4 |           1 | 2025-01-04 |      100.00
        5 |           2 | 2025-01-05 |      200.00
        6 |           1 | 2025-01-15 |      200.00
(5 rows)



CREATE OR REPLACE FUNCTION prevent_order_deletion_if_shipments_exist()
RETURNS TRIGGER AS $$
BEGIN
    IF EXISTS (SELECT 1 FROM shipments WHERE order_id = OLD.order_id) THEN
        RAISE EXCEPTION 'Cannot delete order %: associated shipments exist.', OLD.order_id;
    END IF;
    RETURN OLD;
END;
$$ LANGUAGE plpgsql;

-- Create the trigger
CREATE TRIGGER trg_prevent_order_deletion
BEFORE DELETE ON orders
FOR EACH ROW
EXECUTE FUNCTION prevent_order_deletion_if_shipments_exist();

-- Test Data
-- Insert orders
INSERT INTO orders (customer_name, order_total) VALUES ('John Doe', 200.00);
INSERT INTO orders (customer_name, order_total) VALUES ('Jane Smith', 150.00);

-- Insert shipment for order 1
INSERT INTO shipments (order_id) VALUES (1);

DELETE FROM orders WHERE order_id = 1;
ERROR:  Cannot delete an order with associated shipments
CONTEXT:  PL/pgSQL function prevent_order_deletion() line 4 at RAISE

DELETE FROM orders WHERE order_id = 2;
DELETE 1

select * from orders;
 order_id | customer_id | order_date
----------+-------------+------------
        1 |           1 | 2024-01-01
(1 row)