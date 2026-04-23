-- =========================================
-- DML (INSERT DATA)
-- =========================================

-- Insert authors
INSERT INTO Author (name) VALUES
('George Orwell'),
('J.K. Rowling'),
('J.R.R. Tolkien');

-- Insert books
INSERT INTO Book (title, category, published_year, author_id) VALUES
('1984', 'Fiction', 1949, 1),
('Animal Farm', 'Fiction', 1945, 1),
('Harry Potter', 'Fantasy', 1997, 2),
('The Hobbit', 'Fantasy', 1937, 3);

-- Insert members
INSERT INTO Member (name, join_date) VALUES
('Ali', '2023-01-10'),
('Sara', '2023-03-15');

-- Insert staff
INSERT INTO Staff (name) VALUES
('John'),
('Emma');

-- Insert borrow records
INSERT INTO Borrow (member_id, book_id, staff_id, borrow_date, due_date) VALUES
(1, 1, 1, '2024-01-01', '2024-01-10'),
(2, 3, 2, '2024-01-05', '2024-01-15'),
(1, 2, 1, '2024-02-01', '2024-02-10');

-- Insert return records
INSERT INTO ReturnBook (borrow_id, return_date, condition) VALUES
(1, '2024-01-09', 'Good'),
(2, '2024-01-20', 'Damaged');
