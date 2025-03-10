﻿CREATE DATABASE hospital_db1;

USE hospital_db1;

-- create patients table
CREATE TABLE patients (
	PatientID INT PRIMARY KEY NOT NULL,
	FirstName VARCHAR(150) NOT NULL,
	LastName VARCHAR(150) NOT NULL,
	DateOfBirth DATE NOT NULL,
	Gender VARCHAR(150) NULL,
	Address VARCHAR(250) NOT NULL,
	PhoneNumber VARCHAR(15) NOT NULL,
	Email VARCHAR(150) NOT NULL,
	EmergencyContactName VARCHAR(300) NULL,
	EmergencyContactPhone VARCHAR(15) NULL
);

-- create departments table
CREATE TABLE departments (
	DepartmentID INT PRIMARY KEY NOT NULL,
	DepartmentName VARCHAR(50) NOT NULL,
	Location VARCHAR(100) NULL,
	PhoneExtension VARCHAR(4) NULL
);

-- create doctors table
CREATE TABLE doctors (
	DoctorID INT PRIMARY KEY NOT NULL,
	FirstName VARCHAR(150) NOT NULL,
	LastName VARCHAR(150) NOT NULL,
	Specialization VARCHAR(50) NOT NULL,
	PhoneNumber VARCHAR(15) NOT NULL,
	Email VARCHAR(150) NOT NULL,
	DepartmentID INT NULL,
	Availability BIT NULL,
	FOREIGN KEY (DepartmentID) REFERENCES departments(DepartmentID)
);

-- create appointments table
CREATE TABLE appointments (
	AppointmentID INT PRIMARY KEY NOT NULL,
	PatientID INT NOT NULL,
	DoctorID INT NULL,
	DepartmentID INT NULL,
	AppointmentDate DATE NOT NULL,
	AppointmentTime TIME(7) NOT NULL,
	Status VARCHAR(150) NULL,
	FOREIGN KEY (PatientID) REFERENCES patients(PatientID),
	FOREIGN KEY (DoctorID) REFERENCES doctors(DoctorID),
	FOREIGN KEY (DepartmentID) REFERENCES departments(DepartmentID)
);

-- create billings table
CREATE TABLE billings (
	BillingID INT PRIMARY KEY NOT NULL,
	PatientID INT NULL,
	TotalAmount DECIMAL(10, 2) NULL,
	PaymentStatus VARCHAR(150) NULL,
	PaymentDate DATE NULL,
	PaymentMethod VARCHAR(150) NULL,
	FOREIGN KEY (PatientID) REFERENCES patients(PatientID)
);


-- create medical_records table
CREATE TABLE medical_records (
	RecordID INT PRIMARY KEY NOT NULL,
	PatientID INT NULL,
	DoctorID INT NULL,
	VisitDate DATE NOT NULL,
	Diagnosis VARCHAR(300) NULL,
	TreatmentPlan VARCHAR(300) NULL,
	Prescription VARCHAR(300) NULL,
	FOREIGN KEY (PatientID) REFERENCES patients(PatientID),
	FOREIGN KEY (DoctorID) REFERENCES doctors(DoctorID)
);

-- create medicines table
CREATE TABLE medicines (
	MedicineID INT PRIMARY KEY NOT NULL,
	MedicineName VARCHAR(150) NOT NULL,
	Manufacturer VARCHAR(100) NULL,
	StockQuantity INT NULL,
	Price DECIMAL(10, 2) NULL
);


-- create prescriptions table
CREATE TABLE prescriptions (
	PrescriptionID INT PRIMARY KEY NOT NULL,
	RecordID INT NULL,
	MedicineID INT NULL,
	Dosage VARCHAR(100) NULL,
	Frequency VARCHAR(100) NULL,
	Duration VARCHAR(50) NULL,
	FOREIGN KEY (RecordID) REFERENCES medical_records(RecordID),
	FOREIGN KEY (MedicineID) REFERENCES medicines(MedicineID)
);

-- create rooms table
CREATE TABLE rooms (
	RoomID INT PRIMARY KEY NOT NULL,
	RoomNumber VARCHAR(10) NOT NULL,
	DepartmentID INT NULL,
	RoomType VARCHAR(150) NULL,
	AvailabilityStatus BIT NULL,
	FOREIGN KEY (DepartmentID) REFERENCES departments(DepartmentID)
);

-- create room_assignments table
CREATE TABLE room_assignments (
	AssignmentID INT PRIMARY KEY NOT NULL,
	RoomID INT NULL,
	PatientID INT NULL,
	AdmissionDate DATE NULL,
	DischargeDate DATE NULL,
	FOREIGN KEY (RoomID) REFERENCES rooms(RoomID)
);


-- create staff table
CREATE TABLE staff(
	StaffID INT PRIMARY KEY NOT NULL,
	FirstName VARCHAR(150) NOT NULL,
	LastName VARCHAR(150) NOT NULL,
	Role VARCHAR(50) NULL,
	DepartmentID INT NULL,
	PhoneNumber VARCHAR(15) NOT NULL,
	Email VARCHAR(150) NOT NULL,
	ShiftHours INT NULL,
	FOREIGN KEY (DepartmentID) REFERENCES departments(DepartmentID)
);

