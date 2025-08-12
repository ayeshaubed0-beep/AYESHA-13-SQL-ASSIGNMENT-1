
CREATE DATABASE library_db;
\c library_db;


CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(255),
    year_published INT,
    isAvailable BOOLEAN,
    price NUMERIC(10, 2),
    publication VARCHAR(255)
);


INSERT INTO books (title, author, year_published, isAvailable, price, publication) VALUES
('The Great Book', 'John Smith', 2001, TRUE, 450.00, 'ABC'),
('1984', 'George Orwell', 1949, TRUE, 299.99, 'XYZ'),
('Brave New World', 'Aldous Huxley', 1932, FALSE, 350.00, 'XYZ'),
('The Silent Patient', 'Alex Michaelides', 2019, TRUE, 700.00, 'Penguin'),
('Educated', 'Tara Westover', 2018, TRUE, 520.00, 'Random House'),
('Sapiens', 'Yuval Noah Harari', 2011, TRUE, 480.00, 'Harper'),
('Atomic Habits', 'James Clear', 2018, TRUE, 599.00, 'Penguin'),
('The Midnight Library', 'Matt Haig', 2020, TRUE, 410.00, 'Canongate'),
('To Kill a Mockingbird', 'Harper Lee', 1960, TRUE, 399.00, 'XYZ'),
('The Catcher in the Rye', 'J.D. Salinger', 1951, FALSE, 429.00, 'Little, Brown'),
('Dune', 'Frank Herbert', 1965, TRUE, 750.00, 'Chilton'),
('Becoming', 'Michelle Obama', 2018, TRUE, 680.00, 'Crown'),
('The Alchemist', 'Paulo Coelho', 1988, TRUE, 349.99, 'HarperOne'),
('The Power of Now', 'Eckhart Tolle', 1997, TRUE, 550.00, 'New World'),
('Project Hail Mary', 'Andy Weir', 2021, TRUE, 820.00, 'XYZ');


SELECT * FROM books
WHERE year_published > 2000;


SELECT * FROM books
WHERE price < 599.00
ORDER BY price DESC;


SELECT * FROM books
ORDER BY price DESC
LIMIT 3;


SELECT * FROM books
ORDER BY year_published DESC
OFFSET 2 LIMIT 2;


SELECT * FROM books
WHERE publication = 'XYZ'
ORDER BY title ASC;
