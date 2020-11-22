DROP TABLE IF EXISTS `book`;
CREATE TABLE IF NOT EXISTS `book` (
  `book_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `author` varchar(30) DEFAULT NULL,
  `price` decimal(8,2) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*DELETE FROM `book`;*/
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` (`book_id`, `title`, `author`, `price`, `amount`) VALUES
    (1, 'Мастер и Маргарита', 'Булгаков М.А.', 670.99, 3),
    (2, 'Белая гвардия', 'Булгаков М.А.', 540.50, 5),
    (3, 'Идиот', 'Достоевский Ф.М.', 460.00, 10),
    (4, 'Братья Карамазовы', 'Достоевский Ф.М.', 799.01, 2),
    (5, 'Игрок', 'Достоевский Ф.М.', 480.50, 10),
    (6, 'Стихотворения и поэмы', 'Есенин С.А.', 650.00, 15);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;

