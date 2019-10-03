CREATE FUNCTION agecalculator(age DATE) RETURNS INTEGER AS $$
BEGIN
    return date_part('year', AGE(age));
END 
$$ LANGUAGE plpgsql;
