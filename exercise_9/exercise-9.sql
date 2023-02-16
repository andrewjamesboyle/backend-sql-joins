-- find the film title of all inventory items that have never been rented
-- LEFT JOIN FROM inventory to film and to rental
-- use WHERE IS NULL

-- SELECT title FROM film 
-- RIGHT JOIN inventory
-- ON film.film_id = inventory.film_id
-- LEFT JOIN rental
-- ON inventory.inventory_id = rental.inventory_id
-- WHERE rental.rental_date IS NULL

with cte as (
 select distinct
  film_id,
  rental_date
  from inventory i
  left join rental r on r.inventory_id = i.inventory_id
 
)
  select distinct 
  	title 
  from cte
  join film f on f.film_id = cte.film_id
  where cte.rental_date is null