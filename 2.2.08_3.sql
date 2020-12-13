SELECT 
    title, name_author, name_genre, price, amount
FROM
    book
        JOIN
    author USING (author_id)
        JOIN
    genre USING (genre_id)
WHERE
    genre_id IN (SELECT 
            query_in_1.genre_id
        FROM
            (SELECT 
                genre_id, SUM(amount) AS sum_amount
            FROM
                book
            GROUP BY genre_id) AS query_in_1
                JOIN
            (SELECT 
                genre_id, SUM(amount) AS sum_amount
            FROM
                book
            GROUP BY genre_id
            ORDER BY sum_amount DESC
            LIMIT 1) query_in_2 USING (sum_amount))
order by title;
