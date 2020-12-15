insert into testing(attempt_id , question_id)
select attempt_id , question_id from question
join attempt 
using(subject_id)
where attempt_id =(select max(attempt_id) from attempt)
order by rand()
limit 3;

SELECT 
    *
FROM
    testing;

