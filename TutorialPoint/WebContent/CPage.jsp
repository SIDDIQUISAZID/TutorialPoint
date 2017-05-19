<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
    <%@page import="eduOnline.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Learn C</title>
<!-- <script>

function myfunc(){
	var name=name;
	if(name==null){
		window.location="UserLogin.jsp";
	}
	
	else{
		
		window.location="JoinCourseServlet.java"
	}
} 
</script>-->
</head>
<body>

<header>
eduOnline
</header>


<div style="margin-left:500px; margin-top:50px">


<img src=".\Images\C.jpg" alt="C Course Image" width="500px" height="200px">
</div>

<% String name=(String)session.getAttribute("username"); 

if(name!=null){

%>

<form action="JoinCourseServlet" method="post">
<div class="dropdown" style="float:right">
<input type="hidden" name="username" value=name>
<input type="hidden" name="course" value="C">
<input type="submit" value="Join Now">
</div>
</form>
<%} 


else{
	%>
<form action="JoinCourseServlet" method="get">
<div class="dropdown" style="float:right">
<input type="hidden" name="username" value=name>
<input type="hidden" name="course" value="C">
<input type="submit" value="Join Now">
</div>
</form>
<%} %>

<p style="font-size: 30px">C is a general-purpose, procedural, imperative computer programming language developed in 1972
 by Dennis M. Ritchie at the Bell Telephone Laboratories to develop the UNIX operating system.
  C is the most widely used computer language. It keeps fluctuating at number one scale of popularity
   along with Java programming language, which is also equally popular and most widely used among 
   modern software programmers.</p>
   
   <br/><br/><br/><br/><br/>
   
<%if(session.getAttribute("username")!=null){ %>

<% String username=(String)session.getAttribute("username");%>

<% if(UserDatabase.checkCourse(username, "C")){
	%>
	<a href="CContentLists.jsp">View Course Contents</a>
<% }

else{
%>
<label>View Course Contents</label>

<%}}%>	
	

<%-- <button id="myButton" onClick="myfunc('<%=name%>')" type="submit" formaction="JoinCourseServlet">Join now</button> --%>
<
</form>
<%-- <% if(request.getAttribute("username")!=null){%>
<button type="submit" formmethod="post" >Join Now </button>
<%} 
 else{ %>

<button type="submit" formmethod="get" >Join Now </button>
<%} %>
 --%>
</div>


 <%-- <% if(request.getAttribute("username")!=null){
	
	response.sendRedirect("CContentLists.jsp");
	
	
}
 else{
	
	response.sendRedirect("UserLogin.jsp");
}   
%>  --%>


   
   <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>
   
</body>
</html>