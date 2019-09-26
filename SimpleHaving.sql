SELECT COUNT(1) AS total_people,age 
    FROM people 
    GROUP BY age
    HAVING count(1) > 9;
