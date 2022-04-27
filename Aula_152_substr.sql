SELECT * FROM category;
SELECT name,LEFT(last_update,10) AS data,
RIGHT(last_update,8) AS horario,
SUBSTR(last_update,9,3) AS dia,
SUBSTR(last_update,6,2)AS mes,
SUBSTR(last_update,1,4)AS ano 
FROM category;
