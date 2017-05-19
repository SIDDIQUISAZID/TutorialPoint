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


<form action="sendEmail" method="get">

Please enter your registered email id to get a password reset link:

Email id: <input type="email" name="email" placeholder="Enter registered email only" required autofocus>

<input type="submit" name="submit" Value="Get link">

</form>

<% if(request.getAttribute("err")!=null){
	//Problem
	%>
	
	<h2><%= request.getAttribute("err") %></h2> 
	<%
	}%>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>