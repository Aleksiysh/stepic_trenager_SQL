UPDATE applicant
        LEFT JOIN
    (SELECT 
        enrollee_id, SUM(bonus) AS bonus
    FROM
        achievement
    JOIN enrollee_achievement USING (achievement_id)
    GROUP BY enrollee_id) asd USING (enrollee_id) 
SET 
    itog = IF(bonus IS NULL, itog, itog + bonus);
    
SELECT 
    *
FROM
    applicant;