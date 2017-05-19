<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
</head>


<body>


<header>
eduOnline
</header>

<ul id="mainmenu" style="list-style-type:none;">
	<li><a class="active" href="HomePage.jsp">Home</a></li>
	<li><a href="">Courses</a></li>
	<li><a href="About.jsp">About Us</a></li>
</ul>


<h1 style="text-align:center; color:crimson">Personal Information</h1>

<table id="register" border="5">
<form action="UserAccRegisterServlet" method="post">
<tr><td>First Name</td><td><input type="text" name="fname" maxlength="50" autofocus required="required"></td></tr>
<tr><td>Last Name</td><td><input type="text" name="lname" maxlength="50" required></td></tr>
<tr><td>Gender</td><td><input type="radio" name="gender"  required value="Male">Male 
<input type="radio" name="gender" value="Female">Female<input type="radio" name="gender" value="Other">Other</td></tr>
<tr><td>e-mail id</td><td><input type="email" name="email" placeholder="someone@example.com" required></td></tr>
<tr><td>Date Of Birth</td><td><input type="date" name="dob" required></td></tr>
<tr><td>Username</td><td><input type="text" name="uname" placeholder="Name to be displayed" required></td></tr>
<tr><td>Password</td><td><input type="password" name="pass" placeholder="letters,digits,splcharacters" required></td></tr>
<tr><td>Confirm Password</td><td><input type="password" name="cpass" placeholder="Re-type password" required></td></tr>
<tr><td>Country</td><td><input type="text" name="country" required></td></tr>
<tr><td>City</td><td><input type="text" name="city"></td></tr>
<tr><td>Profile Picture</td><td><input type="file" name="dp"></td></tr>
<tr><td>Mobile</td><td><input type="text" name="mobile" placeholder="Enter a 10 digit number" pattern="[789][0-9]{9}"></td></tr>
<tr><td colspan="2"><input type="reset" name="reset" value="Reset"><input type="submit" name="submit" value="Submit" title="Please enter a valid mobile number"></td></tr>

</form>
</table>


<%
if(request.getAttribute("msg")!=null)
{
%>
<h2><%= request.getAttribute("msg") %></h2>

<a href="UserLogin.jsp">Login</a>

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