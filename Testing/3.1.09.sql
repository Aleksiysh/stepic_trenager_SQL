/*
Текст задания (чтобы не прокручивать страницу) 
Посчитать результаты тестирования. Результат попытки вычислить 
как количество правильных ответов, деленное на 3 (количество 
вопросов в каждой попытке) и умноженное на 100. Результат 
округлить до двух знаков после запятой. Вывести фамилию студента, 
название предмета, дату и результат. Информацию отсортировать 
сначала по фамилии студента, потом по убыванию даты попытки.
*/
SELECT 
    name_student,
    name_subject,
    date_attempt,
    ROUND(SUM(is_correct) / 3 * 100, 2) AS Результат
FROM
    subject
        JOIN
    attempt USING (subject_id)
        JOIN
    student USING (student_id)
        JOIN
    testing USING (attempt_id)
        JOIN
    answer USING (answer_id)
GROUP BY attempt_id
ORDER BY name_student , date_attempt DESC



