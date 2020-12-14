DROP TABLE IF EXISTS `genre`;
CREATE TABLE genre (
      genre_id INT PRIMARY KEY AUTO_INCREMENT, 
      name_genre VARCHAR(50) 
      )ENGINE='InnoDB' AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
insert into genre (name_genre) value
('Роман'),
('Поэзия'),
('Приключения');
