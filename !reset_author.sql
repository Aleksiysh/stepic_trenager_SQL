DROP TABLE IF EXISTS `author`;
CREATE TABLE author (
      author_id INT PRIMARY KEY AUTO_INCREMENT, 
      name_author VARCHAR(50) 
      )ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;
insert into author (name_author) value
('Булгаков М.А.'),
('Достоевский Ф.М.'),
('Есенин С.А.'),
('Пастернак Б.Л.'),
('Лермонтов М.Ю.'),
("Стивенсон Р.Л.");
