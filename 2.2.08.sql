/*
Задание
Вывести информацию о книгах, написанных в самых популярных 
жанрах, в отсортированном в алфавитном порядке по названию 
книг виде.
*/

-- SELECT genre_id, SUM(amount) AS sum_amount
-- FROM book
-- GROUP BY genre_id
-- ORDER BY sum_amount DESC
-- LIMIT 1

select query_in_1.genre_id from(
	select genre_id, sum(amount) as sum_amount
    from book
    group by genre_id
    ) as query_in_1
    join (SELECT genre_id, SUM(amount) AS sum_amount
FROM book
GROUP BY genre_id
ORDER BY sum_amount DESC
LIMIT 1) query_in_2
on query_in_1.genre_id = query_in_2.genre_id;