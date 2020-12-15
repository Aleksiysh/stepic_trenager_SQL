UPDATE buy_step
        JOIN
    step USING (step_id) 
SET 
    date_step_beg = NOW()
WHERE
    buy_id = 5
        AND step.name_step = 'Оплата';
SELECT * FROM buy_step;
