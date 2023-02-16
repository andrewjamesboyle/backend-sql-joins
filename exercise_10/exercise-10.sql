-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join

SELECT name FROM category
LEFT JOIN film_category
ON category.category_id = film_category.category_id
LEFT JOIN film
ON film_category.film_id = film.film_id
RIGHT JOIN inventory
ON film.film_id = inventory.film_id
LEFT JOIN rental
ON inventory.inventory_id = rental.inventory_id
WHERE rental_date IS NULL