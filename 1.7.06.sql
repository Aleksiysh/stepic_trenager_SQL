/*
Увеличить в два раза сумму неоплаченных штрафов для отобранных на предыдущем шаге записей. 
*/

/*
Пояснение к заданию

Для всех  нарушений, по которым штраф еще не оплачен, (тех, у которых date_payment 
имеет пустое значение Null), необходимо проверить, является ли данное нарушение 
для водителя и машины повторным, если да –  увеличить штраф в два раза. 
Если водитель совершил нарушение на другой машине, ему увеличивать штраф не нужно. 
Этот запрос реализован на предыдущем шаге.

При реализации можно использовать вложенный запрос как отдельную таблицу, 
записанную после ключевого слова UPDATE, при этом вложенному запросу 
необходимо присвоить имя, например query_in:

UPDATE fine, (SELECT ...) query_in
SET ...
WHERE ...
Другим способом решения является использование двух запросов: 
сначала создать временную таблицу, например query_in, в которую включить 
информацию о тех штрафах, сумму которых нужно увеличить в два раза, 
а затем уже обновлять информацию в таблице fine:

CREATE TABLE query_in ...;

UPDATE fine, query_in
SET ...
WHERE ...;
После ключевого слова WHERE  указывается условие, при котором нужно 
обновлять данные. В нашем случае  данные обновляются, если и фамилия, 
и государственный номер, и нарушение совпадают в таблице fine и в 
результирующей таблице запроса query_in. Например, для связи по фамилии 
используется запись fine.name = query_in.name. Также в условии нужно 
учесть, что данные обновляются только для тех записей, у которых в столбце date_payment пусто.

Важно. Если в запросе используется несколько таблиц или запросов, 
включающих одинаковые поля, то применяется полное имя столбца, 
включающего название таблицы через символ «.». Например,  fine.name  и  query_in.name.

*/

UPDATE fine AS f,
    (SELECT 
        name, number_plate, violation
    FROM
        fine AS f
    GROUP BY name , number_plate , violation
    HAVING COUNT(1) > 1) AS tmp 
SET 
    f.sum_fine = f.sum_fine * 2
WHERE
    f.name = tmp.name
        AND f.number_plate = tmp.number_plate
        AND f.violation = tmp.violation
        AND f.date_payment IS NULL
        AND f.fine_id > 0;    