USE hospital_db1;

INSERT INTO staff 
(StaffID, FirstName, LastName, Role, PhoneNumber, Email, ShiftHours, DepartmentID) 
VALUES
(1, 'Emily', 'Clark', 'Nurse', '123-456-7896', 'emily.clark@example.com', '12', 1),
(2, 'Daniel', 'Adams', 'Technician', '123-456-7897', 'daniel.adams@example.com', '8', 2),
(3, 'Sophia', 'Hill', 'Administrative Assistant', '123-456-7898', 'sophia.hill@example.com', '8', 3),
(4, 'Oliver', 'Scott', 'Custodian', '123-456-7899', 'oliver.scott@example.com', '12', 4),
(5, 'Mia', 'Harris', 'Lab Technician', '123-456-7800', 'mia.harris@example.com', '12', 5);

SELECT * FROM staff;

-- 45 more records --
INSERT INTO staff
(StaffID, FirstName, LastName, Role, PhoneNumber, Email, ShiftHours, DepartmentID) 
VALUES
(6, 'Liam', 'Bennett', 'Nurse', '123-456-7801', 'liam.bennett@example.com', '12', 1),
(7, 'Amelia', 'Morgan', 'Technician', '123-456-7802', 'amelia.morgan@example.com', '8', 2),
(8, 'James', 'Parker', 'Lab Technician', '123-456-7803', 'james.parker@example.com', '12', 5),
(9, 'Ella', 'Cooper', 'Nurse', '123-456-7804', 'ella.cooper@example.com', '12', 1),
(10, 'William', 'Rogers', 'Custodian', '123-456-7805', 'william.rogers@example.com', '8', 4),
(11, 'Charlotte', 'Evans', 'Administrative Assistant', '123-456-7806', 'charlotte.evans@example.com', '8', 3),
(12, 'Henry', 'Mitchell', 'Technician', '123-456-7807', 'henry.mitchell@example.com', '8', 2),
(13, 'Grace', 'Turner', 'Lab Technician', '123-456-7808', 'grace.turner@example.com', '12', 5),
(14, 'Lucas', 'Phillips', 'Nurse', '123-456-7809', 'lucas.phillips@example.com', '12', 1),
(15, 'Isabella', 'Campbell', 'Custodian', '123-456-7810', 'isabella.campbell@example.com', '8', 4),
(16, 'Alexander', 'Reed', 'Technician', '123-456-7811', 'alexander.reed@example.com', '8', 2),
(17, 'Ava', 'Ward', 'Nurse', '123-456-7812', 'ava.ward@example.com', '12', 1),
(18, 'Benjamin', 'Peterson', 'Administrative Assistant', '123-456-7813', 'benjamin.peterson@example.com', '8', 3),
(19, 'Lily', 'Murphy', 'Lab Technician', '123-456-7814', 'lily.murphy@example.com', '12', 5),
(20, 'Sebastian', 'Bailey', 'Technician', '123-456-7815', 'sebastian.bailey@example.com', '8', 2),
(21, 'Hannah', 'Bell', 'Nurse', '123-456-7816', 'hannah.bell@example.com', '12', 1),
(22, 'Ethan', 'Ross', 'Custodian', '123-456-7817', 'ethan.ross@example.com', '8', 4),
(23, 'Sophia', 'Foster', 'Administrative Assistant', '123-456-7818', 'sophia.foster@example.com', '8', 3),
(24, 'Jack', 'Griffin', 'Lab Technician', '123-456-7819', 'jack.griffin@example.com', '12', 5),
(25, 'Emily', 'Howard', 'Technician', '123-456-7820', 'emily.howard@example.com', '8', 2),
(26, 'Aiden', 'Nelson', 'Nurse', '123-456-7821', 'aiden.nelson@example.com', '12', 1),
(27, 'Evelyn', 'Carter', 'Technician', '123-456-7822', 'evelyn.carter@example.com', '8', 2),
(28, 'Jack', 'King', 'Lab Technician', '123-456-7823', 'jack.king@example.com', '12', 5),
(29, 'Harper', 'Adams', 'Nurse', '123-456-7824', 'harper.adams@example.com', '12', 1),
(30, 'Mason', 'Baker', 'Custodian', '123-456-7825', 'mason.baker@example.com', '8', 4),
(31, 'Charlotte', 'Barnes', 'Administrative Assistant', '123-456-7826', 'charlotte.barnes@example.com', '8', 3),
(32, 'Henry', 'Collins', 'Technician', '123-456-7827', 'henry.collins@example.com', '8', 2),
(33, 'Grace', 'Scott', 'Lab Technician', '123-456-7828', 'grace.scott@example.com', '12', 5),
(34, 'Logan', 'Rivera', 'Nurse', '123-456-7829', 'logan.rivera@example.com', '12', 1),
(35, 'Lucas', 'Murphy', 'Custodian', '123-456-7830', 'lucas.murphy@example.com', '8', 4),
(36, 'Lily', 'Hernandez', 'Technician', '123-456-7831', 'lily.hernandez@example.com', '8', 2),
(37, 'Zoe', 'Walker', 'Nurse', '123-456-7832', 'zoe.walker@example.com', '12', 1),
(38, 'Owen', 'Adams', 'Administrative Assistant', '123-456-7833', 'owen.adams@example.com', '8', 3),
(39, 'Amelia', 'Perry', 'Lab Technician', '123-456-7834', 'amelia.perry@example.com', '12', 5),
(40, 'Sebastian', 'Kim', 'Technician', '123-456-7835', 'sebastian.kim@example.com', '8', 2),
(41, 'Isabella', 'Edwards', 'Nurse', '123-456-7836', 'isabella.edwards@example.com', '12', 1),
(42, 'Noah', 'Turner', 'Custodian', '123-456-7837', 'noah.turner@example.com', '8', 4),
(43, 'Sophia', 'Torres', 'Administrative Assistant', '123-456-7838', 'sophia.torres@example.com', '8', 3),
(44, 'Matthew', 'Gonzalez', 'Lab Technician', '123-456-7839', 'matthew.gonzalez@example.com', '12', 5),
(45, 'Elijah', 'Sanchez', 'Technician', '123-456-7840', 'elijah.sanchez@example.com', '8', 2),
(46, 'Charlotte', 'Bishop', 'Nurse', '123-456-7841', 'charlotte.bishop@example.com', '12', 1),
(47, 'Daniel', 'Collins', 'Custodian', '123-456-7842', 'daniel.collins@example.com', '8', 4),
(48, 'Mia', 'Morris', 'Administrative Assistant', '123-456-7843', 'mia.morris@example.com', '8', 3),
(49, 'Levi', 'Martinez', 'Lab Technician', '123-456-7844', 'levi.martinez@example.com', '12', 5),
(50, 'Benjamin', 'Graham', 'Technician', '123-456-7845', 'benjamin.graham@example.com', '8', 2);
