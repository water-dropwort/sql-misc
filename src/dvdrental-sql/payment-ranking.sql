SELECT
    *,
    RANK() OVER (ORDER BY amount DESC) as ranking
FROM payment
LIMIT 10;
