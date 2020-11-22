/*
Вывести информацию (автора, книгу и количество) о тех книгах, 
количество которых в таблице book не повторяется.

Пояснение. Во вложенном запросе отберите те значения столбца amount, 
количество которых, вычисленное с помощью функции count(), равно 1. 
*/
SELECT 
    author, title, amount
FROM
    book
WHERE
    amount IN (SELECT 
            amount
        FROM
            book
        GROUP BY amount
        HAVING COUNT(amount) = 1)
;