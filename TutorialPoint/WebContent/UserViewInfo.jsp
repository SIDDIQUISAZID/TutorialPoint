<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
     <%@page import="eduOnline.*"  %>
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


 <% String username=(String)session.getAttribute("username");%>
<% User user= UserDatabase.viewUser(username); %>
 <h2> Your Profile</h2>
 <table>
 
 <tr><td>Username</td><td><%=user.getUsername() %></td></tr>
 <tr><td>First Name</td><td><%= user.getFname() %></td></tr>
 <tr><td>Last Name</td><td><%= user.getLname() %></td></tr>
 <tr><td>E-mail </td><td><%= user.getEmail() %></td></tr>
 <tr><td>Gender</td><td><%= user.getGender() %></td></tr>
 <tr><td>Date of Birth</td><td><%=user.getDob() %></td></tr>
 <tr><td>Country</td><td><%= user.getCountry() %></td></tr>
 <tr><td>City</td><td><%= user.getCity() %></td></tr>
 <tr><td>Mobile</td><td><%=user.getMobile() %></td></tr>
 
 </table>




<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>





</body>
</html>