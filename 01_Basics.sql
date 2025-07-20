-- Creating a database
CREATE DATABASE IF NOT EXISTS student;
USE student;

-- Creating a table
CREATE TABLE records (
	Roll_No INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(20) NOT NULL,
    Gender ENUM('Male', 'Female', 'Others'),
    Email VARCHAR(100) NOT NULL,
    Date_of_birth DATE NOT NULL,
    Created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Showing all record of table
SELECT * FROM records;

-- Inserting Records in my table 1
INSERT INTO records  VALUES (1, 'Alice', 'Female' , 'alice@example.com' , '1995-05-14', DEFAULT);

-- 2
INSERT INTO records (Name, Gender, Email, Date_of_birth, Created_at) VALUES 
('Alice1', 'Female' , 'alice1@example.com' , '1996-06-14', DEFAULT),
('Alice2', 'Male' , 'alice2@example.com' , '1997-04-14', DEFAULT),
('Alice3', 'Female' , 'alice3@example.com' , '1998-05-14', DEFAULT),
('Alice4', 'Male' , 'alice4@example.com' , '1999-03-14', DEFAULT),
('Alice5', 'Male' , 'alice5@example.com' , '1990-02-14', DEFAULT);

-- Deleting a table or a database
-- DROP DATABASE student;
-- DROP TABLE records;

-- Renaming a Table
RENAME TABLE records TO stu_rec;
SELECT * FROM stu_rec;
RENAME TABLE stu_rec TO records;
SELECT * FROM records;

-- Altering a Table
 ALTER TABLE records ADD COLUMN is_active BOOLEAN DEFAULT TRUE;
 ALTER TABLE records DROP COLUMN is_active;
 ALTER TABLE records MODIFY COLUMN name VARCHAR(150);
 
 -- Moving a column
  ALTER TABLE records MODIFY COLUMN email VARCHAR(100) AFTER name;
  ALTER TABLE records MODIFY COLUMN email VARCHAR(100) FIRST;
  SELECT * FROM records;