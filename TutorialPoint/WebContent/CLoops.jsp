<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Loops In C</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>LOOPS IN C</h1>

<p>You may encounter situations, when a block of code needs to be executed several number of times. 
In general, statements are executed sequentially: The first statement in a function is executed first, followed by the second,
 and so on.</p>
<p>Programming languages provide various control structures that allow for more complicated execution paths.</p>
<p>A loop statement allows us to execute a statement or group of statements multiple times. Given below is the general 
form of a loop statement in most of the programming languages &minus;</p>

<img src=".\Images\loop_architecture.jpg" alt="Loops in C">

<p>C programming language provides the following types of loops to handle looping requirements.</p>
<table border="1">
<tr>
<th>S.N.</th>
<th style="text-align:center;">Loop Type &amp; Description</th>
</tr>
<tr>
<td>1</td>
<td>while loop
<p>Repeats a statement or group of statements while a given condition is true. It tests the condition before 
executing the loop body.</p></td>
</tr>
<tr>
<td>2</td>
<td>for loop
<p>Executes a sequence of statements multiple times and abbreviates the code that manages the loop variable.</p></td>
</tr>
<tr>
<td>3</td>
<td>do...while loop
<p>It is more like a while statement, except that it tests the condition at the end of the loop body.</p></td>
</tr>
<tr>
<td>4</td>
<td>nested loops
<p>You can use one or more loops inside any other while, for, or do..while loop.</p></td>
</tr>
</table>
<h2>Loop Control Statements</h2>
<p>Loop control statements change execution from its normal sequence. When execution leaves a scope, 
all automatic objects that were created in that scope are destroyed.</p>
<p>C supports the following control statements.</p>
<tableborder="1">
<tr>
<th>S.N.</th>
<th style="text-align:center;">Control Statement &amp; Description</th>
</tr>
<tr>
<td>1</td>
<td>break statement
<p>Terminates the <b>loop</b> or <b>switch</b> statement and transfers execution to the statement immediately following 
the loop or switch.</p></td>
</tr>
<tr>
<td>2</td>
<td>continue statement
<p>Causes the loop to skip the remainder of its body and immediately retest its condition prior to reiterating.</p></td>
</tr>
<tr>
<td>3</td>
<td>goto statement
<p>Transfers control to the labeled statement.</p></td>
</tr>
</table>
<h2>The Infinite Loop</h2>
<p>A loop becomes an infinite loop if a condition never becomes false. The <b>for</b> loop is traditionally used for this 
purpose. Since none of the three expressions that form the 'for' loop are required, you can make an endless loop by 
leaving the conditional expression empty.</p>
<pre>
#include &lt;stdio.h&gt;
 
int main () {

   for( ; ; ) {
      printf("This loop will run forever.\n");
   }

   return 0;
}
</pre>
<p>When the conditional expression is absent, it is assumed to be true. You may have an initialization and 
increment expression, but C programmers more commonly use the for(;;) construct to signify an infinite loop.</p>
<p><b>NOTE</b> &minus; You can terminate an infinite loop by pressing Ctrl + C keys.</p>

<br/><br/><br/><br/><br/>

<a href="CDecisionMaking.jsp">Previous</a>
<a href="CFunctions.jsp">Next</a>

 <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>