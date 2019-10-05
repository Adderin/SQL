SELECT 
CASE
WHEN (array_length(string_to_array(name,' '), 1)) = 3	THEN
  SPLIT_PART(name, ' ', 1)
  ELSE SPLIT_PART(name, ' ', 1)||' '||SPLIT_PART(name, ' ', 2)
  END
  AS name,
  SPLIT_PART(name,' ',array_length(string_to_array(name,' '), 1) - 1) AS first_lastname,
  SPLIT_PART(name,' ',array_length(string_to_array(name,' '), 1)) AS second_lastname
    FROM people;
