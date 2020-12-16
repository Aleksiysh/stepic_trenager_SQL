SELECT 
    name_department,
    name_program,
    plan,
    COUNT(enrollee_id) AS Количество,
    ROUND(COUNT(enrollee_id) / plan, 2) AS Конкурс
FROM
    department
        JOIN
    program USING (department_id)
        JOIN
    program_enrollee USING (program_id)
GROUP BY program_id
ORDER BY Конкурс DESC;
