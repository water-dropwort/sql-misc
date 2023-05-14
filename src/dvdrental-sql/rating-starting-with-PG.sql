SELECT title,rating
FROM film
WHERE CAST(rating as text) LIKE 'PG%';
