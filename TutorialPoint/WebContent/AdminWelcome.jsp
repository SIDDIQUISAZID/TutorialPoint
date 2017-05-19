<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<%
if(session.getAttribute("username")==null){
	
	response.sendRedirect("UserLogin.jsp");
}

%>



<a href="AllUsers.jsp">View All Users</a>
<br/>
<a href="AddCourse.jsp">Add a Course</a>
<br/>
<a href="AllCourses.jsp">View All Courses</a>

<form>

<input id="AdminLogout" type="submit" value="Logout" formaction="AdminLogoutServlet">
</form>



<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>
</body>
</html>