USE hospitaldb;

-- User Access Control - Create 1 Admin and 5 Normal Users --
-- Create Logins --
CREATE LOGIN AdminUser1
WITH PASSWORD = 'adminuser1';

CREATE LOGIN NormalUser1
WITH PASSWORD = 'normaluser1';

CREATE LOGIN NormalUser2
WITH PASSWORD = 'normaluser2';

CREATE LOGIN NormalUser3
WITH PASSWORD = 'normaluser3';

CREATE LOGIN NormalUser4
WITH PASSWORD = 'normaluser4';

CREATE LOGIN NormalUser5
WITH PASSWORD = 'normaluser5';

-- Create Users --
CREATE USER AdminUser1 FOR LOGIN AdminUser1;
CREATE USER NormalUser1 FOR LOGIN NormalUser1;
CREATE USER NormalUser2 FOR LOGIN NormalUser2;
CREATE USER NormalUser3 FOR LOGIN NormalUser3;
CREATE USER NormalUser4 FOR LOGIN NormalUser4;
CREATE USER NormalUser5 FOR LOGIN NormalUser5;

-- Create Roles --
CREATE ROLE AdminRole1;
CREATE ROLE NormalRole1;

-- Grant Permissions to Roles --
USE hospitaldb;
GRANT SELECT, INSERT, UPDATE, DELETE TO AdminRole1;
GRANT SELECT ON dbo.patients TO NormalRole1;
GRANT SELECT ON dbo.departments TO NormalRole1;
GRANT SELECT ON dbo.doctors TO NormalRole1;
GRANT SELECT ON dbo.billings TO NormalRole1;
GRANT SELECT ON dbo.appointments TO NormalRole1;
GRANT SELECT ON dbo.rooms TO NormalRole1;
GRANT SELECT ON dbo.room_assignments TO NormalRole1;
GRANT SELECT ON dbo.staff TO NormalRole1;
GRANT SELECT ON dbo.prescriptions TO NormalRole1;
GRANT SELECT ON dbo.medicines TO NormalRole1;
GRANT SELECT ON dbo.medical_records TO NormalRole1;

-- Assign Users to Roles --
ALTER ROLE AdminRole1 ADD MEMBER AdminUser1;
ALTER ROLE NormalRole1 ADD MEMBER NormalUser1;
ALTER ROLE NormalRole1 ADD MEMBER NormalUser2;
ALTER ROLE NormalRole1 ADD MEMBER NormalUser3;
ALTER ROLE NormalRole1 ADD MEMBER NormalUser4;
ALTER ROLE NormalRole1 ADD MEMBER NormalUser5;

-- Test User Permissions --
USE hospitaldb;

SELECT * FROM Patients;

INSERT INTO patients 
(PatientID, FirstName, LastName, DateOfBirth, Gender, Address, PhoneNumber, Email, EmergencyContactName, EmergencyContactPhone) 
VALUES
(101, 'Warner', 'Jaworski', '2001-02-15', 'Male', '123 Elm Street, Springfield', '613-456-7890', 'warn.doe@example.com', 'Scott Doe', '321-654-0987');

DELETE FROM patients
WHERE PatientID = 101;

-- Revoke Permissions --
REVOKE SELECT, INSERT, UPDATE, DELETE FROM NormalRole1;