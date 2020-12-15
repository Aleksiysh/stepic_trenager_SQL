SELECT 
    name_subject,
    CONCAT(LEFT(name_question, 30), '...') AS Вопрос,
    COUNT(is_correct) AS Всего_ответов,
    ROUND(SUM(is_correct) / COUNT(is_correct) * 100,
            2) AS Успешность
FROM
    question
        JOIN
    answer USING (question_id)
        RIGHT JOIN
    testing USING (answer_id)
        JOIN
    subject USING (subject_id)
GROUP BY answer.question_id
ORDER BY 1 , 4 DESC , 2
