<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Scope Rules In C</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>SCOPE RULES IN C</h1>

<p>A scope in any programming is a region of the program where a defined variable can have its existence and beyond that
 variable it cannot be accessed. There are three places where variables can be declared in C programming language &minus;</p>
<ul>
<li>Inside a function or a block which is called <b>local</b> variables.</li><br/>
<li>Outside of all functions which is called <b>global</b> variables.</li><br/>
<li>In the definition of function parameters which are called <b>formal</b> parameters.</li><br/>
</ul>
<p>Let us understand what are <b>local</b> and <b>global</b> variables, and <b>formal</b> parameters.</p>
<h2>Local Variables</h2>
<p>Variables that are declared inside a function or block are called local variables. They can be used only by statements 
that are inside that function or block of code. Local variables are not known to functions outside their own. The following  example shows how local variables are used. Here all the variables a, b, and c are local to main() function.</p>
<pre>
#include &lt;stdio.h&gt;
 
int main () {

  /* local variable declaration */
  int a, b;
  int c;
 
  /* actual initialization */
  a = 10;
  b = 20;
  c = a + b;
 
  printf ("value of a = %d, b = %d and c = %d\n", a, b, c);
 
  return 0;
}
</pre>
<h2>Global Variables</h2>
<p>Global variables are defined outside a function, usually on top of the program. Global variables hold their values 
throughout the lifetime of your program and they can be accessed inside any of the functions defined for the program.</p>
<p>A global variable can be accessed by any function. That is, a global variable is available for use throughout your 
entire program after its declaration. The following program show how global variables are used in a program.</p>
<pre class="prettyprint notranslate tryit">
#include &lt;stdio.h&gt;
 
/* global variable declaration */
int g;
 
int main () {

  /* local variable declaration */
  int a, b;
 
  /* actual initialization */
  a = 10;
  b = 20;
  g = a + b;
 
  printf ("value of a = %d, b = %d and g = %d\n", a, b, g);
 
  return 0;
}
</pre>
<p>A program can have same name for local and global variables but the value of local variable inside a function will
 take preference. Here is an example &minus;</p>
<pre>
#include &lt;stdio.h&gt;
 
/* global variable declaration */
int g = 20;
 
int main () {

  /* local variable declaration */
  int g = 10;
 
  printf ("value of g = %d\n",  g);
 
  return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
value of g = 10
</pre>
<h2>Formal Parameters</h2>
<p>Formal parameters, are treated as local variables with-in a function and they take precedence over global variables.
 Following is an example &minus;</p>
<pre>
#include &lt;stdio.h&gt;
 
/* global variable declaration */
int a = 20;
 
int main () {

  /* local variable declaration in main function */
  int a = 10;
  int b = 20;
  int c = 0;

  printf ("value of a in main() = %d\n",  a);
  c = sum( a, b);
  printf ("value of c in main() = %d\n",  c);

  return 0;
}

/* function to add two integers */
int sum(int a, int b) {

   printf ("value of a in sum() = %d\n",  a);
   printf ("value of b in sum() = %d\n",  b);

   return a + b;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
value of a in main() = 10
value of a in sum() = 10
value of b in sum() = 20
value of c in main() = 30
</pre>
<h2>Initializing Local and Global Variables</h2>
<p>When a local variable is defined, it is not initialized  by the system, you must initialize it yourself. 
Global variables are initialized automatically by the system when you define them as follows &minus;</p>
<table border="1">
<tr>
<th style="width:30%">Data Type</th>
<th>Initial Default Value</th>
</tr>
<tr>
<td>int</td>
<td>0 </td>
</tr>
<tr>
<td>char</td>
<td>'\0'</td>
</tr>
<tr>
<td>float</td>
<td>0</td>
</tr>
<tr>
<td>double</td>
<td>0</td>
</tr>
<tr>
<td>pointer</td>
<td>NULL</td>
</tr>
</table>
<p>It is a good programming practice to initialize variables properly, otherwise your program may produce unexpected
 results, because uninitialized variables will take some garbage value already available at their memory location.</p>


<br/><br/><br/><br/><br/>

<a href="CFunctions.jsp">Previous</a>
<a href="CArrays.jsp">Next</a>
 
  <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>