SELECT 
    CONCAT(LEFT(CONCAT(module_id, ' ', module_name),
                16),
            '...') AS Модуль,
    CONCAT(LEFT(CONCAT(module_id,
                        '.',
                        lesson_position,
                        ' ',
                        lesson_name),
                16),
            '...') AS Урок,
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
    module_name LIKE ('%вложен%запрос%')
        OR step_name LIKE ('%вложен%запрос%')
order by module_id,lesson_id,step_position;