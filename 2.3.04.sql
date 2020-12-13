/*
Добавить новые книги из таблицы supply в таблицу book на основе 
сформированного выше запроса. Затем вывести для просмотра таблицу book.
*/
insert into book(title,author_id, price, amount)
select title,author_id, price, amount
from author join supply
on author.name_author = supply.author
where amount<>0;

select * from book;
