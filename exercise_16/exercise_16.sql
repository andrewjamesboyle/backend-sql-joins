-- return the title, description, release year and list of actors returned as a JSON blob
-- for the movie Airplane Sierra
    
  SELECT title, description, release_year, 
  COALESCE(JSON_AGG(to_jsonb(a.*))) as actors
  FROM film f
  LEFT JOIN film_actor fa
  ON f.film_id = fa.film_id
  LEFT JOIN actor a
  ON fa.actor_id = a.actor_id
  WHERE title = 'Airplane Sierra'
  GROUP BY f.film_id

