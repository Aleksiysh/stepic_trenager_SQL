/*
Вывести фамилию, номер машины и нарушение только для тех водителей, 
которые на одной машине нарушили одно и то же правило   два и более раз.
*/
SELECT 
    name, number_plate, violation
FROM
    fine AS f
GROUP BY name , number_plate , violation
HAVING COUNT(1) > 1;