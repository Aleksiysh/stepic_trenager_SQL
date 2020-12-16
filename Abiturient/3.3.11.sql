SELECT 
    name_program, name_enrollee
FROM
    enrollee
        JOIN
    program_enrollee USING (enrollee_id)
        JOIN
    program USING (program_id)
        JOIN
    program_subject USING (program_id)
        JOIN
    enrollee_subject ON program_subject.subject_id = enrollee_subject.subject_id
        AND enrollee_subject.enrollee_id = enrollee.enrollee_id
WHERE
    result < min_result
GROUP BY name_program
ORDER BY 1 , 2;
