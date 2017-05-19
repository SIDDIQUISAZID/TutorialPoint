<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="eduOnline.*" %>
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

<form action="UpdateUserServlet" method="get">
<h1>Update record for username :<%= request.getParameter("username") %></h1>
<% String username=(String)session.getAttribute("username");%>
<% User user= UserDatabase.viewUser(username); %>

<input type="hidden" name="username" value="<%= user.getUsername() %>">
<table>
<%-- <tr><td>First Name</td><td><input type="text" name="fname" value="<%=  request.getParameter("fname") %>"></td></tr>
<tr><td>Last Name</td><td><input type="text" name="lname" value="<%=  request.getParameter("lname") %>"></td></tr>
<tr><td>e-mail id</td><td><input type="email" name="email" value="<%=  request.getParameter("lname") %>"></td></tr>
<tr><td>Password</td><td><input type="password" name="password"  value="<%=  request.getParameter("password") %>" ></td></tr>
<tr><td>Confirm Password</td><td><input type="password" name="cpass" placeholder="Re-type password"></td></tr>
<tr><td>Gender</td><td><input type="radio" name="gender" value="<%=  request.getParameter("gender") %>">Male <input type="radio" name="gender" value="<%=  request.getParameter("gender") %>">Female<input type="radio" name="gender" value="<%=  request.getParameter("gender") %>">Other</td></tr>
<tr><td>Date Of Birth</td><td><input type="date" name="dob" value="<%=  request.getParameter("dob") %>"></td></tr>
<tr><td>Country</td><td><input type="text" name="country" value="<%=  request.getParameter("country") %>"></td></tr>
<tr><td>City</td><td><input type="text" name="city" value="<%=  request.getParameter("city") %>"></td></tr>
<tr><td>Mobile</td><td><input type="text" name="mobile" value="<%=  request.getParameter("mobile") %>"></td></tr>
<tr><td><input type="submit" value="Update"> --%>


 
 <tr><td>First Name</td><td><input type="text" name="fname" value="<%= user.getFname() %>"></td></tr>
 <tr><td>Last Name</td><td><input type="text" name="lname" value="<%= user.getLname() %>"></td></tr>
 <tr><td>E-mail </td><td><input type="text" name="email" value="<%= user.getEmail() %>"></td></tr>
 <tr><td>Password</td><td><input type="text" name="password" value="<%= user.getPassword() %>"></td></tr>
 <tr><td>Gender</td><td><input type="text" name="gender" value="<%= user.getGender() %>"></td></tr> 
 <tr><td>Date of Birth</td><td><input type="text" name="dob" value="<%=user.getDob() %>"></td></tr>
 <tr><td>Country</td><td><input type="text" name="country" value="<%= user.getCountry() %>"></td></tr>
 <tr><td>City</td><td><input type="text" name="city" value="<%= user.getCity() %>"></td></tr>
 <tr><td>Mobile</td><td><input type="text" name="mobile" value="<%=user.getMobile() %>"></td></tr>
 <tr><td><input type="submit" value="Update"></td></tr>
 
 </table>
 
</form>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>
</body>
</html>