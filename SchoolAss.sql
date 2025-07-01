use school;

-- 1. CREATE STUDENT TABLE

CREATE TABLE Student (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Gender ENUM('Male', 'Female', 'Other'),
    DOB date,
    Class INT
    );
    
    -- INSERT VALUES
INSERT INTO Student (FirstName, LastName, Gender, DOB, Class)
VALUES
('Aarav', 'Chavan', 'Male', 1994-03-15, 9),
('Riya', 'Kumar', 'Female', 1998-05-24, 5),
('Sameer', 'Doe', 'Male', 1993-03-20, 10),
('Priya', 'Sharma', 'Female', 2000-07-03, 2),
('Aditya', 'Patil', 'Male', 1996-04-12, 7);


    -- 2. CREATE PARENT TABLE
    CREATE TABLE Parent(
    ParentID INT PRIMARY KEY auto_increment,
    StudentID INT,  -- define column before referencing
    Relation ENUM('Father','Mother'),
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
	Phone VARCHAR(100),
    Email VARCHAR(100),
    Occupation VARCHAR(100),
    Address TEXT,
     FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    ) ;
    
    -- 3. CREATE GRADE TABLE
    CREATE TABLE Grade (
    GradeID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,  -- define column before referencing
    ParentID INT,
    ClassName ENUM('First', 'Second', 'Third', 'Fourth', 'Fifth', 'Sixth', 'Seventh', 'Eight', 'Nineth', 'Tenth'),
    Grade VARCHAR(100),
	FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (ParentID) REFERENCES Parent(ParentID)
    );
    
    describe Student;
    ALTER TABLE Student MODIFY DOB DATE;
    
    DROP TABLE Grade;
    DROP TABLE Parent;
    DROP TABLE Student;
    
-- Create student table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Gender ENUM('Male', 'Female', 'Other'),
    DOB DATE,
    Class VARCHAR(50)
);    

-- Create Parent table
CREATE TABLE Parent (
    ParentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,          -- Defining Column before referring
    Relation ENUM('Father', 'Mother'),
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Phone VARCHAR(100),
    Email VARCHAR(100),
    Occupation VARCHAR(100),
    Address TEXT,
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID)
);

-- Create Grade table
CREATE TABLE Grade (
    GradeID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    ParentID INT,
    ClassName ENUM('First', 'Second', 'Third', 'Fourth', 'Fifth', 
                   'Sixth', 'Seventh', 'Eight', 'Nineth', 'Tenth'),
    Grade VARCHAR(10),
    FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    FOREIGN KEY (ParentID) REFERENCES Parent(ParentID)
);
    
    
    
    

