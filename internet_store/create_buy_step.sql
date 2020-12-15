CREATE TABLE buy_step  (
    buy_step_id INT PRIMARY KEY AUTO_INCREMENT,
    buy_id INT,
    step_id INT,
    date_step_beg DATE,
    date_step_end DATE,
    FOREIGN KEY (buy_id)
        REFERENCES buy (buy_id)
        ON DELETE SET NULL,
    FOREIGN KEY (step_id)
        REFERENCES step (step_id)
        ON DELETE SET NULL
)  ENGINE=INNODB AUTO_INCREMENT=1 DEFAULT CHARSET=UTF8;
      
insert into buy_step   (buy_id,step_id, date_step_beg,date_step_end) value
(	1, 	1,	"2020-02-20","2020-02-20"),
(	1,	2,	"2020-02-20","2020-02-21"),
(	1,	3,	"2020-02-22","2020-03-07"),
(	1,	4,	"2020-03-08","2020-03-08"),
(	2,	1,	"2020-02-28","2020-02-28"),
(	2,	2,	"2020-02-29","2020-03-01"),
(	2,	3,	"2020-03-02",		null),
(	2,	4,			null,		null),
(	3,	1,	"2020-03-05","2020-03-05"),
(	3,	2,	"2020-03-05","2020-03-06"),
(	3,	3,	"2020-03-06","2020-03-10"),
(	3,	4,	"2020-03-11",		null),
(	4,	1,	"2020-03-20	", 		null),
(	4,	2,			null,		null),
(	4,	3,	 	 	null,		null),
(	4,	4,	 		null,		null);