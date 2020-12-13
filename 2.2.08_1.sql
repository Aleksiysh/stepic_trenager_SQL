SELECT /*самый популярный жанр, количество книг в этом жанре*/
    genre_id, SUM(amount) AS sum_amount
FROM
    book
GROUP BY genre_id
ORDER BY sum_amount DESC
LIMIT 1