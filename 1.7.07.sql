/*
Необходимо в таблицу fine занести дату оплаты соответствующего штрафа 
из таблицы payment и уменьшить начисленный штраф в таблице fine в два 
раза (только для новых штрафов, дата оплаты которых занесена в payment) , 
если оплата произведена не более, чем за 20 дней со дня нарушения.

Пояснение. 
Для уменьшения суммы штрафа в два раза в зависимости от условия можно 
либо в SET использовать функцию if(), либо реализовать 2 запроса 
с разными условиями после WHERE. 
*/

UPDATE fine AS f,
    payment AS p 
SET 
    f.date_payment = p.date_payment,
    f.sum_fine = IF(DATEDIFF(f.date_payment, f.date_violation) <= 20,
        f.sum_fine / 2,
        sum_fine)
WHERE
    f.date_payment IS NULL
        AND f.name = p.name
        AND f.date_violation = p.date_violation;

-- UPDATE fine AS f,
--     payment AS p 
-- SET 
--     f.sum_fine = f.sum_fine / 2
-- WHERE
--     f.name = p.name
--         AND f.number_plate = p.number_plate
--         AND f.date_violation = p.date_violation
--         AND DATEDIFF(f.date_payment, f.date_violation) <= 20;