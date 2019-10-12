SELECT c.customer_id, c.email,
       COUNT(p.amount) AS payments_count,
       SUM(p.amount) AS total_amount
       FROM customer c, payment p
GROUP BY c.customer_id
LIMIT 10;
