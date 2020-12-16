DROP SCHEMA  IF EXISTS `abiturient`;

CREATE SCHEMA `abiturient` ;
use `abiturient`;

CREATE TABLE department (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    name_department VARCHAR(30)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8;
insert into department(name_department) value
('Инженерная школа'),
('Школа естественных наук');


CREATE TABLE subject (
    subject_id INT PRIMARY KEY AUTO_INCREMENT,
    name_subject VARCHAR(30)
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8;
insert into subject(name_subject) value
('Русский язык'),
('Математика'),
('Физика'),
('Информатика');

CREATE TABLE program  (
    program_id INT PRIMARY KEY AUTO_INCREMENT,
    name_program  VARCHAR(50),
    department_id INT,
    plan INT,
    FOREIGN KEY (department_id)
        REFERENCES department (department_id)
        ON DELETE SET NULL
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8;
insert into program (name_program,	department_id,	plan) value
('Прикладная математика и информатика',2,2),
('Математика и компьютерные науки',2,1),
('Прикладная механика',1,2),
('Мехатроника и робототехника',1,3);


CREATE TABLE enrollee  (
    enrollee_id INT PRIMARY KEY AUTO_INCREMENT,
    name_enrollee  VARCHAR(50)    
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8;
insert into enrollee (name_enrollee) value
('Баранов Павел'),
('Абрамова Катя'),
('Семенов Иван'),
('Яковлева Галина'),
('Попов Илья'),
('Степанова Дарья');


CREATE TABLE achievement  (
    achievement_id INT PRIMARY KEY AUTO_INCREMENT,
    name_achievement  VARCHAR(30),
    bonus INT    
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8;
insert into achievement (name_achievement,	bonus) value
('Золотая медаль',5),
('Серебряная медаль',3),
('Золотой значок ГТО',3),
('Серебряный значок ГТО',1);

CREATE TABLE enrollee_achievement  (
    enrollee_achievement_id INT PRIMARY KEY AUTO_INCREMENT,
    enrollee_id  INT,
    achievement_id INT,
    FOREIGN KEY (enrollee_id)
        REFERENCES enrollee (enrollee_id)
        ON DELETE SET NULL,
    FOREIGN KEY (achievement_id)
        REFERENCES achievement (achievement_id)
        ON DELETE SET NULL  
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8;
insert into enrollee_achievement (enrollee_id,	achievement_id) value
(1,2),
(1,3),
(3,1),
(4,4),
(5,1),
(5,3);


CREATE TABLE program_subject  (
    program_subject_id INT PRIMARY KEY AUTO_INCREMENT,
    program_id  INT,
    subject_id INT,
    min_result INT,
    FOREIGN KEY (program_id)
        REFERENCES program (program_id)
        ON DELETE SET NULL,
    FOREIGN KEY (subject_id)
        REFERENCES subject (subject_id)
        ON DELETE SET NULL  
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8;
insert into program_subject (program_id,subject_id,min_result ) value
(1,1,40),
(1,2,50),
(1,4,60),
(2,1,30),
(2,2,50),
(2,4,60),
(3,1,30),
(3,2,45),
(3,3,45),
(4,1,40),
(4,2,45),
(4,3,45);


CREATE TABLE program_enrollee  (
    program_enrollee_id INT PRIMARY KEY AUTO_INCREMENT,
    program_id  INT,
    enrollee_id INT,
    FOREIGN KEY (program_id)
        REFERENCES program (program_id)
        ON DELETE SET NULL,
    FOREIGN KEY (enrollee_id)
        REFERENCES enrollee (enrollee_id)
        ON DELETE SET NULL  
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8;
insert into program_enrollee (program_id,enrollee_id ) value
(3,1),
(4,1),
(1,1),
(2,2),
(1,2),
(1,3),
(2,3),
(4,3),
(3,4),
(3,5),
(4,5),
(2,6),
(3,6),
(4,6);


CREATE TABLE enrollee_subject  (
    enrollee_subject_id INT PRIMARY KEY AUTO_INCREMENT,
    enrollee_id  INT,
    subject_id INT,
    result INT,
    FOREIGN KEY (enrollee_id)
        REFERENCES enrollee (enrollee_id)
        ON DELETE SET NULL,
    FOREIGN KEY (subject_id)
        REFERENCES subject (subject_id)
        ON DELETE SET NULL  
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8;
insert into enrollee_subject (enrollee_id,subject_id,result ) value
(1,1,68),
(1,2,70),
(1,3,41),
(1,4,75),
(2,1,75),
(2,2,70),
(2,4,81),
(3,1,85),
(3,2,67),
(3,3,90),
(3,4,78),
(4,1,82),
(4,2,86),
(4,3,70),
(5,1,65),
(5,2,67),
(5,3,60),
(6,1,90),
(6,2,92),
(6,3,88),
(6,4,94);



