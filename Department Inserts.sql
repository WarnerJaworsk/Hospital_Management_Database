USE hospital_db1;

-- test data --
INSERT INTO departments 
(DepartmentID, DepartmentName, Location, PhoneExtension) 
VALUES
(1, 'Cardiology', 'Building A', '101'),
(2, 'Neurology', 'Building B', '102'),
(3, 'Orthopedics', 'Building C', '103'),
(4, 'Pediatrics', 'Building D', '104'),
(5, 'Radiology', 'Building F', '105');

-- no more remaining rows, 5 rows is sufficient -- 

SELECT * FROM DEPARTMENTS;