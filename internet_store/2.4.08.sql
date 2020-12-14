/*
Вывести номера всех оплаченных заказов и даты, когда они были оплачены.
*/

SELECT 
    buy_id, date_step_end
FROM
    step
        JOIN
    buy_step USING (step_id)
WHERE
    step_id = 1
        AND NOT (date_step_end IS NULL);