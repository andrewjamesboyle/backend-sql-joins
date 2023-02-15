-- find the category name of all inventory items that have never been rented
-- Similar to exercise 9 with an additonal join
-- SELECT name FROM category
-- LEFT JOIN film_category ON category.category_id = film_category.category_id
-- LEFT JOIN inventory ON film_category.film_id = inventory.inventory_id
-- LEFT JOIN rental ON inventory.inventory_id = rental.inventory_id
-- WHERE rental_date is NULL

SELECT name FROM inventory
LEFT JOIN film on inventory.film_id = film.film_id
LEFT JOIN rental on inventory.inventory_id = rental.inventory_id
LEFT JOIN film_category on film_category.film_id = film.film_id
LEFT JOIN category on film_category.category_id = category.category_id
WHERE rental_date is NULL