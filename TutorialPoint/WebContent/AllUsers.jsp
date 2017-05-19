<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="eduOnline.*"  %>
    <%@page import="java.util.Vector,java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table border="1">
<tr><th>Username</th>
	<th>First Name</th>
	<th>Last Name</th>
	<th>e-mail</th>
	<th>Password</th>
	<th>Gender</th>
	<th>Date Of Birth</th>
	<th>Country</th>
	<th>City</th>
	<th>Mobile</th>
	<th>Action</th>
	</tr>
	
	<%  Vector<User> d=UserDatabase.getAllUser();
		
	for(User temp: d){
		User u=temp;
		
		%>
		<tr><td><%=u.getUsername() %></td><td><%=u.getFname()%></td><td><%=u.getLname()%></td>
		<td><%=u.getEmail()%></td><td><%=u.getPassword() %></td><td><%=u.getGender() %></td>
		<td><%=u.getDob() %></td><td><%=u.getCountry() %></td><td><%=u.getCity() %></td><td><%=u.getMobile() %></td>
		
		<td><a href="DeleteControlServet?username=<%=u.getUsername() %>">Delete</a></td></tr>
		<%
	}
		%>

</table>
</body>
</html>