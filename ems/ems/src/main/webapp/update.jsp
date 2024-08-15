<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page</title>
</head>
<body>


	


	<% 
	ResultSet rs=(ResultSet)request.getAttribute("rs");

	
	%>
<%-- 	<%=rs %> --%>

	<h1>Update Here</h1>
	
	<form action="updateemp" method="post">
		<input type="text" value="<%= rs.getInt(1) %>" name="id" placeholder="Enter id"> 
		<input type="text" value="<%= rs.getString(2) %>" name="name" placeholder="Enter name"> 
		<input type="text" value="<%= rs.getString(3) %>" name="email" placeholder="Enter email"> 
		<input type="text" value="<%= rs.getString(4) %>" name="password" placeholder="Enter password"> 
		<input type="text" value="<%= rs.getDouble(5) %>" name="sal" placeholder="Enter salary">
			<button type="submit">Update</button>
	</form>
	
	
	
	
	
	
</body>
</html>
