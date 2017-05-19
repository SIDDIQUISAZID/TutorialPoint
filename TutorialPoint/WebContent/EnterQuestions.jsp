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

<form action="EnterQuesServlet" method="post"> 
<h2>Enter Questions for : <%= request.getParameter("course_name") %></h2>
<input type="hidden" name="course_name" value="<%= request.getParameter("course_name") %>">
<input type="hidden" name="quiz_table" value="<%= request.getParameter("quiz_table") %>">
<table border="1">

<tr><td>Enter Question</td><td><textarea rows="5" cols="20" name="question"></textarea></td></tr>
<tr><td>Option 1 </td><td><input type=" text" name="option1" size="40"></td></tr>
<tr><td>Option 2</td><td><input type="text" name="option2" size="40"></td></tr>
<tr><td>Option 3 </td><td><input type="text" name="option3" size="40"></td></tr>
<tr><td>Option 4 </td><td><input type="text" name="option4" size="40"></td></tr>
<tr><td>Answer </td><td><input type="text" name="answer" size="40"></td></tr>
<tr><td colspan="2"><input type="reset" value="Reset"></td></tr>
<tr><td colspan="2"><input type="submit" value="Submit"></td></tr>


</table>

</form>

<%-- <%
if(request.getAttribute("msg")!=null)
{
%>
<h2><%= request.getAttribute("msg") %></h2>
 --%>

<%-- <%
response.sendRedirect("AllCourses.jsp");

%> --%>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>