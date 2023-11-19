-- Create tables
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    ISBN VARCHAR(13),
    PublishDate DATE,
    AuthorID INT,
    FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100)
);

CREATE TABLE Checkouts (
    CheckoutID INT PRIMARY KEY,
    BookID INT,
    UserID INT,
    CheckoutDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

-- Insert sample data
INSERT INTO Authors (AuthorID, FirstName, LastName) VALUES
    (1, 'John', 'Doe'),
    (2, 'Jane', 'Smith');

INSERT INTO Books (BookID, Title, ISBN, PublishDate, AuthorID) VALUES
    (101, 'Introduction to SQL', '978-0-123456-78-9', '2022-01-01', 1),
    (102, 'Database Design Basics', '978-0-987654-32-1', '2022-02-15', 2);

INSERT INTO Users (UserID, FirstName, LastName, Email) VALUES
    (1001, 'Alice', 'Johnson', 'alice@example.com'),
    (1002, 'Bob', 'Smith', 'bob@example.com');

INSERT INTO Checkouts (CheckoutID, BookID, UserID, CheckoutDate, ReturnDate) VALUES
    (10001, 101, 1001, '2022-03-01', '2022-03-15'),
    (10002, 102, 1002, '2022-04-10', '2022-05-01');
