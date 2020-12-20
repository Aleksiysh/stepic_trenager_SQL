SELECT 
    Группа,
    CASE
        WHEN Группа = 'I' THEN 'от 0 до 10'
        WHEN Группа = 'II' THEN 'от 11 до 15'
        WHEN Группа = 'III' THEN 'от 16 до 27'
        ELSE 'больше 27'
    END AS Интервал,
    COUNT(*) AS Количество
FROM
    (SELECT 
        student_name,
            rate,
            CASE
                WHEN rate <= 10 THEN 'I'
                WHEN rate <= 15 THEN 'II'
                WHEN rate <= 27 THEN 'III'
                ELSE 'IV'
            END AS Группа
    FROM
		(SELECT 
			student_name, COUNT(*) AS rate
		FROM
			(SELECT 
			student_name, step_id
		FROM
			student
		INNER JOIN step_student USING (student_id)
		WHERE
			result = 'correct'
		GROUP BY student_name , step_id) AS qwe1
		GROUP BY student_name
		ORDER BY 2
        ) AS qwe2
	) AS qwe3
GROUP BY 1
