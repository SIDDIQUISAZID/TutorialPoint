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
<ul id="mainmenu" style="list-style-type:none">
	<li><a class="active" href="HomePage.jsp">Home</a></li>
	<li><a href="ViewAllCourses.jsp">Courses</a></li>
	<li><a href="About.jsp">About Us</a></li>
</ul>

<ul id="usermenu">

<li style="float:none"><a style="display:block; padding: 10px 0px 10px 10px;"href="">My Courses</a>
<li style="float:none"><a style="display:block; padding: 10px 0px 10px 10px;" href="">Completed Courses</a>
</ul>

 <!-- <ul class="dropdown">
  <li class="dropbtn">Username</li>
  <ul class="dropdown-content">
    <li style="float:none; position:absolute"><a style="display:block; padding: 5px 0px 10px 10px; position:absolute" href="#">Link 1</a></li>
    <li style="float:none; position:absolute"><a style="display:block; padding: 10px 0px 10px 10px; position:absolute" href="#">Link 2</a></li>
    <li style="float:none; position:absolute"><a style="display:block; padding: 10px 0px 10px 10px; position:absolute" href="#">Link 3</a></li>
  </ul>
</ul>  -->


<div class="dropdown" style="float:right">
  <button class="dropbtn"><%= session.getAttribute("username") %></button>
  <div class="dropdown-content">
    <a href="UserViewInfo.jsp">View Profile</a>
    <a href="UpdateUser.jsp?username=<%= session.getAttribute("username") %>">Update Profile</a>
    <a href="DeleteAcc.jsp">Delete Account</a>
  </div>
</div>

<form>
<div class="dropdown" style="float:right">
<button class="logout" type="submit" formaction="UserLogoutServlet"> Logout
</button>
</div>
</form>





<h1>Welcome <%= session.getAttribute("fname") %> </h1>

<%
if(session.getAttribute("fname")==null){
	
	response.sendRedirect("UserLogin.jsp");
}

%>



<%
if(session.getAttribute("success")!=null){

%>
<h2><%= request.getAttribute("success") %></h2>

<%} %>

<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>