CREATE DATABASE medical_lab;
USE medical_lab;
CREATE TABLE Laboratorian (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Phone_number INT,
    Address VARCHAR(50)
);
CREATE TABLE Patient (
    PatientID INT AUTO_INCREMENT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
	Phone_number INT,
    Address VARCHAR(50),
    BirthDate DATE,
    Job VARCHAR(100)
);
CREATE TABLE Component (
    ComponentID INT AUTO_INCREMENT PRIMARY KEY,
    ComponentName VARCHAR(50),
    AvailableQuantity INT,
    MinimumQuantity INT
);
CREATE TABLE Medical_Test (
    TestID INT AUTO_INCREMENT PRIMARY KEY,
    TestName VARCHAR(100),
    Price DECIMAL(10, 2),
    Related_ComponentID INT,
    FOREIGN KEY (Related_ComponentID) REFERENCES Component(ComponentID)
);
CREATE TABLE Test_Result (
    TestID INT,
    Date DATE,
    PatientID INT,
    LaboratorianID INT,
    Result VARCHAR(255),
    FOREIGN KEY (TestID) REFERENCES Medical_Test(TestID),
    FOREIGN KEY (PatientID) REFERENCES Patient(PatientID),
    FOREIGN KEY (LaboratorianID) REFERENCES Laboratorian(ID)
);
INSERT INTO Laboratorian (ID, Firstname, Lastname, phone_number, address)
VALUES
(250001, 'Ahmed', 'Hassan', '01012345678', '15 Tahrir Street, Cairo'),
(250002, 'Mona', 'Ibrahim', '01087654321', '22 Abbas El Akkad, Nasr City'),
(250003, 'Youssef', 'Ali', '01123456789', '8 Mostafa El-Nahhas, Nasr City'),
(250004, 'Noura', 'Saad', '01234567890', '31 El Merghany Street, Heliopolis'),
(250005, 'Karim', 'Farid', '01098765432', '42 Al Haram Street, Giza'),
(250006, 'Laila', 'Fathy', '01199887766', '5 Zamalek Street, Zamalek'),
(250007, 'Omar', 'Adel', '01222334455', '60 El Obour Buildings, Nasr City'),
(250008, 'Dina', 'Magdy', '01011223344', '73 Salah Salem Road, Cairo'),
(250009, 'Hany', 'Nabil', '01155667788', '28 Makram Ebeid Street, Nasr City'),
(250010, 'Rana', 'Khaled', '01266778899', '19 El Nozha Street, Heliopolis'),
(250011, 'Tamer', 'Yehia', '01099887766', '35 Al Ahram Gardens, Giza'),
(250012, 'Heba', 'Samir', '01144556677', '12 El Sheikh Zayed Street, 6th of October'),
(250013, 'Mahmoud', 'Tarek', '01233445566', '21 Dokki Street, Giza'),
(250014, 'Salma', 'Essam', '01022334455', '89 Gameat El-Dewal, Mohandessin'),
(250015, 'Mostafa', 'Amr', '01177889900', '17 Talaat Harb Street, Downtown Cairo'),
(250016, 'Reem', 'Nasser', '01299887766', '55 Al Rehab City, New Cairo'),
(250017, 'Sherif', 'Amin', '01033445566', '88 Fifth Settlement, New Cairo'),
(250018, 'Nadine', 'Hossam', '01122334455', '66 El Batal Ahmed Abdel Aziz, Mohandessin'),
(250019, 'Walid', 'Ehab', '01255667788', '3 Al Obour Market Road, Nasr City'),
(250020, 'Yasmin', 'Lotfy', '01066778899', '101 Al Mokattam Street, Mokattam');


