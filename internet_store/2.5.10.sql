UPDATE buy_step
        JOIN
    step USING (step_id) 
SET 
    date_step_end = NOW()
WHERE
    buy_id = 5
        AND step.name_step = 'Оплата';
UPDATE buy_step        
SET 
    date_step_beg = NOW()
WHERE
    buy_id = 5 and step_id-1 =
    (select step_id from step
        where name_step = 'Оплата');   
     
SELECT * FROM buy_step;