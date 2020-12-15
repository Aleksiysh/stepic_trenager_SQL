UPDATE attempt 
SET 
    result = (SELECT 
            ROUND(SUM(is_correct) / COUNT(is_correct) * 100)
        FROM
            testing
                JOIN
            answer USING (answer_id)
        WHERE
            attempt_id = 8
        GROUP BY attempt_id)
WHERE
    attempt_id = 8;