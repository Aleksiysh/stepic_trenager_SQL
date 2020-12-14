/*
В таблице city для каждого города указано количество дней, 
за которые заказ может быть доставлен в этот город 
(рассматривается только этап "Транспортировка"). 
Для тех заказов, которые прошли этап транспортировки, 
вывести количество дней за которое заказ реально доставлен в город. 
А также, если заказ доставлен с опозданием, указать количество дней 
задержки, в противном случае вывести 0. 
Информацию вывести в отсортированном по номеру заказа виде.
*/

SELECT 
    buy_id,
    DATEDIFF(date_step_end, date_step_beg) AS Количество_дней,
    IF(DATEDIFF(date_step_end, date_step_beg) > city.days_delivery,
        DATEDIFF(date_step_end, date_step_beg) - city.days_delivery,
        0) AS Опоздание
FROM
    city
        JOIN
    client USING (city_id)
        JOIN
    buy USING (client_id)
        JOIN
    buy_step USING (buy_id)
WHERE
    step_id = 3
        AND date_step_end IS NOT NULL
ORDER BY buy_id;