SELECT  c.customer_id,
        email,
        COUNT(c.customer_id) AS payments_count,
        SUM(p.amount) AS total_amount
FROM customer c
JOIN
payment p
ON p.customer_id = c.customer_id 
GROUP BY c.customer_id 
ORDER BY payments_count DESC
LIMIT 10;
