<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospital Management Of Patients</title>
</head>
<body>
	<div class="container" style="margin-top: 30px;">
		<div class="row" style="margin-bottom: 20px;">
			<h4 class="offset-sm-3 col-sm-6">Add New Patient Details</h4>
		</div>
		<form action="addPatientResponse.jsp" method="post">
			<div class="row">
				<div class="form-group offset-sm-3 col-sm-6">
					<label for="patientName">Patient Name:</label> <input type="text"
						class="form-control" id="patientName"
						placeholder="Enter Patientname" name="patientName">
				</div>
			</div>
			<div class="row">
				<div class="form-group offset-sm-3 col-sm-6">
					<label for="age">Age :</label> <input type="text"
						class="form-control" id="age" placeholder="Enter Age " name="age">
				</div>
			</div>
			<div class="row">
				<div class="form-group offset-sm-3 col-sm-6">
					<label for="gender">Gender :</label> <input type="text"
						class="form-control" id="gender" placeholder="Enter Gender"
						name="gender">
				</div>
			</div>
			<div class="row">
				<div class="form-group offset-sm-3 col-sm-6">
					<label for="address">Address :</label> <input type="text"
						class="form-control" id="address" placeholder="Enter Address"
						name="address">
				</div>
			</div>
			<div class="row">
				<div class="form-group offset-sm-3 col-sm-6">
					<label for="result">Result :</label> <input type="text"
						class="form-control" id="result" placeholder="Enter Result"
						name="result">
				</div>
			</div>
			<div class="offset-sm-3 col-sm-4">
				<button type="submit" class="btn btn-info btn-lg">Add
					Details</button>
			</div>
		</form>
	</div>
</body>
</html>