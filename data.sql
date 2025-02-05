use Bookstore;

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