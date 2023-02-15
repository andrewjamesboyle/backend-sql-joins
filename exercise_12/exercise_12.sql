-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
SELECT city.city, SUM(payment.amount)
FROM payment
LEFT JOIN rental ON payment.rental_id = rental.rental_id
LEFT JOIN customer ON rental.customer_id = customer.customer_id
LEFT JOIN address ON address.address_id = customer.address_id
LEFT JOIN city ON address.city_id = city.city_id
GROUP BY city.city
ORDER BY SUM DESC
LIMIT 10
