select * from
enrollee
join program_enrollee
using(enrollee_id)
join program
using(program_id)
join program_subject
using(program_id)
join enrollee_subject
on program_subject.subject_id = enrollee_subject.subject_id 
and enrollee_subject.enrollee_id= enrollee.enrollee_id