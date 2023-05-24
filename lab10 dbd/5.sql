SELECT COUNT(*) AS Available_Books
FROM BOOK_COPIES
WHERE BOOK_COPIES.Book_id IN (
    SELECT BOOK_LOANS.Book_id
    FROM BOOK_LOANS
    WHERE BOOK_LOANS.Date_out < '2023-04-01'
)
AND BOOK_COPIES.Book_id IN (
    SELECT BOOK.Book_id
    FROM BOOK
    WHERE BOOK.Field_code = 'SICT'
    AND BOOK.Publication_date <= '2023-04-04'
);
