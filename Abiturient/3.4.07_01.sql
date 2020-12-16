SET @row_num := 0;

SELECT *, (@row_num := @row_num + 1) AS str_num
FROM  applicant_order;