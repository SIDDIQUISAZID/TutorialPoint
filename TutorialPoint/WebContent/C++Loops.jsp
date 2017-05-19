<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C++ Loops</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>C++ LOOPS</h1>

<p>There may be a situation, when you need to execute a block of code several number of times. In general statements are executed sequentially: The first statement in a function is executed first, followed by the second, and so on.</p>
<p>Programming languages provide various control structures that allow for more complicated execution paths.</p>
<p>A loop statement allows us to execute a statement or group of statements multiple times and following is the general from of a loop statement in most of the programming languages:</p>
<center>
<img src=".\Images\loop_architecture1.jpg" alt="Loop Architecture" />
</center>
<p>C++ programming language provides the following types of loop to handle looping requirements. Click the following links to check their detail.</p>
<table class="table table-bordered">
<tr><th width="30%">Loop Type</th><th>Description</th></tr>
<tr><td>while loop</td><td>Repeats a statement or group of statements while a given condition is true. It tests the condition before executing the loop body.</td></tr>
<tr><td>for loop</td><td>Execute a sequence of statements multiple times and abbreviates the code that manages the loop variable.</td></tr>
<tr><td>do...while loop</td><td>Like a while statement, except that it tests the condition at the end of the loop body</td></tr>
<tr><td>nested loops</td><td>You can use one or more loop inside any another while, for or do..while loop.</td></tr>
</table>
<h2>Loop Control Statements:</h2>
<p>Loop control statements change execution from its normal sequence. When execution leaves a scope, all automatic objects that were created in that scope are destroyed.</p>
<p>C++ supports the following control statements. Click the following links to check their detail.</p>
<table class="table table-bordered">
<tr><th width="30%">Control Statement</th><th>Description</th></tr>
<tr><td>break statement</td><td>Terminates the <b>loop</b> or <b>switch</b> statement and transfers execution to the statement immediately following the loop or switch.</td></tr>
<tr><td>continue statement</td><td>Causes the loop to skip the remainder of its body and immediately retest its condition prior to reiterating.</td></tr>
<tr><td>goto statement</td><td>Transfers control to the labeled statement. Though it is not advised to use goto statement in your program.</td></tr>
</table>
<h2>The Infinite Loop:</h2>
<p>A loop becomes infinite loop if a condition never becomes false. The <b>for</b> loop is traditionally used for this purpose. Since none of the three expressions that form the for loop are required, you can make an endless loop by leaving the conditional expression empty.</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;
 
int main ()
{

   for( ; ; )
   {
      printf("This loop will run forever.\n");
   }

   return 0;
}
</pre>
<p>When the conditional expression is absent, it is assumed to be true. You may have an initialization and increment expression, but C++ programmers more commonly use the for(;;) construct to signify an infinite loop.</p>
<p><b>NOTE:</b> You can terminate an infinite loop by pressing Ctrl + C keys.</p>

<br/><br/><br/><br/><br/>
<a href="C++Operators.jsp">Previous</a>
<a href="C++Decision.jsp">Next</a>

<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>