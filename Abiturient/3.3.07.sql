SELECT 
    name_enrollee,
    IF(SUM(bonus) IS NULL, 0, SUM(bonus)) AS Бонус
FROM
    enrollee
        LEFT JOIN
    enrollee_achievement USING (enrollee_id)
        LEFT JOIN
    achievement USING (achievement_id)
GROUP BY enrollee_id
ORDER BY 1;