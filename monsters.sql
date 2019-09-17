SELECT t.id, heads, legs, arms, tails,
CASE 
    WHEN heads > arms OR tails > legs THEN 'BEAST'
    ELSE 'WEIRDO'
END AS species
FROM top_half t JOIN bottom_half b ON t.id = b.id
ORDER BY species;
