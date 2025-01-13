USE hospital_db1;

INSERT INTO rooms 
(RoomID, RoomNumber, RoomType, AvailabilityStatus, DepartmentID) 
VALUES
(1, '1001', 'ICU', '0', 1),
(2, '1002', 'General Ward', '1', 2),
(3, '1003', 'Private', '0', 3),
(4, '1004', 'Operation', '0', 4),
(5, '1005', 'Recovery', '0', 5);

SELECT * FROM rooms;

-- 20 more records --
INSERT INTO rooms 
(RoomID, RoomNumber, RoomType, AvailabilityStatus, DepartmentID) 
VALUES
(6, '1006', 'ICU', '1', 1),
(7, '1007', 'General Ward', '0', 2),
(8, '1008', 'Private', '1', 2),
(9, '1009', 'Operation', '1', 4),
(10, '1010', 'Recovery', '0', 5),
(11, '1011', 'ICU', '1', 1),
(12, '1012', 'General Ward', '0', 2),
(13, '1013', 'Private', '1', 3),
(14, '1014', 'Operation', '0', 2),
(15, '1015', 'Recovery', '1', 5),
(16, '1016', 'ICU', '1', 1),
(17, '1017', 'General Ward', '1', 2),
(18, '1018', 'Private', '0', 3),
(19, '1019', 'General Ward', '1', 4),
(20, '1020', 'Recovery', '0', 2),
(21, '1021', 'ICU', '0', 1),
(22, '1022', 'General Ward', '1', 2),
(23, '1023', 'Private', '1', 3),
(24, '1024', 'Private', '0', 1),
(25, '1025', 'Recovery', '1', 5);
