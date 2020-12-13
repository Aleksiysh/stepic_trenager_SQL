DROP TABLE IF EXISTS `book`;
CREATE TABLE book (
      book_id INT PRIMARY KEY AUTO_INCREMENT, 
      title VARCHAR(50), 
      author_id INT, 
      genre_id INT,
      price DECIMAL(8,2), 
      amount INT, 
      FOREIGN KEY (author_id)  REFERENCES author (author_id),
      FOREIGN KEY (genre_id)  REFERENCES genre (genre_id)
)ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
insert into book (title,author_id,genre_id,price,amount) value
("Мастер и Маргарита","1","1","670.99","3"),
("Белая гвардия","1","1","540.50","12"),
("Идиот","2","1","460.00","13"),
("Братья Карамазовы","2","1","799.01","3"),
("Игрок","2","1","480.50","10"),
("Стихотворения и поэмы","3","2","650.00","15"),
("Черный человек","3","2","570.20","12"),
("Лирика","4","2","518.99","2"),
("Доктор Живаго",4,1,380.80,4),
("Стихотворения и поэмы",5,2,255.90 ,4),
("Остров сокровищ",6,3,599.99,5)  ;

