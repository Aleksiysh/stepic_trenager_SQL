SET @num_pr = 0;
SET @row_num = 1;

update  applicant_order 
join (
SELECT *, 
     if(program_id = @num_pr, @row_num := @row_num + 1, @row_num := 1) AS str_num
     ,@num_pr := program_id AS add_var 
from applicant_order) as qwe
using( program_id,enrollee_id)
set applicant_order.str_id = str_num;
