-- =========================================
-- DDL (TABLE CREATION)
-- =========================================

-- Create Author table
CREATE TABLE Author (
    author_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Create Book table
CREATE TABLE Book (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    category VARCHAR(50),
    published_year INT,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES Author(author_id)
);

-- Create Member table
CREATE TABLE Member (
    member_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    join_date DATE DEFAULT CURRENT_DATE
);

-- Create Staff table
CREATE TABLE Staff (
    staff_id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

-- Create Borrow table
CREATE TABLE Borrow (
    borrow_id SERIAL PRIMARY KEY,
    member_id INT,
    book_id INT,
    staff_id INT,
    borrow_date DATE DEFAULT CURRENT_DATE,
    due_date DATE,
    FOREIGN KEY (member_id) REFERENCES Member(member_id),
    FOREIGN KEY (book_id) REFERENCES Book(book_id),
    FOREIGN KEY (staff_id) REFERENCES Staff(staff_id)
);

-- Create Return table
CREATE TABLE ReturnBook (
    return_id SERIAL PRIMARY KEY,
    borrow_id INT UNIQUE,
    return_date DATE,
    condition VARCHAR(50),
    FOREIGN KEY (borrow_id) REFERENCES Borrow(borrow_id)
);
