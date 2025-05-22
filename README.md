# Medical Lab Database Project

A structured MySQL database designed to manage laboratory operations, patient records, medical test results, and component inventory. This project simulates the operations of a basic medical laboratory, making it ideal for educational use and small-scale clinical environments.

---

##  Project Overview

This relational database system supports:
- Managing patient records and birth dates
- Tracking available medical test components and their stock levels
- Storing medical test types, prices, and assigned components
- Logging test results for individual patients
- Assigning laboratorians to handle test processing

---

##  Technologies Used

- **MySQL**
- **MySQL Workbench**
- **https://erdplus.com/**

---

##  Repository Structure

```
medical_lab_project/
├── Medical_Lab_Database_README.md  # Project documentation
├── SQL statement.sql               # All SQL code (DDL, DML, test data)
├── schema.png                      # Conceptual ER diagram (Chen-style)
├── relational.png                  # Relational schema diagram
```

---

##  Database Schema Overview

Main Tables:
- **Laboratorian** – records staff responsible for handling test results  
- **Patient** – stores patient demographics and background  
- **Component** – includes medical components with quantity tracking  
- **Medical_Test** – defines test types, pricing, and associated component  
- **Test_Result** – links patients to the tests they received, including date, laboratorian, and result  

Relational integrity is enforced using **primary** and **foreign keys**, ensuring consistency across relationships.

---

##  Design Rationale

The schema was designed using **conceptual modeling (ERD)** and translated into a fully normalized **relational model**. Key decisions included:

- Using a **separate Test_Result table** to represent many-to-many relationships between patients and medical tests, while also tracking dates and outcomes.
- Establishing **foreign key constraints** for referential integrity between entities (e.g., Patient → Test_Result).
- Adding **views** for simplified reporting such as CBC test history and low-stock components.
- Providing scalability for future enhancements like triggers, user authentication, or web integration.

---

##  How to Run and Load the Database

1. Open **MySQL Workbench** 
2. Run the following command to load the database:
```sql
SOURCE path/to/SQL\ statement.sql;
```
3. Start exploring:
```sql
USE medical_lab;
SHOW TABLES;
SELECT * FROM Patient;
```

---

## 💡 Example Queries

- **List all laboratorians**:
```sql
SELECT * FROM Laboratorian;
```

- **Add a new patient**:
```sql
INSERT INTO Patient (FirstName, LastName, Phone_number, Address, BirthDate, Job)
VALUES ('Sara', 'Omar', 0123456789, 'Cairo', '2000-05-10', 'Teacher');
```

- **Check components below minimum stock**:
```sql
SELECT * FROM Component WHERE AvailableQuantity < MinimumQuantity;
```

- **Join patients and their test results**:
```sql
SELECT P.FirstName, P.LastName, T.TestName, R.Result, R.Date
FROM Test_Result R
JOIN Patient P ON P.PatientID = R.PatientID
JOIN Medical_Test T ON T.TestID = R.TestID;
```

---

## ✨ Features

- Fully normalized schema (3NF)
- Foreign key enforcement for relational integrity
- Auto-incremented primary keys for all main entities
- Modular design, ready for triggers and additional views
- Ideal for teaching database concepts and real-world modeling

---

## 📜 Project Scope Coverage

| Requirement                      | Included? | Notes |
|----------------------------------|-----------|-------|
| Conceptual design (entities/attrs) | ✅ Yes | Based on ERD |
| ER diagram (cardinality/constraints) | ✅ Yes | Attached as image |
| Relational schema (PKs/FKs) | ✅ Yes | Shown in SQL + diagram |
| DDL & DML (CREATE, INSERT, etc.) | ✅ Yes | In full SQL script |
| Test data (10+ rows/table) | ✅ Yes | 20+ rows per main table |
| Design explanation | ✅ Yes | See "Design Rationale" section |
| Triggers | ❌ Not yet | Can be added for logging/test alerts |

---

## 👤 Author

**Adam Muhammed**  
Nile University  
Course: Database Systems  
Instructor: Dr. Muhammed Elsayeh  
Year: 2025

---
