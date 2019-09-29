SELECT *
  FROM product
    WHERE to_tsvector(product.name) @@ to_tsquery('Awesome');
