#################
# ADAM Muhammed #
#  211002023    #
#################
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