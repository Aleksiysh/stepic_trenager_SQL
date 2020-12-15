SELECT 
    YEAR(date_payment) AS Год,
    MONTHNAME(date_payment) AS Месяц,
    SUM(cost) AS Сумма
FROM
    (SELECT 
        buy_id,
            client_id,
            book_id,
            date_payment,
            amount * price AS cost
    FROM
        buy_archive 
	UNION ALL 
    SELECT 
        buy.buy_id,
		client_id,
		book_id,
		date_step_end,
		buy_book.amount * price AS cost
    FROM
        book
    INNER JOIN buy_book USING (book_id)
    INNER JOIN buy USING (buy_id)
    INNER JOIN buy_step USING (buy_id)
    INNER JOIN step USING (step_id)
    WHERE
        date_step_end IS NOT NULL
            AND name_step = 'Оплата') AS query1
GROUP BY Год , Месяц
ORDER BY Месяц , Год;
