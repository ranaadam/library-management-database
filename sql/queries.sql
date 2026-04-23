-- =========================================
-- QUERIES
-- =========================================

--1. List all books with their authors
SELECT b.title, a.name AS author
FROM Book b
JOIN Author a ON b.author_id = a.author_id;

--2. Count total number of books
SELECT COUNT(*) AS total_books 
FROM Book;

--3. Show members who borrowed books
SELECT m.name AS member, b.title AS book
FROM Borrow br
JOIN Member m ON br.member_id = m.member_id
JOIN Book b ON br.book_id = b.book_id;

--4. Find the most borrowed book
SELECT b.title, COUNT(*) AS borrow_count
FROM Borrow br
JOIN Book b ON br.book_id = b.book_id
GROUP BY b.title
ORDER BY borrow_count DESC
LIMIT 1;

--5. Show authors who have written more than one book
SELECT a.name
FROM Author a
JOIN Book b ON a.author_id = b.author_id
GROUP BY a.name
HAVING COUNT(b.book_id) > 1;

--6. Show overdue books
SELECT *
FROM Borrow
WHERE due_date < CURRENT_DATE;

--7. Display all borrowed books with member and staff details
SELECT m.name AS member, s.name AS staff, b.title AS book
FROM Borrow br
JOIN Member m ON br.member_id = m.member_id
JOIN Staff s ON br.staff_id = s.staff_id
JOIN Book b ON br.book_id = b.book_id;

--8. Display total number of books borrowed per member
SELECT m.name, COUNT(*) AS total_borrowed
FROM Borrow br
JOIN Member m ON br.member_id = m.member_id
GROUP BY m.name;

--9. Display number of books written by each author
SELECT a.name, COUNT(b.book_id) AS total_books
FROM Author a
JOIN Book b ON a.author_id = b.author_id
GROUP BY a.name;

--10. Show members who have returned damaged books
SELECT m.name
FROM ReturnBook r
JOIN Borrow br ON r.borrow_id = br.borrow_id
JOIN Member m ON br.member_id = m.member_id
WHERE r.condition = 'Damaged';

--11. Display members in uppercase ordered by join date
SELECT UPPER(name) AS member_name
FROM Member
ORDER BY join_date;

--12. Show staff who handled borrowing
SELECT DISTINCT s.name
FROM Staff s
JOIN Borrow br ON s.staff_id = br.staff_id;

--13. Find books published before the year 2000
SELECT title
FROM Book
WHERE published_year < 2000;