INSERT INTO Patient (PatientID, Firstname, Lastname, phone_number, address, BirthDate, Job) 
VALUES
(12520, 'Mohamed', 'Gamal', '01012345678', '5 Tahrir Street, Cairo', '1985-03-15', 'Engineer'),
(12521, 'Sara', 'Hassan', '01123456789', '12 El Obour Buildings, Nasr City', '1992-07-21', 'Pharmacist'),
(12522, 'Omar', 'Ali', '01234567890', '88 Al Haram Street, Giza', '1980-11-30', 'Teacher'),
(12523, 'Lamia', 'Tarek', '01087654321', '33 El Merghany Street, Heliopolis', '1995-06-10', 'Accountant'),
(12524, 'Mostafa', 'Yehia', '01199887766', '21 El Nozha Street, Heliopolis', '1987-12-05', 'Graphic Designer'),
(12525, 'Yasmin', 'Khaled', '01033445566', '17 Talaat Harb Street, Downtown', '1993-09-18', 'HR Specialist'),
(12526, 'Hany', 'Adel', '01222334455', '66 Gameat El-Dewal, Mohandessin', '1978-01-25', 'Dentist'),
(12527, 'Nour', 'Magdy', '01055667788', '14 Zamalek Street, Cairo', '1990-08-12', 'Marketing Manager'),
(12528, 'Ehab', 'Mahmoud', '01144556677', '101 Salah Salem Road, Nasr City', '1982-04-09', 'Banker'),
(12529, 'Reem', 'Fathy', '01266778899', '25 Al Rehab City, New Cairo', '1996-02-14', 'Journalist'),
(12530, 'Ahmed', 'Tamer', '01011223344', '39 El Sheikh Zayed, 6th of October', '1984-10-03', 'Pilot'),
(12531, 'Laila', 'Samir', '01177889900', '51 Dokki Street, Giza', '1991-03-22', 'Researcher'),
(12532, 'Tamer', 'Mostafa', '01233445566', '60 Fifth Settlement, New Cairo', '1989-05-27', 'Architect'),
(12533, 'Rania', 'Essam', '01099887766', '11 Makram Ebeid Street, Nasr City', '1994-07-08', 'Lawyer'),
(12534, 'Mahmoud', 'Hossam', '01122334455', '2 Al Ahram Gardens, Giza', '1977-06-11', 'Judge'),
(12535, 'Nadine', 'Ahmed', '01299887766', '70 Al Mokattam Street, Mokattam', '1998-11-29', 'Data Analyst'),
(12536, 'Karim', 'Nabil', '01066778899', '45 El Nozha Road, Heliopolis', '1986-08-01', 'Paramedic'),
(12537, 'Salma', 'Ibrahim', '01155667788', '10 Badr City, Cairo', '1999-01-12', 'University Student'),
(12538, 'Walid', 'Saad', '01244556677', '13 Maadi Corniche, Cairo', '1981-09-04', 'Civil Engineer'),
(12539, 'Dina', 'Amr', '01077889900', '28 Zayed Central, 6th of October', '1997-10-19', 'Social Worker');

INSERT INTO Component (ComponentID, ComponentName, AvailableQuantity, MinimumQuantity)
VALUES
(101, 'Blood Test Kit', 10, 20),
(102, 'Urine Test Kit', 15, 30),
(103, 'X-ray Film', 200, 50),
(104, 'Culture Plates', 300, 100),
(105, 'Glucose Test Strips', 5, 50),
(106, 'Rapid COVID-19 Test', 80, 20),
(107, 'Malaria Diagnostic Kit', 60, 15),
(108, 'Pregnancy Test Kit', 120, 25),
(109, 'Liver Function Test Reagents', 90, 20),
(110, 'Complete Blood Count Reagents', 110, 30),
(111, 'Kidney Function Test Reagents', 85, 20),
(112, 'Cholesterol Test Strips', 140, 30),
(113, 'Hemoglobin Test Reagents', 95, 25),
(114, 'TSH Test Kit', 75, 15),
(115, 'CRP Test Reagents', 70, 15),
(116, 'ESR Test Tubes', 130, 40),
(117, 'HCV Test Kit', 65, 15),
(118, 'HBsAg Test Kit', 68, 15),
(119, 'HIV Rapid Test Kit', 55, 10),
(120, 'Blood Grouping Reagents', 115, 25);

