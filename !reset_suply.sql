DROP TABLE IF EXISTS `supply`;
CREATE TABLE IF NOT EXISTS `supply` (
  `supply_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50),
  `author` varchar(30),
  `price` decimal(8,2),
  `amount` int(11) ,
  PRIMARY KEY (`supply_id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `supply` (`title`, `author`, `price`, `amount`) VALUES
    ("Доктор Живаго","Пастернак Б.Л.","380.80","4"),    
    ('Черный человек', 'Есенин С.А.', 570.20, 6),
    ('Белая гвардия', 'Булгаков М.А.', 540.50, 7),
    ('Идиот', 'Достоевский Ф.М.', 360.80, 3),
    ("Стихотворения и поэмы","Лермонтов М.Ю.",255.90,4),
    ("Остров сокровищ","Стивенсон Р.Л.",599.99,	5);   


