<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<header>
eduOnline
</header>


<ul  id="mainmenu" style="list-style-type:none;">
	<li><a class="active" href="HomePage.jsp">Home</a></li>
	<li><a href="ViewAllCourses.jsp">Courses</a></li>
	<li><a href="About.jsp">About Us</a></li>
</ul>
<br/><br/><br/>
<div>
<img  src=".\Images\3347125-vector-image-books-fly-into-your-laptop.jpg" width=100%; height=300px>
</div>


<form action="UserLoginServlet" method="post">
<table border="3">

<tr><td>Username</td><td><input type="text" name="username" autofocus ></td></tr>
<tr><td>Password</td><td><input type="password" name="pass"></td></tr>
<tr><td colspan="2"><input type="submit" value="Login"></td></tr>
<tr><td colspan="2"><input type="submit" formaction="AdminLoginServlet" value="Login as Admin"></td></tr>

</table>

<a href="ForgotPassword.jsp">Forgot Password?</a>
</form>

<% if(request.getAttribute("msg")!=null){
	//Problem
	%>
	
	<h2><%= request.getAttribute("msg") %></h2> 
	<%
	}

if(session.getAttribute("fname")!=null) //Problem
{
	response.sendRedirect("UserWelcome.jsp");
}
%>

<%
if(request.getAttribute("message")!=null){

	%>
	<h2><%= request.getAttribute("message") %></h2>
	<%
}
%>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>