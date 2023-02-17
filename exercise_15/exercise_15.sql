-- the total run time of all inventory items if they were all played back to back

SELECT SUM(length)
FROM film f
JOIN inventory i ON f.film_id = i.film_id
