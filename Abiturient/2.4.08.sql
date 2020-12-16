create table student as
select name_program, name_enrollee, itog from enrollee
join applicant_order
using(enrollee_id)
join program
using(program_id)
where str_id <= plan
order by 1, 3 desc;
select * from student;