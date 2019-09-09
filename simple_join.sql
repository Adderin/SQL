  SELECT p.id, p.name, isbn, company_id, price, companies.name AS company_name
  FROM products p
  LEFT OUTER JOIN companies
  WHERE p.company_id = companies.id;
