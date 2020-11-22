/*
Занести из таблицы supply в таблицу book только те книги, авторов которых нет в  book
*/

insert into book( title, author, price, amount)
select title, author, price, amount
from supply
where author not in (select author from book);
select * from book;
