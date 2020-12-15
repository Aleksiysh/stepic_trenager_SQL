insert into buy_book(buy_id,book_id,amount) values
(5,  
(select book_id from book
join author
using(author_id)
where title = 'Лирика' and name_author = 'Пастернак Б.Л.'),
2),
(5,  
(select book_id from book
join author
using(author_id)
where title = 'Белая гвардия' and name_author = 'Булгаков М.А.'),
1);
