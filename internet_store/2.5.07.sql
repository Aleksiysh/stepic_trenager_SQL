CREATE TABLE buy_pay AS SELECT buy_id,
    SUM(buy_book.amount) AS Количество,
    SUM(buy_book.amount * price) AS Итого FROM
    book
        JOIN
    buy_book USING (book_id)
WHERE
    buy_id = 5
GROUP BY buy_id;
