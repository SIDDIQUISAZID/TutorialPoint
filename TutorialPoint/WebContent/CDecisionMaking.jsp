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

<h1>DECISION MAKING IN C</h1>

<p>Decision making structures require that the programmer specifies one or more conditions to be evaluated or tested by the 
program, along with a statement or statements to be executed if the condition is determined to be true, and optionally, other
 statements to be executed if the condition is determined to be false.</p>
<p>Show below is the general form of a typical decision making structure found in most of the programming languages &minus;</p>
<img src=".\Images\decision_making.jpg" alt="Decision Making In C">
<p>C programming language assumes any <b>non-zero</b> and <b>non-null</b> values as <b>true</b>, and if it is either <b>zero</b>
 or <b>null</b>, then it is assumed as <b>false</b> value.</p>
<p>C programming language provides the following types of decision making statements.</p>
<table border="1">
<tr>
<th>S.N.</th>
<th style="text-align:center;">Statement &amp; Description</th>
</tr>
<tr>
<td>1</td>
<td>if statement
<p>An <b>if statement</b> consists of a boolean expression followed by one or more statements.</p></td>
</tr>
<tr>
<td>2</td>
<td>if...else statement
<p>An <b>if statement</b> can be followed by an optional <b>else statement</b>, which executes when the Boolean expression is false.</p></td>
</tr>
<tr>
<td>3</td>
<td>>nested if statements
<p>You can use one <b>if</b> or <b>else if</b> statement inside another <b>if</b> or <b>else if</b> statement(s).</p></td>
</tr>
<tr>
<td>4</td>
<td>switch statement
<p>A <b>switch</b> statement allows a variable to be tested for equality against a list of values.</p></td>
</tr>
<tr>
<td>5</td>
<td>nested switch statements
<p>You can use one <b>switch</b> statement inside another <b>switch</b> statement(s).</p></td>
</tr>
</table>
<h2>The ? : Operator</h2>
<p>We have covered <b>conditional operator ? :</b> in the previous chapter which can be used to replace
 <b>if...else</b> statements. It has the following general form &minus;</p>
<pre>
Exp1 ? Exp2 : Exp3;
</pre>
<p>Where Exp1, Exp2, and Exp3 are expressions. Notice the use and placement of the colon.</p>
<p>The value of a ? expression is determined like this &minus;</p>
<ul class="list">
<li>Exp1 is evaluated. If it is true, then Exp2 is evaluated and becomes the value of the entire ? expression.</li><br/>
<li>If Exp1 is false, then Exp3 is evaluated and its value becomes the value of the expression.</li><br/>
</ul>



<br/><br/><br/><br/><br/>

<a href="COperators.jsp">Previous</a>
<a href="CLoops.jsp">Next</a>


 <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>