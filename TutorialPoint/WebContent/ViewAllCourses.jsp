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

<div class="img">
  <a href="">
    <img src=".\Images\j2ee.png" alt="J2EE" width="600" height="400">
  </a>
  <div class="desc">Advance Java</div>
</div>


<div class="img">
  <a  href="CPage.jsp">
    <img src=".\Images\C.jpg" alt="C" width="300" height="100">
  </a>
  <div class="desc">Programming in C</div>
</div>

<div class="img">
  <a  href="HTMLPage.jsp">
    <img src=".\Images\html.jpg" alt="HTML" width="600" height="400">
  </a>
  <div class="desc">HTML5</div>
</div>

<%if(request.getAttribute("message")!=null) 
{
%>

<h2><%=request.getAttribute("message") %></h2>

<%} %> 

<%if(request.getAttribute("message2")!=null) 
{
%>

<h2><%=request.getAttribute("message2") %></h2>

<%} %> 

<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>