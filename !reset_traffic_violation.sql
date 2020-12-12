DROP TABLE IF EXISTS `traffic_violation`;
CREATE TABLE IF NOT EXISTS traffic_violation (
    violation_id INT PRIMARY KEY AUTO_INCREMENT,
    violation VARCHAR(50),
    sum_fine DECIMAL(8 , 2 )
);# ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

insert into traffic_violation (violation, sum_fine) value
("Превышение скорости(от 20 до 40)","500.00"),
("Превышение скорости(от 40 до 60)","1000.00"),
("Проезд на запрещающий сигнал","1000.00");

