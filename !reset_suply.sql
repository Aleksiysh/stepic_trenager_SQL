DROP TABLE IF EXISTS `supply`;
CREATE TABLE IF NOT EXISTS `supply` (
  `supply_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50),
  `author` varchar(30),
  `price` decimal(8,2),
  `amount` int(11) ,
  PRIMARY KEY (`supply_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*DELETE FROM `book`;*/
/*!40000 ALTER TABLE `supply` DISABLE KEYS */;
INSERT INTO `supply` (`supply_id`, `title`, `author`, `price`, `amount`) VALUES
    (1, 'Лирика', 'Пастернак Б.Л.', 518.99, 2),
    (2, 'Черный человек', 'Есенин С.А.', 570.20, 6),
    (3, 'Белая гвардия', 'Булгаков М.А.', 540.50, 7),
    (4, 'Идиот', 'Достоевский Ф.М.', 360.80, 3);   
/*!40000 ALTER TABLE `supply` ENABLE KEYS */;

