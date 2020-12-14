DROP SCHEMA  IF EXISTS `internet_store`;

CREATE SCHEMA `internet_store` ;
use `internet_store`;

#DROP TABLE IF EXISTS `author`;
CREATE TABLE author (
      author_id INT PRIMARY KEY AUTO_INCREMENT, 
      name_author VARCHAR(50) 
      )ENGINE='InnoDB' AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
insert into author (name_author) value
('Булгаков М.А.'),
('Достоевский Ф.М.'),
('Есенин С.А.'),
('Пастернак Б.Л.'),
('Лермонтов М.Ю.'),
("Стивенсон Р.Л.");

#DROP TABLE IF EXISTS `genre`;
CREATE TABLE genre (
      genre_id INT PRIMARY KEY AUTO_INCREMENT, 
      name_genre VARCHAR(50) 
      )ENGINE='InnoDB' AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
insert into genre (name_genre) value
('Роман'),
('Поэзия'),
('Приключения');

#DROP TABLE IF EXISTS `book`;
CREATE TABLE book (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    author_id INT,
    genre_id INT,
    price DECIMAL(8 , 2 ),
    amount INT,
    FOREIGN KEY (author_id)
        REFERENCES author (author_id)
        ON DELETE CASCADE,
    FOREIGN KEY (genre_id)
        REFERENCES genre (genre_id)
        ON DELETE SET NULL
)  ENGINE='InnoDB' AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8;
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

CREATE TABLE city (
      city_id INT PRIMARY KEY AUTO_INCREMENT,
      name_city VARCHAR(50) ,
      days_delivery int
      )ENGINE='InnoDB' AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
insert into city (name_city,days_delivery) value
('Москва',5),
('Санкт-Петербург',3),
('Владивосток',12);

CREATE TABLE client (
      client_id INT PRIMARY KEY AUTO_INCREMENT,
      name_client VARCHAR(50) ,
      city_id int,
      email varchar(30),
      FOREIGN KEY (city_id)
        REFERENCES city (city_id)
        ON DELETE SET NULL
      )ENGINE='InnoDB' AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
insert into client (name_client,city_id,email) value
("Баранов Павел",	3,	"baranov@test"),
("Абрамова Катя",	1,	"abramova@test"),
("Семенов Иван",	2,	"semenov@test"),
("Яковлева Галина",	1,	"yakovleva@test");