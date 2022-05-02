USE sakila;
SELECT last_update, DAYOFWEEK(last_update)
FROM actor;