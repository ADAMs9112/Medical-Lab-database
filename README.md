# Medical-Lab-database
A structured MySQL database designed for managing laboratory operations, patient records, test results, and component inventory. This project simulates a basic medical laboratory system, ideal for educational.

# Description
This relational database supports:
- Managing patient records and birth dates
- Tracking available medical components
- Storing medical test data with pricing
- Linking test results to specific patients and tests
- Assigning laboratorians to handle test processing

# Technologies Used
- **MySQL**
- **MySQL Workbench**

# Database Schema Overview
Main Tables:
- **Laboratorian**: Handles laboratorian records
- **Patient**: Stores patient details
- **Component**: Medical test components
- **Medical_Test**: Medical tests with prices and related components
- **Test_Result**: Test outcomes linked to patients and tests
Relational integrity is enforced using primary and foreign keys.

# How to Use
Example queries:
- **List all laboratorians**:
  ```sql
  SELECT * FROM Laboratorian;

- **Add new patient**:
  ```sql
  INSERT INTO Patient (FirstName, LastName, Phone_number, Address, BirthDate, Job)
  VALUES ('Sara', 'Omar', 0123456789, 'Cairo', '2000-05-10', 'Teacher');

- **Check components below minimum quantity**:
  ```sql
  SELECT * FROM Component WHERE AvailableQuantity < MinimumQuantity;

- **Join patients and their test results**:
  ```sql
  SELECT P.FirstName, P.LastName, T.TestName, R.Result, R.Date
  FROM Test_Result R
  JOIN Patient P ON P.PatientID = R.PatientID
  JOIN Medical_Test T ON T.TestID = R.TestID;

# Author
**Adam Muhammed**  
Nile University  
Course: Database Systems  
Instructor: Dr. Muhammed ELsayeh
Year: 2025
