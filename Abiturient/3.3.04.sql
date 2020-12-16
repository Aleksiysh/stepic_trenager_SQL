SELECT 
    name_subject,
    COUNT(result) AS Количество,
    MAX(result) AS Максимум,
    MIN(result) AS Минимум,
    ROUND(AVG(result), 1) AS Среднее
FROM
    enrollee_subject
        JOIN
    subject USING (subject_id)
GROUP BY subject_id
ORDER BY name_subject;
