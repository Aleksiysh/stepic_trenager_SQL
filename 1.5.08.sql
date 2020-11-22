/*
Для одинаковых книг в таблицах book и supply не только увеличить их 
количество в таблице book( увеличить их количество на значение столбца 
amountтаблицы supply), но и пересчитать их цену (для каждой книги найти 
сумму цен из таблиц book и supply и разделить на 2).
Пояснение. Пересчет для книг с одинаковым названием и ценой не повлияет
 на результат, поэтому в запросе не обязательно рассматривать два случая:
 когда цена у одинаковых книг равна и когда нет.
*/
UPDATE book,
    supply 
SET 
    book.amount = book.amount + supply.amount,
    book.price = (book.price + supply.price) / 2
WHERE
    book.title = supply.title
        AND book.author = supply.author;

SELECT 
    *
FROM
    book;