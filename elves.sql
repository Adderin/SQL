SELECT CONCAT(UPPER(LEFT(firstname,1)), LOWER(SUBSTRING(firstname,2,LENGTH(firstname))),
' ', UPPER(LEFT(lastname,1)), LOWER(SUBSTRING(lastname,2,LENGTH(lastname))))
AS shortlist FROM elves
WHERE firstname LIKE '%tegil%'
   OR lastname LIKE '%astar%';
