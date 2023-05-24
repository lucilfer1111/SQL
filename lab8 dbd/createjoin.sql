CREATE TABLE BOOK (
    Book_id INTEGER PRIMARY KEY,
    Title TEXT NOT NULL,
    Publisher_name TEXT,
    FOREIGN KEY (Publisher_name) REFERENCES PUBLISHER(Name)
);

CREATE TABLE BOOK_AUTHORS (
    Book_id INTEGER NOT NULL,
    Author_name TEXT NOT NULL,
    PRIMARY KEY (Book_id, Author_name),
    FOREIGN KEY (Book_id) REFERENCES BOOK(Book_id)
);

CREATE TABLE PUBLISHER (
    Name TEXT PRIMARY KEY,
    Address TEXT,
    Phone TEXT
);

CREATE TABLE BOOK_COPIES (
    Book_id INTEGER NOT NULL,
    Branch_id INTEGER NOT NULL,
    No_of_copies INTEGER,
    PRIMARY KEY (Book_id, Branch_id),
    FOREIGN KEY (Book_id) REFERENCES BOOK(Book_id),
    FOREIGN KEY (Branch_id) REFERENCES LIBRARY_BRANCH(Branch_id)
);

CREATE TABLE BOOK_LOANS (
    Book_id INTEGER NOT NULL,
    Branch_id INTEGER NOT NULL,
    Card_no INTEGER NOT NULL,
    Date_out TEXT,
    Due_date TEXT,
    PRIMARY KEY (Book_id, Branch_id, Card_no),
    FOREIGN KEY (Book_id) REFERENCES BOOK(Book_id),
    FOREIGN KEY (Branch_id) REFERENCES LIBRARY_BRANCH(Branch_id),
    FOREIGN KEY (Card_no) REFERENCES BORROWER(Card_no)
);

CREATE TABLE LIBRARY_BRANCH (
    Branch_id INTEGER PRIMARY KEY,
    Branch_name TEXT NOT NULL,
    Address TEXT
);

CREATE TABLE BORROWER (
    Card_no INTEGER PRIMARY KEY,
    Name TEXT NOT NULL,
    Address TEXT,
    Phone TEXT
);
INSERT INTO PUBLISHER(Name, Address, Phone) VALUES
('HarperCollins', '195 Broadway, New York, NY 10007', '212-207-7000');
INSERT INTO PUBLISHER(Name, Address, Phone) VALUES
('Penguin Random House', '1745 Broadway, New York, NY 10019', '212-782-9000');
INSERT INTO PUBLISHER(Name, Address, Phone) VALUES
('Oxford University Press', 'Great Clarendon Street, Oxford OX2 6DP, UK', '+44 (0) 1865 353500');

INSERT INTO BOOK(Title, Publisher_name) VALUES
('To Kill a Mockingbird', 'HarperCollins');
INSERT INTO BOOK(Title, Publisher_name) VALUES
('1984', 'Penguin Random House');
INSERT INTO BOOK(Title, Publisher_name) VALUES
('The Lord of the Rings', 'Oxford University Press');

INSERT INTO BOOK_AUTHORS(Book_id, Author_name) VALUES
(1, 'Harper Lee');
INSERT INTO BOOK_AUTHORS(Book_id, Author_name) VALUES
(2, 'George Orwell');
INSERT INTO BOOK_AUTHORS(Book_id, Author_name) VALUES
(3, 'J.R.R. Tolkien');

INSERT INTO LIBRARY_BRANCH(Branch_id, Branch_name, Address) VALUES
(1, 'Central Library', '1000 Fourth Ave, Seattle, WA 98104');
INSERT INTO LIBRARY_BRANCH(Branch_id, Branch_name, Address) VALUES
(2, 'Northgate Branch', '10548 5th Ave NE, Seattle, WA 98125');

INSERT INTO BORROWER(Card_no, Name, Address, Phone) VALUES
(123456, 'John Doe', '123 Main St, Seattle, WA 98101', '555-1234');
INSERT INTO BORROWER(Card_no, Name, Address, Phone) VALUES
(234567, 'Jane Smith', '456 Pine St, Seattle, WA 98101', '555-5678');

INSERT INTO BOOK_COPIES(Book_id, Branch_id, No_of_copies) VALUES
(1, 1, 2);
INSERT INTO BOOK_COPIES(Book_id, Branch_id, No_of_copies) VALUES
(2, 1, 3);
INSERT INTO BOOK_COPIES(Book_id, Branch_id, No_of_copies) VALUES
(3, 1, 1);
INSERT INTO BOOK_COPIES(Book_id, Branch_id, No_of_copies) VALUES
(1, 2, 1);
INSERT INTO BOOK_COPIES(Book_id, Branch_id, No_of_copies) VALUES
(2, 2, 2);

INSERT INTO BOOK_LOANS(Book_id, Branch_id, Card_no, Date_out, Due_date) VALUES
(1, 1, 123456, '2023-05-01', '2023-05-15');
INSERT INTO BOOK_LOANS(Book_id, Branch_id, Card_no, Date_out, Due_date) VALUES
(2, 1, 123456, '2023-05-02', '2023-05-16');
INSERT INTO BOOK_LOANS(Book_id, Branch_id, Card_no, Date_out, Due_date) VALUES
(1, 2, 234567, '2023-05-03', '2023-05-17');