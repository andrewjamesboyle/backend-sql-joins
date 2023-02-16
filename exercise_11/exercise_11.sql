-- find the title and count of the top 10 most rented films
-- use COUNT to count each row
-- GROUP BY the film_id
-- ORDER in descending order
-- LIMIT 10

-- SELECT title, COUNT(title) FROM film
-- LEFT JOIN inventory
-- ON film.film_id = inventory.film_id
-- LEFT JOIN rental
-- ON inventory.inventory_id = rental.inventory_id
-- GROUP BY film.film_id
-- ORDER BY COUNT DESC
-- LIMIT 10

WITH cte AS (
  SELECT title, COUNT(title) FROM rental r
  LEFT JOIN inventory i
  ON r.inventory_id = i.inventory_id
  LEFT JOIN film f
  ON i.film_id = f.film_id
  GROUP BY f.film_id
  ORDER BY COUNT desc
  LIMIT 10
)
 SELECT * from cte