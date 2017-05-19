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

<form action="UpdateControlServlet" method="get">
<h1>Update record for Id :<%= request.getParameter("course_id") %></h1>
<input type="hidden" name="course_id" value="<%= request.getParameter("course_id") %>">
<input type="hidden" name="quiz_table" value=<%= request.getParameter("quiz_table") %>">
<table>
<tr><td>Course Name</td><td><input type="text" name="course_name" value="<%=  request.getParameter("course_name") %>"></td></tr>
<tr><td>Duration</td><td><input type="text" name="duration" value="<%=  request.getParameter("duration") %>"></td></tr>

<tr><td><input type="submit" value="Update">
</table>

</form>

</body>
</html>