/*
Добавить из таблицы supply в таблицу book, все книги, кроме книг, 
написанных Булгаковым и Достоевским.
*/
insert into book( title, author, price, amount)
select title, author, price, amount
from supply
where author not in ("Булгаков М.А.","Достоевский Ф.М.");
select * from book;