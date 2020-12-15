SELECT 
    name_subject,
    COUNT(DISTINCT student_id) AS Количество
FROM
    subject
        LEFT JOIN
    attempt USING (subject_id)
GROUP BY subject_id
ORDER BY 2 DESC , 1;