/*
Вывести города, в которых живут клиенты, оформлявшие заказы в 
интернет-магазине. Указать количество заказов в каждый город. 
Информацию вывести по убыванию количества заказов, 
а затем в алфавитном порядке по названию городов.
*/

SELECT 
    name_city, COUNT(1) AS Количество
FROM
    city
        JOIN
    client USING (city_id)
        JOIN
    buy USING (client_id)
GROUP BY city_id
ORDER BY Количество DESC , name_city;