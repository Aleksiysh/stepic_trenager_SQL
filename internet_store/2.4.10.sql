/*
Вывести все заказы и названия этапов, на которых они 
в данный момент находятся. Если заказ доставлен –  
информацию о нем не выводить. 
Информацию отсортировать по возрастанию buy_id.
*/

SELECT 
    buy_id, name_step
FROM
    step
        JOIN
    buy_step USING (step_id)
WHERE
    NOT date_step_beg IS NULL
        AND date_step_end IS NULL
ORDER BY buy_id;