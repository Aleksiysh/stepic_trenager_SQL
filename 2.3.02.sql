UPDATE book
        JOIN
    author USING (author_id)
        JOIN
    supply ON book.title = supply.title
        AND supply.author = author.name_author
        AND book.price != supply.price 
SET 
    book.price = 
    (book.price * book.amount + supply.price * supply.amount) 
				/ (book.amount + supply.amount),
    book.amount = book.amount + supply.amount,
    supply.amount = 0;