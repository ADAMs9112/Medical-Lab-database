#################
# ADAM Muhammed #
#  211002023    #
#################
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