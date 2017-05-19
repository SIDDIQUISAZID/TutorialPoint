<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form method="post">

<p> Your account, all details and all course progress will be permanently deleted. Do you wish to proceed?</p>

<input type ="hidden" name="username" value="<%= session.getAttribute("username") %>">
<input type="submit" value="Yes" formaction="DeleteControlServet">
<input type="submit" value="No" formaction="UserWelcome.jsp">

</form>

</body>
</html>