-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts

SELECT SUM(amount), city
    FROM payment p
  	JOIN customer c
  	ON p.customer_id = c.customer_id
    JOIN address a
    ON c.address_id = a.address_id
    JOIN city ct
    ON a.city_id = ct.city_id
    GROUP BY ct.city
  	ORDER BY SUM(amount) desc
  	LIMIT 10