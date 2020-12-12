DROP TABLE IF EXISTS `fine`;
CREATE TABLE IF NOT EXISTS fine (
    fine_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    number_plate VARCHAR(6),
    violation VARCHAR(50),
    sum_fine DECIMAL(8 , 2 ),
    date_violation DATE,
    date_payment DATE
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

insert into fine( name,number_plate,violation,sum_fine,date_violation,date_payment)
value
("Баранов П.Е.","Р523ВТ","Превышение скорости(от 40 до 60)","500.00","2020-01-12","2020-01-17"),
("Абрамова К.А.","О111АВ","Проезд на запрещающий сигнал","1000.00","2020-01-14","2020-02-27"),
("Яковлев Г.Р.","Т330ТТ","Превышение скорости(от 20 до 40)","500.00","2020-01-23","2020-02-23"),
("Яковлев Г.Р.","М701АА","Превышение скорости(от 20 до 40)",Null,"2020-01-12",Null),
("Колесов С.П.","К892АХ","Превышение скорости(от 20 до 40)",Null,"2020-02-01",Null),
("Баранов П.Е.","Р523ВТ","Превышение скорости(от 40 до 60)",Null,"2020-02-14",Null),
("Абрамова К.А.","О111АВ","Проезд на запрещающий сигнал",Null,"2020-02-23",Null),
("Яковлев Г.Р.","Т330ТТ","Проезд на запрещающий сигнал",Null,"2020-03-03",Null);

