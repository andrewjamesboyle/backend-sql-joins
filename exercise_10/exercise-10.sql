-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join

-- SELECT name FROM category
-- LEFT JOIN film_category
-- ON category.category_id = film_category.category_id
-- LEFT JOIN film
-- ON film_category.film_id = film.film_id
-- RIGHT JOIN inventory
-- ON film.film_id = inventory.film_id
-- LEFT JOIN rental
-- ON inventory.inventory_id = rental.inventory_id
-- WHERE rental_date IS NULL

WITH cte as (
    SELECT distinct
    i.film_id,
  	title,
    rental_date,
  	name
    FROM inventory i 
    LEFT JOIN rental r 
    ON i.inventory_id = r.inventory_id
  	LEFT JOIN film f
  	ON i.film_id = f.film_id
  	LEFT JOIN film_category fc
	ON f.film_id = fc.film_id
  	LEFT JOIN category c
  	ON fc.category_id = c.category_id
)
SELECT name from cte WHERE rental_date is NULL