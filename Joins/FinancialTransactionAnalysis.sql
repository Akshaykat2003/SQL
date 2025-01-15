-- Scenario: You have tables: accounts, transactions, and customers.
-- Problem: Find customers with suspicious transaction activity (e.g., large or unusual amounts).
-- Solution: Use INNER JOIN to connect accounts, transactions, and customers. Analyze transaction data to identify patterns or anomalies.


Query: SELECT 
     c.customer_id,
     c.first_name,
     t.transaction_id,
     t.transaction_date,
     t.transaction_type,
     t.amount,
     a.account_type,
     a.balance
 FROM 
     customers c
 INNER JOIN 
     accounts a
 ON 
     c.customer_id = a.customer_id
 INNER JOIN 
     transactions t
 ON 
     a.account_id = t.account_id
 WHERE 
     t.amount > 10000 
     OR 
     t.transaction_date IN (
         SELECT 
             t1.transaction_date
         FROM 
             transactions t1
         INNER JOIN 
             transactions t2
         ON 
             t1.account_id = t2.account_id
         WHERE 
             t1.transaction_id <> t2.transaction_id
             AND ABS(EXTRACT(EPOCH FROM (t1.transaction_date - t2.transaction_date))) < 300 -- Transactions within 5 minutes
     )
     OR 
     c.customer_id IN (
         SELECT 
             c2.customer_id
         FROM 
             customers c2
         INNER JOIN 
             accounts a2
         ON 
             c2.customer_id = a2.customer_id
         INNER JOIN 
             transactions t3
         ON 
             a2.account_id = t3.account_id
         GROUP BY 
             c2.customer_id
         HAVING 
             COUNT(t3.transaction_id) > 10 
     )
 ORDER BY 
     t.transaction_date DESC, t.amount DESC;

Output:
 customer_id | first_name | transaction_id |  transaction_date   | transaction_type |  amount  | account_type | balance 
-------------+------------+----------------+---------------------+------------------+----------+--------------+---------
           1 | Akshay     |              4 | 2025-01-12 12:00:00 | debit            | 19500.00 | Checking     | 3000.00
(1 row)

