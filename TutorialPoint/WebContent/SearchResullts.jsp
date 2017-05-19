<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="eduOnline.*"  %>
    <%@page import="java.util.Vector,java.util.Enumeration" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<header>
eduOnline
</header>

<table border="1">

<tr>
	
	<th>Course Name</th>
	<th>Course Duration</th>
	
</tr>

<% String search=request.getParameter("search"); %>

<% Vector<Courses> d= CourseDatabase.searchCourse(search);

for(Courses temp:d){
	
	Courses c=temp;
	
	%>
	
	<tr><td><%=c.getCourse_name() %></td><td><%=c.getDuration() %>hrs</td></tr>
	<%} %>
	
	</table>

<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>



</body>
</html>