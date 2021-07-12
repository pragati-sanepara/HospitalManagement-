<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.os.data.DbOperation"%>
<jsp:useBean id="Patient" class="com.os.details.patient"></jsp:useBean>
<jsp:setProperty property="*" name="Patient" />

<%  
	int status = DbOperation.addNewPatient(Patient);  
	if(status > 0)
	{  
		response.sendRedirect("addPatient-Success.jsp");  
	}
	else
	{  
		response.sendRedirect("addPatient-Error.jsp");  
	}  
%>
