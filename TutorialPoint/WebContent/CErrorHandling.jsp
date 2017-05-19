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

<h1>ERROR HANDLING IN C</h1>

<p>As such, C programming does not provide direct support for error handling but being a system programming language,
 it provides you access at lower level in the form of return values. Most of the C or even Unix function calls 
 return -1 or NULL in case of any error and set an error code <b>errno</b>. It is set as a global variable and 
 indicates an error occurred during any function call. You can find various error codes defined 
 in &lt;error.h&gt; header file.</p>
<p>So a C programmer can check the returned values and can take appropriate action depending on the return value. 
It is a good practice, to set errno to 0 at the time of initializing a program. A value of 0 indicates that there is no error
 in the program.</p>
<h2>errno, perror(). and strerror()</h2>
<p>The C programming language provides <b>perror()</b> and <b>strerror()</b> functions which can be used to display the 
text message associated with <b>errno</b>.</p>
<ul class="list">
<li>The <b>perror()</b> function displays the string you pass to it, followed by a colon, a space, and then the textual
 representation of the current errno value.</li><br/>
<li>The <b>strerror()</b> function, which returns a pointer to the textual representation of the current errno value.</li><br/>
</ul>
<p>Let's try to simulate an error condition and try to open a file which does not exist. Here I'm using both the
 functions to show the usage, but you can use one or more ways of printing your errors. Second important point 
 to note is that you should use <b>stderr</b> file stream to output all the errors.</p>
<pre>
#include &lt;stdio.h&gt;
#include &lt;errno.h&gt;
#include &lt;string.h&gt;

extern int errno ;

int main () {

   FILE * pf;
   int errnum;
   pf = fopen ("unexist.txt", "rb");
	
   if (pf == NULL) {
   
      errnum = errno;
      fprintf(stderr, "Value of errno: %d\n", errno);
      perror("Error printed by perror");
      fprintf(stderr, "Error opening file: %s\n", strerror( errnum ));
   }
   else {
   
      fclose (pf);
   }
   
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
Value of errno: 2
Error printed by perror: No such file or directory
Error opening file: No such file or directory
</pre>
<h2>Divide by Zero Errors</h2>
<p>It is a common problem that at the time of dividing any number, programmers do not check if a divisor is zero and
 finally it creates a runtime error.</p>
<p>The code below fixes this by checking if the divisor is zero before dividing &minus;</p>
<pre>
#include &lt;stdio.h&gt;
#include &lt;stdlib.h&gt;

main() {

   int dividend = 20;
   int divisor = 0;
   int quotient;
 
   if( divisor == 0){
      fprintf(stderr, "Division by zero! Exiting...\n");
      exit(-1);
   }
   
   quotient = dividend / divisor;
   fprintf(stderr, "Value of quotient : %d\n", quotient );

   exit(0);
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
Division by zero! Exiting...
</pre>
<h2>Program Exit Status</h2>
<p>It is a common practice to exit with a value of EXIT_SUCCESS in case of program coming out after a successful operation.
 Here, EXIT_SUCCESS is a macro and it is defined as 0.</p>
<p>If you have an error condition in your program and you are coming out then you should exit with a status EXIT_FAILURE 
which is defined as -1. So let's write above program as follows &minus;</p>
<pre>
#include &lt;stdio.h&gt;
#include &lt;stdlib.h&gt;

main() {

   int dividend = 20;
   int divisor = 5;
   int quotient;
 
   if( divisor == 0) {
      fprintf(stderr, "Division by zero! Exiting...\n");
      exit(EXIT_FAILURE);
   }
	
   quotient = dividend / divisor;
   fprintf(stderr, "Value of quotient : %d\n", quotient );

   exit(EXIT_SUCCESS);
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
Value of quotient : 4
</pre>


<br/><br/><br/><br/><br/>

<a href="CTypeCasting.jsp">Previous</a>
<a href="CRecursion.jsp">Next</a>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>



</body>
</html>