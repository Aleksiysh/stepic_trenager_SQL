SELECT 
    CONCAT(module_id,
            '.',
            lesson_position,
            '.',
            step_position,
            ' ',
            step_name) AS Шаг
FROM
    module
        JOIN
    lesson USING (module_id)
        JOIN
    step USING (lesson_id)
WHERE
    step_id IN (SELECT 
            step_id
        FROM
            step_keyword
                JOIN
            keyword USING (keyword_id)
        WHERE
            keyword_name = 'MIN')
        AND step_id IN (SELECT 
            step_id
        FROM
            step_keyword
                JOIN
            keyword USING (keyword_id)
        WHERE
            keyword_name = 'AVG')
ORDER BY module_id , lesson_position , step_position;