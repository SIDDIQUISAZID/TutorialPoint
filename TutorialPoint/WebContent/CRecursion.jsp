<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Recursion In C</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>RECURSION IN C </h1>

<p>Recursion is the process of repeating items in a self-similar way. In programming languages, if a program allows you
 to call a function inside the same function, then it is called a recursive call of the function.</p>
<pre>
void recursion() {
   recursion(); /* function calls itself */
}

int main() {
   recursion();
}
</pre>
<p>The C programming language supports recursion, i.e., a function to call itself. But while using recursion, programmers need 
to be careful to define an exit condition from the function, otherwise it will go into an infinite loop.</p>
<p>Recursive functions are very useful to solve many mathematical problems, such as calculating the factorial of a number, 
generating Fibonacci series, etc.</p>
<h2>Number Factorial</h2>
<p>The following example calculates the factorial of a given number using a recursive function &minus;</p>
<pre>
#include &lt;stdio.h&gt;

int factorial(unsigned int i) {

   if(i &lt;= 1) {
      return 1;
   }
   return i * factorial(i - 1);
}

int  main() {
   int i = 15;
   printf("Factorial of %d is %d\n", i, factorial(i));
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
Factorial of 15 is 2004310016
</pre>
<h2>Fibonacci Series</h2>
<p>The following example generates the Fibonacci series for a given number using a recursive function &minus;</p>
<pre>
#include &lt;stdio.h&gt;

int fibonaci(int i) {

   if(i == 0) {
      return 0;
   }
	
   if(i == 1) {
      return 1;
   }
   return fibonaci(i-1) + fibonaci(i-2);
}

int  main() {

   int i;
	
   for (i = 0; i &lt; 10; i++) {
      printf("%d\t\n", fibonaci(i));
   }
	
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
0	1	1	2	3	5	8	13	21	34
</pre>


<br/><br/><br/><br/><br/>

<a href="CErrorHandling.jsp">Previous</a>
<a href="CVarArguments.jsp">Next</a>


 <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>