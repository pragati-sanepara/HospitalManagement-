package com.os.data;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection 
{
	public static Connection getConnection()
	{  
	    Connection connection = null;  
	    try
	    {  
	        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");  
	        connection = DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=hospitalManagementOfPatients","sa","password");
	    }
	    catch(Exception e)
	    {
	    	System.out.println(e);
	    } 
	    return connection;  
	}  

}
