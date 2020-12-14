/*
Посчитать, сколько раз была заказана каждая книга, для книги 
вывести ее автора (нужно посчитать, в каком количестве заказов 
фигурирует каждая книга).  Результат отсортировать сначала  
по фамилиям авторов, а потом по названиям книг. 
Последний столбец назвать Количество.
*/

SELECT 
    name_author, title, COUNT(buy_book.amount) as Количество
FROM
    author
        JOIN
    book USING (author_id)
        LEFT JOIN
    buy_book USING (book_id)
GROUP BY name_author , title
ORDER BY name_author , title;