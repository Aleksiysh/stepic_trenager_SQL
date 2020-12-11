DELETE FROM supply 
WHERE author IN (
    SELECT 
    author
FROM
    book
GROUP BY book.author
HAVING SUM(amount) > 10
) and supply_id>0;
select * from supply;