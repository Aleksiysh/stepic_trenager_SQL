SELECT 
        SUM(buy_book.amount) AS Количество
    FROM        
        book 
            JOIN
        buy_book USING (book_id)
    GROUP BY genre_id
    ORDER BY Количество DESC
    LIMIT 1