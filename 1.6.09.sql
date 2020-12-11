/*
Задание
Вывести название месяца и количество командировок для каждого месяца. 
Считаем, что командировка относится к некоторому месяцу, 
если она началась в этом месяце. Информацию вывести сначала 
в отсортированном по убыванию количества, а потом в алфавитном 
порядке по названию месяца виде. Название столбцов – Месяц и Количество.
*/

/*
 Для того, чтобы выделить название месяца из даты используется 
функция MONTHNAME(дата), которая возвращает название месяца на 
английском языке для указанной даты. Например, MONTHNAME('2020-04-12')='April'.
 Если группировка осуществляется по вычисляемому столбцу 
 (в данном случае «вычисляется» название месяца), 
 то после GROUP BYможно указать как вычисляемое выражение, так и имя столбца, 
 заданное с помощью AS. Важно отметить, что последний вариант (указать имя столбца)
 нарушает стандарт по порядку выполнения запросов, но иногда может 
 встречаться на реальных платформах.
*/

SELECT 
    MONTHNAME(date_first) AS Месяц,
    COUNT(1) AS Количество
FROM
    trip
GROUP BY Месяц
ORDER BY Количество DESC , Месяц