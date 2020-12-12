/*
Задание
 Вывести информацию о книгах (жанр, книга, автор), 
 относящихся к жанру, включающему слово «роман» 
 в отсортированном по названиям книг виде.
 */
 
 SELECT 
    name_genre, title, name_author
FROM
    genre
        JOIN
    book USING (genre_id)
        JOIN
    author USING (author_id)
WHERE
    name_genre LIKE ('роман')
ORDER BY title;