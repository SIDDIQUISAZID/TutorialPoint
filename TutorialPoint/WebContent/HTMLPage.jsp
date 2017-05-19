<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
    <%@page import="eduOnline.*" %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Learn HTML5</title>
</head>
<body>

<header>
eduOnline
</header>


<div style="margin-left:500px; margin-top:50px">


<img src=".\Images\html.jpg" alt="HTML Course Image" width="500px" height="300px">
</div>

<% String name=(String)session.getAttribute("username"); 

if(name!=null){

%>

<form action="JoinCourseServlet" method="post">
<div class="dropdown" style="float:right">
<input type="hidden" name="username" value=name>
<input type="hidden" name="course" value="HTML">
<input type="submit" value="Join Now">
</div>
</form>
<%} 


else{
	%>
<form action="JoinCourseServlet" method="get">
<div class="dropdown" style="float:right">
<input type="hidden" name="username" value=name>
<input type="hidden" name="course" value="HTML">
<input type="submit" value="Join Now">
</div>
</form>
<%} %>

<p style="font-size: 30px"> HTML stands for Hype Text Markup Language. It is used for designing web pages. It is simple and easy to learn.</p><br/><br/><br/><br/><br/>
<%if(session.getAttribute("username")!=null){ %>

<% String username=(String)session.getAttribute("username");%>

<% if(UserDatabase.checkCourse(username, "HTML")){
	%>
	<a href="CContentLists.jsp">View Course Contents</a>
<% }

else{
%>
<label>View Course Contents</label>

<%}}%>	

<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>