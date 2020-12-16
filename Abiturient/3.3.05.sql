SELECT 
    name_program
FROM
    program
        JOIN
    program_subject USING (program_id)
GROUP BY program_id
HAVING MIN(min_result) >= 40
ORDER BY 1;
