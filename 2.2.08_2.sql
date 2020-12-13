SELECT 
    query_in_1.genre_id
FROM
    (SELECT genre_id, SUM(amount) as sum_amount
    FROM book
    GROUP BY genre_id) 
    query_in_1
        INNER JOIN (
        SELECT genre_id, SUM(amount) AS sum_amount
    FROM book
    GROUP BY genre_id
    ORDER BY sum_amount DESC
    LIMIT 1
    ) query_in_2 
    using(sum_amount);