SELECT 
  Date(s.transaction_date) AS day,
  d.name AS department,
  COUNT(s.transaction_date) AS sale_count
  FROM department d
  JOIN sale s ON d.id = s.department_id
  GROUP BY day, department 
  ORDER BY day, department ASC;
