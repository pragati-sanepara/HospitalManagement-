<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospital Management Of Patients</title>
</head>
<body>
	<div class="container" style="margin-top: 100px;">
		<div class="row" style="margin-bottom: 20px;">
			<h4 class="offset-sm-3 col-sm-6">Update Patient Status</h4>
		</div>
		<form action="updatePatientsStatusResponse.jsp">
			<div class="row">
				<div class="form-group offset-sm-3 col-sm-6">
					<label for="patientID">Patient ID :</label> <input type="text"
						class="form-control" id="patientID" placeholder="Enter patient ID"
						name="patientID">
				</div>
			</div>
			<div class="row">
				<div class="form-group offset-sm-3 col-sm-6">
					<label for="result">Patient status:</label> <input type="text"
						class="form-control" id="result" placeholder="Enter status" name="result">
				</div>
			</div>
			<div class="offset-sm-3 col-sm-4">
				<button type="submit" class="btn btn-info btn-lg">Update Status</button>
			</div>
		</form>
	</div>

</body>
</html>