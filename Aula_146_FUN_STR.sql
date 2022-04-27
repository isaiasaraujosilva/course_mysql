USE sakila;
SELECT CONCAT_WS("_",staff.first_name,last_name) AS nome_sobrenome,staff.email,INSTR(staff.email,"@")AS posicao_arroba, FORMAT(payment.amount,1) AS abreviado
FROM staff
INNER JOIN payment
ON staff.staff_id=payment.staff_id;

SELECT * FROM sakila.staff;

SELECT CONCAT_WS("_",staff.first_name,staff.last_name) as "Name", INSTR(staff.first_name,"a"), (
	SELECT FORMAT(SUM(payment.amount),2)
    FROM payment
	WHERE staff.staff_id=payment.staff_id
    ) as sum_amount
FROM staff;
