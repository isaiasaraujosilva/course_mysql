USE sakila;

SELECT staff_id,SUM(amount) AS soma_pagamento 
FROM payment
group by staff_id
;