create database if not exists Bookstore;

use Bookstore;

CREATE TABLE Authors (
  AuthorID INT PRIMARY KEY,
  Name VARCHAR(30) NOT NULL,
  Rating FLOAT CHECK (Rating >= 0 AND Rating <= 5),
  Origin VARCHAR(20) NOT NULL, 
  Email VARCHAR(25) -- NOT NULL CHECK (Email REGEXP '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
);

CREATE TABLE Books (
  BookID INT PRIMARY KEY,
  Title VARCHAR(50) NOT NULL,
  Price FLOAT NOT NULL CHECK (Price > 0),
  Publication VARCHAR(30),
  Author_name VARCHAR(30),
  AuthorID INT,
  FOREIGN KEY (AuthorID) REFERENCES Authors(AuthorID)
);

INSERT INTO Authors (AuthorID, Name, Rating, Origin, Email)
VALUES
  (1, 'J.K. Rowling', 4.5, 'UK', 'jk.rowling@gmail.com'),
  (2, 'J.R.R. Tolkien', 4.8, 'UK', 'tolkien@gmail.com'),
  (3, 'Stephen King', 4.2, 'USA', 'stephenking@gmail.com'),
  (4, 'George R.R. Martin', 4.6, 'USA', 'grrmartin@gmail.com');

INSERT INTO Books (BookID, Title, Price, Publication, Author_name, AuthorID)
VALUES
  (1, 'Harry Potter and the Philosopher''s Stone', 12.99, 'Bloomsbury', 'J.K. Rowling', 1),
  (2, 'The Lord of the Rings', 14.99, 'Houghton Mifflin Harcourt', 'J.R.R. Tolkien', 2),
  (3, 'The Shining', 9.99, 'Doubleday', 'Stephen King', 3),
  (4, 'A Game of Thrones', 15.99, 'Bantam Books', 'George R.R. Martin', 4);
  
INSERT INTO Books (BookID, Title, Price, Publication, Author_name, AuthorID)
VALUES
  (5, 'Harry Potter and the Goblet of fire', 12.99, 'Bloomsbury', 'J.K. Rowling', 1); 
  
INSERT INTO Books (BookID, Title, Price, Publication, Author_name, AuthorID)
VALUES
  (6, 'Harry Potter and the horcrux', 12.99, 'Bloomsbury', 'J.K. Rowling', 1); 

select * from Authors;
select * from Books;

delete from Authors;
delete from Books;

-- Trigger : log - table for booklogs : LogID, BookID, LogDatetime

create table Booklog(
 LogID int auto_increment,
 BookID int ,
 LogDatetime datetime ,
 primary key (LogID)
 );
 
 select * from Booklog;
 
 -- trigger after insertion
 
DELIMITER //

CREATE TRIGGER after_book_insert
AFTER INSERT ON Books
FOR EACH ROW
BEGIN
  INSERT INTO Booklog (BookID, LogDatetime) VALUES (NEW.BookID, NOW()); -- current_date() now()
END//

DELIMITER ;

INSERT INTO Authors (AuthorID, Name, Rating, Origin, Email)
VALUES
  (1, 'J.K. Rowling', 4.5, 'UK', 'jk.rowling@gmail.com'),
  (2, 'J.R.R. Tolkien', 4.8, 'UK', 'tolkien@gmail.com'),
  (3, 'Stephen King', 4.2, 'USA', 'stephenking@gmail.com'),
  (4, 'George R.R. Martin', 4.6, 'USA', 'grrmartin@gmail.com'),
  (5, 'Jane Austen', 4.4, 'UK', 'janeausten@gmail.com'),
  (6, 'Charles Dickens', 4.3, 'UK', 'charlesdickens@gmail.com'),
  (7, 'Edgar Allan Poe', 4.1, 'USA', 'edgarallanpoe@gmail.com'),
  (8, 'H.G. Wells', 4.0, 'UK', 'hgwell@gmail.com'),
  (9, 'Mary Shelley', 4.2, 'UK', 'maryshelley@gmail.com'),
  (10, 'Robert Louis Stevenson', 4.1, 'UK', 'robertlouisstevenson@gmail.com'),
  (11, 'Mark Twain', 4.3, 'USA', 'marktwaingmail.com'),
  (12, 'F. Scott Fitzgerald', 4.2, 'USA', 'fscottfitzgerald@gmail.com'),
  (13, 'Ernest Hemingway', 4.1, 'USA', 'ernesthemingway@gmail.com'),
  (14, 'William Faulkner', 4.0, 'USA', 'williamfaulkner@gmail.com'),
  (15, 'Toni Morrison', 4.2, 'USA', 'tonimorrison@gmail.com'),
  (16, 'Gabriel Garcia Marquez', 4.3, 'Colombia', 'gabrielgarciamarquez@gmail.com'),
  (17, 'Salman Rushdie', 4.2, 'India', 'salmanrushdie@gmail.com'),
  (18, 'Donna Tartt', 4.1, 'USA', 'donnatartt@gmail.com'),
  (19, 'Jonathan Franzen', 4.0, 'USA', 'jonathanfranzen@gmail.com'),
  (20, 'Jennifer Egan', 4.2, 'USA', 'jenniferegan@gmail.com');

INSERT INTO Books (BookID, Title, Price, Publication, Author_name, AuthorID)
VALUES
  (1, 'Harry Potter and the Philosopher''s Stone', 12.99, 'Bloomsbury', 'J.K. Rowling', 1),
  (2, 'The Lord of the Rings', 14.99, 'Houghton Mifflin Harcourt', 'J.R.R. Tolkien', 2),
  (3, 'The Shining', 9.99, 'Doubleday', 'Stephen King', 3),
  (4, 'A Game of Thrones', 15.99, 'Bantam Books', 'George R.R. Martin', 4),
  (5, 'Pride and Prejudice', 10.99, 'Penguin', 'Jane Austen', 5),
  (6, 'Oliver Twist', 11.99, 'Penguin', 'Charles Dickens', 6),
  (7, 'The Tell-Tale Heart', 8.99, 'Penguin', 'Edgar Allan Poe', 7),
  (8, 'The Time Machine', 12.99, 'Penguin', 'H.G. Wells', 8),
  (9, 'Frankenstein', 13.99, 'Penguin', 'Mary Shelley', 9),
  (10, 'Treasure Island', 10.99, 'Penguin', 'Robert Louis Stevenson', 10),
  (11, 'The Adventures of Tom Sawyer', 11.99, 'Penguin', 'Mark Twain', 11),
  (12, 'The Great Gatsby', 12.99, 'Penguin', 'F. Scott Fitzgerald', 12),
  (13, 'The Old Man and the Sea', 9.99, 'Penguin', 'Ernest Hemingway', 13),
  (14, 'The Sound and the Fury', 11.99, 'Penguin', 'William Faulkner', 14),
  (15, 'Beloved', 12.99, 'Penguin', 'Toni Morrison', 15);
  
  -- event
  
  set global event_scheduler = ON;
  
  create event clear_logs
  on schedule every 1 year starts '2026-01-01 00:00:00'
  do 
   delete from Booklog where LogDatetime < now();
   
drop event clear_logs;
  
 
