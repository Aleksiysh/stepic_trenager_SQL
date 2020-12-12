DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS payment  (
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    number_plate VARCHAR(6),
    violation VARCHAR(50),
    date_violation DATE,
    date_payment DATE
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

insert into fine( name,number_plate,violation,date_violation,date_payment)
value
("Яковлев Г.Р."	,"М701АА","Превышение скорости(от 20 до 40)", "2020-01-12","2020-01-22"),
("Баранов П.Е.","Р523ВТ","Превышение скорости(от 40 до 60)","2020-02-14","2020-03-15"),
("Яковлев Г.Р.","Т330ТТ","Проезд на запрещающий сигнал","2020-03-03","2020-03-21");