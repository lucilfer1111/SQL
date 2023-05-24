-- Import data into BOOK table
.mode csv
.import book_data.csv BOOK

-- Import data into BOOK_AUTHORS table
.mode csv
.import book_authors_data.csv BOOK_AUTHORS

-- Import data into PUBLISHER table
.mode csv
.import publisher_data.csv PUBLISHER

-- Import data into BOOK_COPIES table
.mode csv
.import book_copies_data.csv BOOK_COPIES

-- Import data into BOOK_LOANS table
.mode csv
.import book_loans_data.csv BOOK_LOANS

-- Import data into LIBRARY_BRANCH table
.mode csv
.import library_branch_data.csv LIBRARY_BRANCH

-- Import data into BORROWER table
.mode csv
.import borrower_data.csv BORROWER
