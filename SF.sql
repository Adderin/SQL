SELECT f.name, sum(f.won) AS won, sum(f.lost) AS lost
    FROM fighters f
    JOIN winning_moves wm 
    ON wm.id = f.move_id 
    AND wm.move not in ('Hadoken', 'Shouoken','Kikoken')
    GROUP BY f.name
    ORDER BY 2 desc
    LIMIT 6
