package com.os.data;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

//import com.os.data.DbConnection;
import com.os.details.patient;

public class DbOperation 
{
	public static int addNewPatient(patient Patient)
	{  
	    int status = 0;  
	    try
	    {
	    	String sqlQuery = "insert into patientDetails( patientName, age, gender, address, result) values(?,?,?,?,?)";
	        Connection connection = DbConnection.getConnection();  
	        PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);  
	        preparedStatement.setString(1,Patient.getPatientName());  
	        preparedStatement.setInt(2,Patient.getAge());
	        preparedStatement.setString(3,Patient.getGender());
	        preparedStatement.setString(4,Patient.getAddress());
	        preparedStatement.setString(5,Patient.getResult());
	        status = preparedStatement.executeUpdate();  
	    }
	    catch(Exception e)
	    {
	    	System.out.println(e);
	    }  
	    return status;  
	}
	public static int updatePatientStatus(patient Patient)
	{  
	    int status = 0;  
	    try
	    {
	    	String sqlQuery = "update patientDetails set result=? where patientID=?";
	        Connection connection = DbConnection.getConnection();  
	        PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);  
	        preparedStatement.setString(1, Patient.getResult());
	        preparedStatement.setInt(2, Patient.getPatientID());
	        status = preparedStatement.executeUpdate();  
	    }
	    catch(Exception e)
	    {
	    	System.out.println(e);
	    }  
	    return status;  
	}  
	public static List<patient> getAllPatient()
	{  
		List<patient> PatientList = new ArrayList<patient>();  
	    try
	    {
	    	String sqlQuery = "select * from patientDetails";
	        Connection connection = DbConnection.getConnection();  
	        PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);  
	        ResultSet resultSet = preparedStatement.executeQuery();  
	        while(resultSet.next()){   
	        	patient Patient = new patient();
	        	Patient.setPatientID(resultSet.getInt("patientID"));
	        	Patient.setPatientName(resultSet.getString("patientName"));
	        	Patient.setAge(resultSet.getInt("age"));
	        	Patient.setGender(resultSet.getString("gender"));
	        	Patient.setAddress(resultSet.getString("address"));
	        	Patient.setResult(resultSet.getString("result"));
	        	
	        	PatientList.add(Patient);
	        }
	    }
	    catch(Exception e)
	    {
	    	System.out.println(e);
	    }  
	    return PatientList;  
	} 

	public static void deletePatient(patient Patient)
	{  
	    try
	    {
	    	String sqlQuery = "delete from patientDetails where patientID=?";
	        Connection connection = DbConnection.getConnection();  
	        PreparedStatement preparedStatement = connection.prepareStatement(sqlQuery);  
	        preparedStatement.setInt(1,Patient.getPatientID());
	        preparedStatement.executeUpdate();  
	    }
	    catch(Exception e)
	    {
	    	System.out.println(e);
	    }  
	}  
}
