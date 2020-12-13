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
("Белая гвардия","1","1","540.50","5"),
("Идиот","2","1","460.00","10"),
("Братья Карамазовы","2","1","799.01","3"),
("Игрок","2","1","480.50","10"),
("Стихотворения и поэмы","3","2","650.00","15"),
("Черный человек","3","2","570.20","6"),
("Лирика","4","2","518.99","10"),
("Герой нашего времени","5","3","570.59","2"),
("Доктор Живаго","4","3","740.50","5");
