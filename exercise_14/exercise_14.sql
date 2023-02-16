-- the average film length by category
-- include the category name and avg length

SELECT AVG(length), name
FROM film f
JOIN film_category fc
ON f.film_id = fc.film_id
JOIN category c
ON fc.category_id = c.category_id
GROUP BY name