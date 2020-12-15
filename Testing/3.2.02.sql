insert into attempt ( student_id , subject_id , date_attempt) 
select  student_id , subject_id , now() 
from
subject
join
student
where name_student = 'Баранов Павел' and name_subject = 'Основы баз данных';
