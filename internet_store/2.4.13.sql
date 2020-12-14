/*
Вывести жанр (или жанры), в котором было заказано 
больше всего экземпляров книг, указать это количество .
*/

SELECT 
    name_genre, SUM(buy_book.amount) AS Количество
FROM
    genre
        JOIN
    book USING (genre_id)
        JOIN
    buy_book USING (book_id)
GROUP BY name_genre
HAVING SUM(buy_book.amount) = (SELECT 
        SUM(buy_book.amount) AS Количество
    FROM
        book
            JOIN
        buy_book USING (book_id)
    GROUP BY genre_id
    ORDER BY Количество DESC
    LIMIT 1)