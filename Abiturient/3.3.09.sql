SELECT 
    name_program
FROM
    program
        JOIN
    program_subject USING (program_id)
        JOIN
    subject USING (subject_id)
WHERE
    name_subject IN ('Информатика' , 'Математика')
GROUP BY program_id
HAVING COUNT(subject_id) = 2
ORDER BY 1;
