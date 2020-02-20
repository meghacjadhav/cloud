<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*, com.enp.util.*"%>
<%
try
{
	System.out.print("Inside Delete-db.jsp");
	Connection con =	MySQLUtility.connect();
	
	Statement st=con.createStatement();
	st.executeUpdate("DROP DATABASE clients");
	out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>