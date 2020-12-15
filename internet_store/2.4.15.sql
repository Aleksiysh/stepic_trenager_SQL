SELECT 
    title,
    SUM(asd) AS Количество,
    SUM(Cost) AS Сумма
FROM
    ((SELECT 	/* ЗАПРОС 1*/
        title,
            SUM(buy_book.amount) AS asd,
            SUM(buy_book.amount * price) AS Cost
    FROM
        buy_step
    JOIN buy_book USING (buy_id)
    JOIN (book) USING (book_id)
    WHERE
        step_id = 1
            AND date_step_end IS NOT NULL
    GROUP BY book_id)
    UNION ALL
    (SELECT   		/*ЗАПРОС2*/
		title,
			SUM(buy_archive.amount) AS asd,
			SUM(buy_archive.price * buy_archive.amount) AS Cost
    FROM
        buy_archive
    JOIN book USING (book_id)
    GROUP BY book_id)) query1
GROUP BY title
ORDER BY Сумма DESC;
