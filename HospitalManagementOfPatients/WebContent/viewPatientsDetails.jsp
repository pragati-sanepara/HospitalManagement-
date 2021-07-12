<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page
	import="com.os.data.DbOperation, com.os.details.patient, java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospital Management Of Patients</title>
</head>
<body>
<%  
	List<patient> list = DbOperation.getAllPatient();  
	request.setAttribute("PatientList",list);  
%>  

	<div class="container">
		<h4>View patients/Delete patients</h4>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>Patient ID</th>
					<th>Patient Name</th>
					<th>Age</th>
					<th>Gender</th>
					<th>Address</th>
					<th>Result</th>
					<th>Delete Patient</th>
					<th>Edit Patient</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${PatientList}" var="Patient">
					<tr>
						<td>${Patient.getPatientID()}</td>
						<td>${Patient.getPatientName()}</td>
						<td>${Patient.getAge()}</td>
						<td>${Patient.getGender()}</td>
						<td>${Patient.getAddress()}</td>
						<td>${Patient.getResult()}</td>
						<td><a
							href="deletePatient.jsp?patientID=${Patient.getPatientID()}">Delete</a>
						</td>
						<td><a
							href="updatePatientsStatus.jsp?">Edit</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>