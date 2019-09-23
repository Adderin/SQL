SELECT d.id, d.name 
  FROM departments d
    WHERE EXISTS 
      (SELECT s.name FROM sales s WHERE d.id = s.department_id AND price > 98.00);
