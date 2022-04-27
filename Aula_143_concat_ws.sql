SELECT * FROM customer;

SELECT first_name,last_name, CONCAT_WS("_",first_name,last_name) AS nome_sobrenome 
FROM customer; 