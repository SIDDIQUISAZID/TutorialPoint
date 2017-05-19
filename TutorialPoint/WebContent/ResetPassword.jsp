<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<form action="ResetPasswordServlet" method="get">
<table>

<tr><td>Enter Username</td><td> <input type="text" name="username" autofocus required placeholder="Enter registered username"></td></tr>
<tr><td>Enter New Password </td><td><input type="password" name="pass" required></td></tr>
<tr><td>Confirm New Password </td><td><input type="password" name="cpass" required></td></tr>

<tr><td colspan="2"><input type="submit" name="submit" value="Reset Password"></td></tr>
</table>

</form>


<% if(request.getAttribute("msg")!=null){
	//Problem
	%>
	
	<h2><%= request.getAttribute("msg") %></h2> 
	<%
	}%>



<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>