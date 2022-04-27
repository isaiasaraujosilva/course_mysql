SELECT * FROM payment;

SELECT payment_date,amount,FORMAT(amount,1) AS "format"
FROM payment;