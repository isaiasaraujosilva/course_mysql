SELECT last_update, ADDDATE(last_update,"5 DAYS"), ADDDATE(last_update,INTERVAL -5 MONTH), ADDDATE(last_update, INTERVAL 5 YEAR) 
FROM actor;