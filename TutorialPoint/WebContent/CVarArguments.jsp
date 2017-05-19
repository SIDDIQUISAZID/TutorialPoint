<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Variable Arguments In C</title>
</head>
<body>
<header>
eduOnline
</header>

<h1>VARIABLE ARGUMENTS IN C</h1>

<p>Sometimes, you may come across a situation, when you want to have a function, which can take variable number of arguments,
 i.e., parameters, instead of predefined number of parameters. The C programming language provides a solution for this situation 
 and you are allowed to define a function which can accept variable number of parameters based on your requirement.
  The following example shows the definition of such a function.</p>
<pre>
int func(int, ... ) {
   .
   .
   .
}

int main() {
   func(1, 2, 3);
   func(1, 2, 3, 4);
}
</pre>
<p>It should be noted that the function <b>func()</b> has its last argument as ellipses, i.e. three dotes
 (<b>...</b>) and the one just before the ellipses is always an <b>int</b> which will represent the total number 
 variable arguments passed. To use such functionality, you need to make use of <b>stdarg.h</b> header file which provides 
 the functions and macros to implement the functionality of variable arguments and follow the given steps &minus;</p>
<ul>
<li>Define a function with its last parameter as ellipses and the one just before the ellipses is always an
 <b>int</b> which will represent the number of arguments.</li><br/>
<li>Create a <b>va_list</b> type variable in the function definition. This type is defined in stdarg.h header file.</li><br/>
<li>Use <b>int</b> parameter and <b>va_start</b> macro to initialize the <b>va_list</b> variable to an argument list.
 The macro va_start is defined in stdarg.h header file.</li><br/>
<li>Use <b>va_arg</b> macro and <b>va_list</b> variable to access each item in argument list.</li><br/>
<li>Use a macro <b>va_end</b> to clean up the memory assigned to <b>va_list</b> variable.</li><br/>
</ul>
<p>Now let us follow the above steps and write down a simple function which can take the variable number of parameters 
and return their average &minus;</p>
<pre>
#include &lt;stdio.h&gt;
#include &lt;stdarg.h&gt;

double average(int num,...) {

   va_list valist;
   double sum = 0.0;
   int i;

   /* initialize valist for num number of arguments */
   va_start(valist, num);

   /* access all the arguments assigned to valist */
   for (i = 0; i &lt; num; i++) {
      sum += va_arg(valist, int);
   }
	
   /* clean memory reserved for valist */
   va_end(valist);

   return sum/num;
}

int main() {
   printf("Average of 2, 3, 4, 5 = %f\n", average(4, 2,3,4,5));
   printf("Average of 5, 10, 15 = %f\n", average(3, 5,10,15));
}
</pre>
<p>When the above code is compiled and executed, it produces the following result. It should be noted that the
 function <b>average()</b> has been called twice and each time the first argument represents the total number of variable 
 arguments being passed. Only ellipses will be used to pass variable number of arguments.</p>
<pre>
Average of 2, 3, 4, 5 = 3.500000
Average of 5, 10, 15 = 10.000000
</pre>


<br/><br/><br/><br/><br/>

<a href="Crecursion.jsp">Previous</a>
<a href="CMemoryMgt.jsp">Next</a>

 <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>