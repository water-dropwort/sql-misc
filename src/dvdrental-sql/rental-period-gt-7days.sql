SELECT count(*)
FROM rental
WHERE date_part('day', return_date - rental_date) > 7;