INSERT INTO Medical_Test (TestID, TestName, Price, Related_ComponentID)
VALUES
(1001, 'Complete Blood Count (CBC)', 450.00, 110),
(1002, 'Urinalysis', 420.00, 102),
(1003, 'X-ray Imaging', 600.00, 103),
(1004, 'Bacterial Culture', 480.00, 104),
(1005, 'Rapid COVID-19 Detection', 550.00, 106),
(1006, 'Blood Glucose Test', 430.00, 105),
(1007, 'Malaria Detection Test', 460.00, 107),
(1008, 'Pregnancy Test', 400.00, 108),
(1009, 'Liver Function Test', 490.00, 109),
(1010, 'Kidney Function Panel', 520.00, 111),
(1011, 'Cholesterol Level Test', 440.00, 112),
(1012, 'Hemoglobin Level Check', 425.00, 113),
(1013, 'Thyroid (TSH) Test', 475.00, 114),
(1014, 'C-Reactive Protein (CRP) Test', 470.00, 115),
(1015, 'ESR Test', 410.00, 116),
(1016, 'HCV Antibody Test', 495.00, 117),
(1017, 'Hepatitis B Surface Antigen Test', 490.00, 118),
(1018, 'HIV Rapid Test', 520.00, 119),
(1019, 'Blood Typing Test', 455.00, 120),
(1020, 'Basic Metabolic Panel', 530.00, 105);

INSERT INTO Test_Result (TestID, Date, PatientID, LaboratorianID, Result)
VALUES
(1001, '2024-01-02', 12520, 250005, 'Positive'),
(1001, '2024-03-15', 12521, 250006, 'Negative'),
(1001, '2024-05-10', 12522, 250002, 'Positive'),
(1001, '2024-07-08', 12523, 250004, 'Negative'),
(1001, '2024-09-25', 12524, 250001, 'Positive'),
(1002, '2023-01-06', 12521, 250001, 'Negative'),
(1003, '2023-01-11', 12522, 250010, 'Positive'),
(1004, '2023-01-18', 12523, 250004, 'Negative'),
(1005, '2023-01-23', 12524, 250006, 'Positive'),
(1006, '2023-01-29', 12525, 250002, 'Negative'),
(1007, '2023-02-03', 12526, 250009, 'Positive'),
(1008, '2023-02-08', 12527, 250007, 'Negative'),
(1009, '2023-02-14', 12527, 250008, 'Positive'),
(1010, '2023-02-20', 12527, 250003, 'Negative'),
(1011, '2023-02-27', 12527, 250001, 'Positive'),
(1012, '2023-03-04', 12527, 250002, 'Negative'),
(1013, '2023-03-11', 12527, 250003, 'Positive'),
(1014, '2023-03-17', 12533, 250004, 'Negative'),
(1015, '2023-03-23', 12534, 250005, 'Positive'),
(1016, '2023-03-30', 12535, 250006, 'Negative'),
(1017, '2023-04-05', 12536, 250007, 'Positive');


CREATE VIEW CBC_test AS
SELECT Patient.FirstName, Patient.LastName
FROM Patient
INNER JOIN Test_Result ON Patient.PatientID = Test_Result.PatientID
WHERE Test_Result.TestID = 1001
AND YEAR(Test_Result.Date) = 2024;
select * from CBC_Test;

Create View Low_components AS
SELECT ComponentName 
FROM Component
WHERE MinimumQuantity > AvailableQuantity;
select * from Low_components;

drop View Price ;
Create View Price AS
Select SUM(Price), PatientID
FROM Medical_Test
inner join Test_Result
on Test_Result.TestID = Medical_Test.TestID 
Where PatientID = 12527
AND Date >= 2022;
select * from Price;


