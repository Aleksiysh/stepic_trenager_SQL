DELETE FROM genre 
WHERE
    genre_id IN (SELECT 
        genre_id
    FROM
        book
    GROUP BY genre_id
    HAVING COUNT(1) < 3)