<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.os.data.DbOperation"%>
<jsp:useBean id="Patient" class="com.os.details.patient"></jsp:useBean>
<jsp:setProperty property="*" name="Patient" />

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hospital Management Of Patients</title>
</head>
<body>
	<%  
	DbOperation.deletePatient(Patient);  
	response.sendRedirect("viewPatientsDetails.jsp");
	%>
</body>
</html>