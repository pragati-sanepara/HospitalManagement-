CREATE DATABASE hospitalManagementOfPatients;

CREATE TABLE patientDetails (
	patientID INT IDENTITY(1,1) NOT NULL,
	patientName VARCHAR(50) NOT NULL,
	age VARCHAR(50) NOT NULL,
	gender VARCHAR(50) NOT NULL,
	address VARCHAR(100) NOT NULL,
	result VARCHAR(10) NOT NULL
);

