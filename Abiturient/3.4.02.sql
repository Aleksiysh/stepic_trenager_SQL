CREATE TABLE applicant AS SELECT program_id,
    enrollee_subject.enrollee_id,
    SUM(result) AS itog FROM
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
GROUP BY 1 , 2
ORDER BY 1 , 3 DESC;

SELECT 
    *
FROM
    applicant;

