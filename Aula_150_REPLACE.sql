USE sakila;
SELECT * FROM customer;
SELECT REPLACE(first_name,"MARY","Mary") AS nome ,REPLACE(last_name,"SMITH","Smith") AS sobrenome 
FROM customer
WHERE customer_id = 1
;