SELECT
    customer_id,
    COUNT(*) AS unreturned
FROM
    rental
WHERE
    return_date IS NULL
GROUP BY
    customer_id
ORDER BY
    unreturned DESC,
    customer_id ASC;
