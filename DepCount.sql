SELECT
  DATE(s.transaction_date) AS day,
  d.name AS department,
  COUNT(s.*) AS sale_count
FROM sale s
  JOIN department d
  ON s.department_id = d.id
GROUP BY day, department
ORDER BY day ASC
