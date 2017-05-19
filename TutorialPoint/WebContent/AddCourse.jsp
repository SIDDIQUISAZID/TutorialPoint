<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="eduOnline.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="AddCourseServlet" method="post">

<table border="1">

<tr><td>Course Name</td><td><input type="text" name="cname"></td></tr>
<tr><td>Duration </td><td><input type="text" name="duration"></td></tr>
<tr><td>Course Quiz Table Name</td><td><input type="text" name="quiz_table"></td></tr>

<tr><td colspan="2"><input type="submit" value="Add Course">


</table>

</form>

<%
if(request.getAttribute("msg")!=null)
{
%>
<h2><%= request.getAttribute("msg") %></h2>

<a href="AdminWelcome.jsp">Go Back To Home Page</a>

<%
}
%>

</body>
</html>