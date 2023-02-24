CREATE TABLE tblEmployees
(
EmployeeNumber INT NOT NULL,
EmployeeFirstName VARCHAR(50) NOT NULL,
EmployeeMiddleName VARCHAR(50) NULL,
EmployeeLastName VARCHAR(50) NOT NULL,
EmployeeGovernmentID CHAR(10) NULL,
DateOfBirth DATE NOT NULL
);

ALTER TABLE tblEmployees
ADD Department VARCHAR(50);

SELECT * 
FROM tblEmployees;

INSERT INTO tblEmployees
VALUES( 132, 'Lucky', 'L', 'Molefe', 'A4038265', '19950524', 'LSHC');

INSERT INTO tblEmployees
VALUES( 133, 'Innocent', 'I','Molefe', 'A4038266', '19901112', 'CORE');

DROP TABLE tblEmployees;

CREATE TABLE tblTransaction
(
Amount SMALLMONEY NOT NULL,
DateOfTransaction SMALLDATETIME NULL,
EmployeeNumber INT NOT NULL
);

INSERT INTO tblTransaction VALUES
(239.55, '20141224', 766);

SELECT *
FROM tblTransaction;

USE [70-451];

INSERT INTO tblTransaction VALUES
(-964,05, '20150526', 658), 
(-105,23, '20150914', 987), 
(-506,8, '20150505', 695);

SELECT Department 
FROM tblEmployees;

SELECT Department, 
COUNT(*) AS NumberOfDepartment
FROM tblEmployees
GROUP BY Department;

--Derived Table

SELECT DISTINCT Department, '' AS DepartmentHead
INTO tblDepartment
FROM tblEmployees;

--New tblDepartment Created in a different method


--CREATING JOINS

SELECT te.EmployeeNumber, te.EmployeeFirstName, te.EmployeeLastName, td.Department, ts.Amount
FROM tblEmployees te 
JOIN
tblDepartment td ON te.Department = td.Department
JOIN tblTransaction ts ON te.EmployeeNumber = ts.EmployeeNumber;

--VARIABLES

DECLARE @myvar as numeric(7,2) -- or decimal(7,2) - 5 bytes needed

-- 12345.67 is valid for the above.
-- 123456.7 is not valid 

SET @myvar = 12345.67

SELECT @myvar AS myVariable

GO

DECLARE @myvar as numeric(18,8) -- or decimal(18,8) - 9 bytes needed

SET @myvar = 1000000000.12345678

SELECT @myvar AS myVariable -- gives 12346

-- 1,000,000,000.12345678 is numeric(18,8)

GO

DECLARE @myvar AS smallmoney = 123456.78917

select @myvar as myVariable -- gives 123456.7892

GO

DECLARE @myvar AS float(24) = 123456.7891 -- precise to 7 digits. -- same as REAL

Select @myvar as myVariable -- this gives 123456.8




