DELETE FROM author 
WHERE
    author_id IN (SELECT 
        author_id
    FROM
        book
            JOIN
        genre USING (genre_id)
    
    WHERE
        name_genre = 'Поэзия')