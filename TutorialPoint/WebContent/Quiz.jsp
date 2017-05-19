<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
     <%@page import="eduOnline.*"  %>
       <%@page import="java.util.Vector,java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="QuizCheckServlet" method="get">
<%-- <input type="hidden", name="table_name", value="<%=request.getParameter("table_name") %>"> --%>
<%-- <input type="text" name="no", value="<%=QuizDatabase.noOfQues(request.getParameter("table_name")) %>">
 --%>
 
 <% String table_name=request.getParameter("table_name");
 session.setAttribute("table_name",table_name);%>
	<%  Vector<Quiz> quiz=QuizDatabase.getAllQues(request.getParameter("table_name"));%>
	<%-- int no=QuizDatabase.noOfQues("cquiz");%>
	<% request.setAttribute("no",String.valueOf(no)); %>
	
	
	<h2><%=request.getAttribute("no") %></h2>
	
	<input type="hidden", name="no" ,value="<%=request.getAttribute("no") %>">

	
	 
	 <%                          
            session.setAttribute("no", String.valueOf(no));
        
        %>      
<h2><%=request.getAttribute("no") %></h2> --%>
	<% for(Quiz temp: quiz){
		Quiz q =temp;
		
		int sno=q.getSno();
		%>
		<br/>
		
		<h2><% out.print("("+sno+") "+q.getQuestion()); %></h2>
		<%-- <h2><%=String.valueOf(sno)%></h2> --%>
		
		<input type="radio" name=<%=String.valueOf(sno)%> value="1"><%=q.getOption1() %>
		<input type="radio" name=<%=String.valueOf(sno)%> value="2"><%=q.getOption2() %>
		<input type="radio" name=<%=String.valueOf(sno)%> value="3"><%=q.getOption3() %>
		<input type="radio" name=<%=String.valueOf(sno)%> value="4"><%=q.getOption4() %>
		
		
		
		<%
	}
		%>
		<input type="submit" value="Submit Answers">
		
	</form>	

</body>
</html>