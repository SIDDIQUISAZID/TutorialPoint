<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C++ Decision Making</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>DECISION MAKING IN C++</h1>


<p>Decision making structures require that the programmer specify one or more conditions to be evaluated or tested by the program, along with a statement or statements to be executed if the condition is determined to be true, and optionally, other
statements to be executed if the condition is determined to be false.</p>
<p>Following is the general form of a typical decision making structure found in most of the programming languages:</p>
<center>
<img src=".\Images\cpp_decision_making.jpg" alt="C++ decision making" />
</center>
<p>C++ programming language provides following types of decision making statements. Click the following links to check their detail.</p>
<table class="table table-bordered">
<tr><th width="35%">Statement</th><th>Description</th></tr>
<tr><td>if statement</td><td>An if statement consists of a boolean expression followed by one or more statements.</td></tr>
<tr><td>if...else statement</td><td>An if statement can be followed by an optional else statement, which executes when the boolean expression is false.</td></tr>
<tr><td>switch statement</td><td>A switch statement allows a variable to be tested for equality against a list of values.</td></tr>
<tr><td>nested if statements</td><td>You can use one if or else if statement inside another if or else if statement(s).</td></tr>
<tr><td>nested switch statements</td><td>You can use one swicth statement inside another switch statement(s).</td></tr>
</table>
<h2>The ? : Operator:</h2>
<p>We have covered conditional operator ? : in previous chapter which can be used to replace <b>if...else</b> statements. It has the following general form:</p>
<pre class="prettyprint notranslate">
Exp1 ? Exp2 : Exp3;
</pre>
<p>Where Exp1, Exp2, and Exp3 are expressions. Notice the use and placement of the colon.</p>
<p>The value of a ? expression is determined like this: Exp1 is evaluated. If it is true, then Exp2 is evaluated and becomes the value of the entire ? expression. If Exp1 is false, then Exp3 is evaluated and its value becomes the value of the expression.</p>

<br/><br/><br/><br/><br/>
<a href="C++Loops.jsp">Previous</a>
<a href="C++Functions.jsp">Next</a>

<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>