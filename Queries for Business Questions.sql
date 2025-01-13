USE hospitaldb;

SELECT * FROM appointments;
SELECT * FROM billings;
SELECT * FROM doctors;
SELECT * FROM departments;
SELECT * FROM staff;
SELECT * FROM patients;
SELECT * FROM prescriptions;
SELECT * FROM medicines;
SELECT * FROM medical_records;
SELECT * FROM rooms;
SELECT * FROM room_assignments;

-- 1. Average number of appointments per individual patient in the next 6 months --
SELECT AVG(appt_count) AS Average_Appointments
FROM (
	SELECT PatientID, COUNT(AppointmentID) AS appt_count
	FROM appointments
	WHERE AppointmentDate BETWEEN '2024-12-01' AND '2025-06-01'
	GROUP BY PatientID
) AS Patient_Appts;

-- 2. Which doctors have the highest patient load?
SELECT TOP (5) 
	d.DoctorID, 
	d.FirstName + ' ' + d.LastName AS Doctor_Name, 
	COUNT(a.PatientID) AS Patient_Load
FROM doctors d
LEFT JOIN appointments a ON d.DoctorID = a.DoctorID
GROUP BY d.DoctorID, d.FirstName + ' ' + d.LastName;

-- 3. What is the total revenue generated from the different departments over the last quarter?
SELECT 
	dept.DepartmentName AS Department,
	SUM(b.TotalAmount) AS Total_Revenue
FROM departments dept
LEFT JOIN appointments a ON dept.DepartmentID = a.DepartmentID
LEFT JOIN billings b ON a.PatientID = b.PatientID
WHERE PaymentDate BETWEEN '2024-10-01' AND '2024-12-31'
GROUP BY dept.DepartmentID, dept.DepartmentName
ORDER BY Total_Revenue DESC;

-- 4. Which are the top 5 most prescribed medicines?
SELECT TOP (5)
	m.MedicineName,
	COUNT(p.MedicineID) AS Prescribed_Count
FROM medicines m
LEFT JOIN prescriptions p ON m.MedicineID = p.MedicineID
GROUP BY m.MedicineID, m.MedicineName
ORDER BY Prescribed_Count DESC;

-- 5. What percentage of rooms were occupied in the last month?
SELECT 
	(((
		SELECT COUNT(AssignmentID) AS Occupied_Rooms
		FROM room_assignments
		WHERE AdmissionDate BETWEEN '2024-11-02' AND '2024-12-02'
	)*100) /25) AS Percentage_of_Occupied_Rooms;

-- 6. What is the average length of stay for patients in different rooms over the last 2 months?
SELECT
	r.RoomType,
	AVG(DATEDIFF(DAY, ra.AdmissionDate, ra.DischargeDate)) AS Avg_Length_Of_Stay_Days
FROM room_assignments ra
LEFT JOIN rooms r ON ra.RoomID = r.RoomID
WHERE AdmissionDate BETWEEN '2024-11-01' AND '2024-12-31'
GROUP BY r.RoomType
ORDER BY Avg_Length_Of_Stay_Days DESC;

-- 7. How many staff members (doctor and non doctor) are part of each department?
SELECT d.DepartmentID, d.DepartmentName, COUNT(Combined.DepartmentID) AS Total_Staff
FROM departments d 
LEFT JOIN (
	SELECT DepartmentID FROM doctors
	UNION ALL 
	SELECT DepartmentID FROM staff
) AS Combined
ON d.departmentID = Combined.DepartmentID
GROUP BY d.DepartmentID, d.DepartmentName
ORDER BY d.DepartmentID;

-- 8. What is the average age of patients visiting specific departments?
SELECT 
	d.DepartmentName,
	AVG(YEAR(GETDATE()) - YEAR(p.DateOfBirth)) AS Average_Age
FROM appointments a
LEFT JOIN patients p ON a.PatientID = p.PatientID
LEFT JOIN departments d ON a.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName
ORDER BY Average_Age;

-- 9. What is the gender distribution of patients visiting the hospital in the next 6 months?
SELECT p.Gender, COUNT(a.AppointmentID) AS Number_of_Appts 
FROM appointments a
LEFT JOIN patients p ON a.PatientID = p.PatientID
WHERE AppointmentDate BETWEEN '2024-12-01' AND '2025-06-01'
GROUP BY p.Gender;

-- 10. Who are the top 5 manufacturers by quantity that provide medicine stock to our hospital?
SELECT TOP (5) Manufacturer, SUM(StockQuantity) AS Total_Stock
FROM medicines
GROUP BY Manufacturer
ORDER BY Total_Stock DESC;

-- 11. What is the revenue distribution for each payment method for paid visits?
SELECT SUM(TotalAmount) AS Total_Revenue, PaymentMethod
FROM billings
WHERE PaymentStatus = 'Paid'
GROUP BY PaymentMethod
ORDER BY Total_Revenue DESC;


-- 12. What is the average cost of each doctor's appointments?
SELECT 
	d.DoctorID, 
	d.FirstName + ' ' + d.LastName AS Doctor_Name, 
	AVG(b.TotalAmount) AS Total_Amount
FROM doctors d
LEFT JOIN appointments a ON d.DoctorID = a.DoctorID
LEFT JOIN patients p ON a.PatientID = p.PatientID
LEFT JOIN billings b ON p.PatientID = b.PatientID
GROUP BY d.DoctorID, d.FirstName + ' ' + d.LastName
ORDER BY Total_Amount DESC;

-- 13. What is the average cost of a visit to the hospital in December 2024?
SELECT ROUND(AVG(TotalAmount), 2) AS Average_Cost_Per_Visit
FROM billings
WHERE PaymentDate BETWEEN '2024-12-01' AND '2024-12-31';

-- 14. How many appointments are scheduled for the first 3 months of 2025? How does it compare to Q2 of 2025?
SELECT (
	SELECT COUNT(*)
	FROM appointments
	WHERE AppointmentDate BETWEEN '2025-01-01' AND '2025-03-31' AND Status = 'Scheduled') AS Q1_2025_Appts,
	(
	SELECT COUNT(*)
	FROM appointments
	WHERE AppointmentDate BETWEEN '2025-04-01' AND '2025-06-30' AND Status = 'Scheduled') AS Q2_2025_Appts;

-- 15. What are the top 5 most common diagnoses amongst patients?
SELECT TOP 5 Diagnosis, COUNT(*) AS Occurrence
FROM medical_records
GROUP BY Diagnosis
ORDER BY Occurrence DESC;