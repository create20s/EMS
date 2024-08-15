<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<style>
h1{


font-size:50px;
text-align:center;

}
table{
margin:auto;
font-size:40px;
}
button{
padding:10px 20px;

}

#add{
position:fixed;
margin-left:70%;
margin-top:-5%;


}


</style>


<body>

<h1>All EMP Accounts</h1>

     <a href="create.jsp" id="add"><button>Add Employee</button></a>
    <%
    
    ResultSet rs=(ResultSet)request.getAttribute("rs1");
     

if(rs!=null){
	
	%>
    <table  border="2px" rules="all" style="text-align: center; cellspacing:10;" cellpadding="10px"  cellspacing="10px">
        <tr>
            <th>id</th>
            <th>name</th>
            <th>email</th>
            <th>password</th>
            <th>salary</th>
               <th>Action</th>
                   <th>Action-Update</th>
        </tr>
<%


while(rs.next()){
	
	%>
	 <tr>
            <td><%= rs.getInt(1) %></td>
            <td><%= rs.getString(2) %></td>
            <td><%= rs.getString(3) %></td>
             <td><%= rs.getString(4) %></td>
            <td><%= rs.getDouble(5) %></td>
              <td><a href="delete?id=<%= rs.getInt(1) %>"><button>Delete</button></a> </td>
               <td><a href="update?id=<%= rs.getInt(1) %>"><button>Update</button></a> </td>
        </tr>
        
     <%  
}

%>
</table>

<% 

} 

 else {
%>
    <p>No employee data available.</p>
<%
}

     		
                		
      %>          		
                		
  

</body>
</html>