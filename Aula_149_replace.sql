SELECT city_id, LEFT(last_update,10) AS "data" 
FROM address
WHERE city_id>= 150
ORDER BY city_id;