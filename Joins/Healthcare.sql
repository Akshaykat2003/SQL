-- Ques8 :-> Healthcare Patient Monitoring
-- Scenario: You have tables: patients, appointments, and diagnoses.
-- Problem: Identify patients who have not been seen by a doctor in the past year.
-- Solution: Use a LEFT JOIN to connect patients with their appointments. Filter for patients with no appointments within the specified time frame.

Query: SELECT 
     p.patient_id,
     p.patient_name
 FROM 
     patients p
 LEFT JOIN 
     appointments a
 ON 
     p.patient_id = a.patient_id
 WHERE 
     a.appointment_date IS NULL
     OR a.appointment_date < CURRENT_DATE - INTERVAL '1 year';

Output:
 patient_id | patient_name 
------------+--------------
          1 | akshay
          1 | akshay
          2 | ajay
          3 | agrim
          4 | rahul
(5 rows)
