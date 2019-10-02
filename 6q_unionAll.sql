SELECT  location,
        id, 
        name,
        price,
        card_name,
        card_number,
        transaction_date
FROM (SELECT *, 'US' as location FROM ussales
UNION ALL
SELECT *, 'EU' as location FROM eusales)
AS location
WHERE price > 50
ORDER BY location DESC, id;
