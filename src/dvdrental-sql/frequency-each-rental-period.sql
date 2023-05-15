With rental_period AS (
     SELECT
        rental_id,
        date_part('day', return_date - rental_date) AS rental_period
     FROM rental
)
SELECT
    rental_period,
    count(*) AS freq
FROM rental_period
GROUP BY rental_period
ORDER BY freq DESC;
