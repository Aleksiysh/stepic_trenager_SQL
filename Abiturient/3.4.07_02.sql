SET @num_pr = 0;
SET @row_num = 1;

SELECT *, 
     if(program_id = @num_pr, @row_num := @row_num + 1, @row_num := 1) AS str_num
     ,@num_pr := program_id AS add_var 
from applicant_order;