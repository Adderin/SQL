SELECT  c.customer_id,
        email,
        COUNT(c.customer_id) AS payments_count,
        CAST(SUM(p.amount) AS FLOAT) AS total_amount
FROM customer c
JOIN
payment p
ON p.customer_id = c.customer_id 
GROUP BY c.customer_id 
ORDER BY total_amount DESC
LIMIT 10;
