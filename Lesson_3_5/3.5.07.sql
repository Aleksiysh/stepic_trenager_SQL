with table1 (student_id,cnt_steps_correct) as
(select student_id, count(distinct step_id) as cnt_steps_correct from
step_student
where result = 'correct'
group by student_id),

 steps(step_count) as
(select count(*) from
(select step_id from
step_student
group by step_id) as qwe)

select student_name as Студент, 
round(table1.cnt_steps_correct/steps.step_count*100) as  Прогресс,
case

	when table1.cnt_steps_correct/steps.step_count =1 then 'Сертификат c отличием' 
	when table1.cnt_steps_correct/steps.step_count >=0.8 then 'Сертификат' 
    else ''
end as Результат

from table1
join steps
join student
using(student_id)
order by 2 desc,1;