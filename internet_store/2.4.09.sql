/*
Вывести информацию о каждом заказе: его номер, кто его 
сформировал (фамилия пользователя) и его стоимость 
(сумма произведений количества заказанных книг и их цены), 
в отсортированном по номеру заказа виде.
*/

SELECT 
    buy_id,
    name_client,
    SUM(book.price * buy_book.amount) AS Стоимость
FROM
    book
        JOIN
    buy_book USING (book_id)
        JOIN
    buy USING (buy_id)
        JOIN
    client USING (client_id)
GROUP BY buy_id
ORDER BY buy_id;