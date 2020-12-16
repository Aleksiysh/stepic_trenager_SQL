create table applicant_order  as 
select * from applicant
order by program_id, itog desc;
drop table applicant;
select * from applicant_order;