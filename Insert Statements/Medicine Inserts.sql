USE hospital_db1;

-- test data -- 
INSERT INTO medicines 
(MedicineID, MedicineName, Manufacturer, StockQuantity, Price) 
VALUES
(1, 'Aspirin', 'PharmaCorp', '200', '10.50'),
(2, 'Ibuprofen', 'MediLife', '150', '12.75'),
(3, 'Paracetamol', 'HealthPlus', '300', '8.30'),
(4, 'Amoxicillin', 'WellCare', '500', '15.20'),
(5, 'Ciprofloxacin', 'MediTech', '120', '18.50');

SELECT * FROM medicines;

-- 45 more inserts --
INSERT INTO medicines 
(MedicineID, MedicineName, Manufacturer, StockQuantity, Price) 
VALUES
(6, 'Metformin', 'GlucoseCare', '250', '14.80'),
(7, 'Atorvastatin', 'CardioWell', '180', '20.50'),
(8, 'Lisinopril', 'AcePharma', '220', '18.00'),
(9, 'Azithromycin', 'Antibiotix', '300', '25.75'),
(10, 'Losartan', 'HeartHealth', '190', '16.40'),
(11, 'Salbutamol', 'BreathEaze', '400', '9.60'),
(12, 'Omeprazole', 'DigestiveCare', '350', '11.20'),
(13, 'Levothyroxine', 'ThyroidBalance', '280', '7.90'),
(14, 'Hydrochlorothiazide', 'Diurex', '240', '12.30'),
(15, 'Clopidogrel', 'AnticoagMed', '200', '23.10'),
(16, 'Simvastatin', 'CholesterolAid', '170', '19.40'),
(17, 'Albuterol', 'RespiraMed', '150', '8.50'),
(18, 'Citalopram', 'MoodRx', '130', '15.70'),
(19, 'Gabapentin', 'NeuroCare', '210', '24.80'),
(20, 'Montelukast', 'AllergyShield', '180', '10.90'),
(21, 'Fluoxetine', 'HappyMind', '220', '13.50'),
(22, 'Warfarin', 'BloodThinnerPro', '120', '21.60'),
(23, 'Prednisone', 'SteroidSolutions', '300', '9.10'),
(24, 'Furosemide', 'FluidControl', '270', '14.30'),
(25, 'Cetirizine', 'AllergyRelief', '310', '6.80'),
(26, 'Amlodipine', 'CardioWell', '250', '12.50'),
(27, 'Doxycycline', 'Antibiotix', '300', '22.75'),
(28, 'Esomeprazole', 'DigestiveCare', '350', '14.80'),
(29, 'Sertraline', 'HappyMind', '200', '16.90'),
(30, 'Bupropion', 'MoodRx', '180', '18.40'),
(31, 'Meloxicam', 'PainReliefPharma', '220', '9.70'),
(32, 'Allopurinol', 'GoutGuard', '190', '11.20'),
(33, 'Spironolactone', 'FluidControl', '170', '15.60'),
(34, 'Erythromycin', 'Antibiotix', '120', '24.50'),
(35, 'Ranitidine', 'DigestiveCare', '140', '8.90'),
(36, 'Metoprolol', 'HeartHealth', '280', '17.80'),
(37, 'Propranolol', 'CardioWell', '200', '15.50'),
(38, 'Lorazepam', 'CalmMinds', '150', '19.10'),
(39, 'Diazepam', 'CalmMinds', '160', '20.30'),
(40, 'Tamsulosin', 'UroCare', '300', '13.40'),
(41, 'Finasteride', 'HairWellness', '220', '14.60'),
(42, 'Carvedilol', 'HeartHealth', '180', '18.20'),
(43, 'Atenolol', 'CardioWell', '270', '12.90'),
(44, 'Pantoprazole', 'DigestiveCare', '350', '10.30'),
(45, 'Risperidone', 'MentalHealthRx', '200', '21.10'),
(46, 'Olanzapine', 'MentalHealthRx', '130', '23.90'),
(47, 'Clozapine', 'MentalHealthRx', '120', '26.50'),
(48, 'Lithium Carbonate', 'MoodRx', '180', '28.30'),
(49, 'Quetiapine', 'HappyMind', '150', '20.70'),
(50, 'Aripiprazole', 'MentalHealthRx', '140', '25.40');
