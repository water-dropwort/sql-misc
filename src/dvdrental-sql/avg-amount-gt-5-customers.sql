WITH avg_amount AS (
     SELECT
        customer_id,
        AVG(amount) AS avg_amount
     FROM
        payment
     GROUP BY
        customer_id
)
SELECT
    customer_id,
    avg_amount
FROM
    avg_amount
WHERE
    avg_amount > 5
ORDER BY
    avg_amount DESC;
