USE hospital_db1;

-- test data --
INSERT INTO doctors
(DoctorID, FirstName, LastName, Specialization, PhoneNumber, Email, Availability, DepartmentID) 
VALUES
(1, 'Alice', 'Green', 'Cardiologist', '123-456-7891', 'alice.green@example.com', 1, 1),
(2, 'Bob', 'Taylor', 'Neurologist', '123-456-7892', 'bob.taylor@example.com', 0, 2),
(3, 'Charlie', 'Miller', 'Orthopedic Surgeon', '123-456-7893', 'charlie.miller@example.com', 1, 3),
(4, 'Dana', 'Wilson', 'Pediatrician', '123-456-7894', 'dana.wilson@example.com', 0, 4),
(5, 'Eve', 'Johnson', 'Radiologist', '123-456-7895', 'eve.johnson@example.com', 1, 5);

SELECT * FROM doctors;

-- 15 more inserts below -- 
INSERT INTO doctors
(DoctorID, FirstName, LastName, Specialization, PhoneNumber, Email, Availability, DepartmentID) 
VALUES
(6, 'Frank', 'Smith', 'Dermatologist', '123-456-7896', 'frank.smith@example.com', 1, 1),
(7, 'Grace', 'Adams', 'Oncologist', '123-456-7897', 'grace.adams@example.com', 0, 2),
(8, 'Henry', 'Clark', 'Endocrinologist', '123-456-7898', 'henry.clark@example.com', 1, 3),
(9, 'Ivy', 'Lewis', 'Anesthesiologist', '123-456-7899', 'ivy.lewis@example.com', 0, 4),
(10, 'Jack', 'Walker', 'Gastroenterologist', '123-456-7800', 'jack.walker@example.com', 1, 5),
(11, 'Karen', 'Roberts', 'Nephrologist', '123-456-7801', 'karen.roberts@example.com', 1, 1),
(12, 'Liam', 'Hall', 'Pulmonologist', '123-456-7802', 'liam.hall@example.com', 0, 2),
(13, 'Mia', 'Turner', 'Ophthalmologist', '123-456-7803', 'mia.turner@example.com', 1, 3),
(14, 'Noah', 'Harris', 'Psychiatrist', '123-456-7804', 'noah.harris@example.com', 0, 4),
(15, 'Olivia', 'Carter', 'Urologist', '123-456-7805', 'olivia.carter@example.com', 1, 5),
(16, 'Paul', 'Mitchell', 'Rheumatologist', '123-456-7806', 'paul.mitchell@example.com', 1, 1),
(17, 'Quinn', 'Perez', 'Allergist', '123-456-7807', 'quinn.perez@example.com', 0, 2),
(18, 'Rachel', 'Edwards', 'Hematologist', '123-456-7808', 'rachel.edwards@example.com', 1, 3),
(19, 'Samuel', 'Collins', 'Infectious Disease Specialist', '123-456-7809', 'samuel.collins@example.com', 0, 4),
(20, 'Tina', 'Wright', 'General Surgeon', '123-456-7810', 'tina.wright@example.com', 1, 5),
(21, 'Victor', 'Bennett', 'Pathologist', '123-456-7811', 'victor.bennett@example.com', 1, 1),
(22, 'Wendy', 'Ross', 'Plastic Surgeon', '123-456-7812', 'wendy.ross@example.com', 0, 2),
(23, 'Xavier', 'Cook', 'Obstetrician', '123-456-7813', 'xavier.cook@example.com', 1, 3),
(24, 'Yara', 'Bell', 'Otolaryngologist', '123-456-7814', 'yara.bell@example.com', 0, 4),
(25, 'Zane', 'Jenkins', 'Critical Care Specialist', '123-456-7815', 'zane.jenkins@example.com', 1, 5);

