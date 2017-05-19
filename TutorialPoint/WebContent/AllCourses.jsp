<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="eduOnline.*"  %>
    <%@page import="java.util.Vector,java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Course View</title>
</head>
<body>

<header>
eduOnline
</header>

<table border="1">

<tr>
	<th>Course ID</th>
	<th>Course Name</th>
	<th>Course Duration</th>
	<th>Course Quiz Table Name</th>
</tr>


<% Vector<Courses> d= CourseDatabase.getAllCourses();

for(Courses temp:d){
	
	Courses c=temp;
	
	%>
	
	<tr><td><%=c.getCourse_id() %></td><td><%=c.getCourse_name() %></td><td><%=c.getDuration()%></td><td><%= c.getQuiz_table() %></td>
	<td><a href="DeleteCourseServlet?course_id=<%=c.getCourse_id() %>">Delete</a></td>
	<td><a href="UpdateCourse.jsp?course_id=<%=c.getCourse_id() %>&course_name=<%= c.getCourse_name() %>&duration=<%= c.getDuration() %>&quiz_table=<%=c.getQuiz_table()%>">Update</a></td>
	<td><a href="EnterQuestions.jsp?quiz_table=<%=c.getQuiz_table() %>&course_name=<%=c.getCourse_name()%>">Add Questions</a></td></tr>
	<%
}



%>

<a href="AdminWelcome.jsp">Go Back To Home Page</a>

<%
if(request.getAttribute("msg")!=null)
{
%>
<h2><%= request.getAttribute("msg") %></h2>
<%} %>
</table>

<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>



</body>
</html>