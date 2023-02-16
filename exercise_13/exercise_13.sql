-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount

SELECT country, AVG(amount)
FROM payment p
JOIN customer c
ON p.customer_id = c.customer_id
JOIN address a
ON c.address_id = a.address_id
JOIN city ct
ON a.city_id = ct.city_id
JOIN country cy
ON cy.country_id = ct.country_id
GROUP BY country
ORDER BY AVG DESC
LIMIT 10