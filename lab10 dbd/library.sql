CREATE TABLE BOOK (
    Book_id INTEGER PRIMARY KEY,
    Title VARCHAR(255),
    Publisher_name VARCHAR(255),
    Publication_date DATE,
    Field_code VARCHAR(10)
);
CREATE TABLE BOOK_AUTHORS (
    Book_id INTEGER REFERENCES BOOK(Book_id),
    Author_name VARCHAR(255),
    PRIMARY KEY (Book_id, Author_name)
);
CREATE TABLE PUBLISHER (
    Name VARCHAR(255),
    Address VARCHAR(255),
    Phone VARCHAR(20),
    PRIMARY KEY (Name)
);
CREATE TABLE BOOK_COPIES (
    Book_id INTEGER REFERENCES BOOK(Book_id),
    Branch_id INTEGER REFERENCES LIBRARY_BRANCH(Branch_id),
    No_of_copies INTEGER,
    PRIMARY KEY (Book_id, Branch_id)
);
CREATE TABLE BOOK_LOANS (
    Book_id INTEGER REFERENCES BOOK(Book_id),
    Branch_id INTEGER REFERENCES LIBRARY_BRANCH(Branch_id),
    Card_no INTEGER REFERENCES BORROWER(Card_no),
    Date_out DATE,
    Due_date DATE,
    PRIMARY KEY (Book_id, Branch_id, Card_no, Date_out)
);
CREATE TABLE LIBRARY_BRANCH (
    Branch_id INTEGER PRIMARY KEY,
    Branch_name VARCHAR(255),
    Address VARCHAR(255),
    Due_date DATE
);
CREATE TABLE BORROWER (
    Card_no INTEGER PRIMARY KEY,
    Name VARCHAR(255),
    Address VARCHAR(255),
    Phone VARCHAR(20)
);
