<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Command Line Arguments In C</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>COMMAND LINE ARGUMENTS IN C</h1>

<p>It is possible to pass some values from the command line to your C programs when they are executed. These values are
 called <b>command line arguments</b> and many times they are important for your program especially when you want to control
  your program from outside instead of hard coding those values inside the code.</p>
<p>The command line arguments are handled using main() function arguments where <b>argc</b> refers to the
 number of arguments passed, and <b>argv[]</b> is a pointer array which points to each argument passed to the program. 
 Following is a simple example which checks if there is any argument supplied from the command line and take action 
 accordingly &minus;</p>
<pre>
#include &lt;stdio.h&gt;

int main( int argc, char *argv[] )  {

   if( argc == 2 ) {
      printf("The argument supplied is %s\n", argv[1]);
   }
   else if( argc &gt; 2 ) {
      printf("Too many arguments supplied.\n");
   }
   else {
      printf("One argument expected.\n");
   }
}
</pre>
<p>When the above code is compiled and executed with single argument, it produces the following result.</p>
<pre>
$./a.out testing
The argument supplied is testing
</pre>
<p>When the above code is compiled and executed with a two arguments, it produces the following result.</p>
<pre>
$./a.out testing1 testing2
Too many arguments supplied.
</pre>
<p>When the above code is compiled and executed without passing any argument, it produces the following result.</p>
<pre>
$./a.out
One argument expected
</pre>
<p>It should be noted that <b>argv[0]</b> holds the name of the program itself and <b>argv[1]</b> is a pointer to the first
 command line argument supplied, and *argv[n] is the last argument. If no arguments are supplied, argc will be one, and if 
 you pass one argument then <b>argc</b> is set at 2.</p>
<p>You pass all the command line arguments separated by a space, but if argument itself has a space then you can pass
 such arguments by putting them inside double quotes "" or single quotes ''. Let us re-write above example once again where
  we will print program name and we also pass a command line argument by putting inside double quotes &minus;</p>
<pre>
#include &lt;stdio.h&gt;

int main( int argc, char *argv[] )  {

   printf("Program name %s\n", argv[0]);
 
   if( argc == 2 ) {
      printf("The argument supplied is %s\n", argv[1]);
   }
   else if( argc &gt; 2 ) {
      printf("Too many arguments supplied.\n");
   }
   else {
      printf("One argument expected.\n");
   }
}
</pre>
<p>When the above code is compiled and executed with a single argument separated by space but inside double quotes,
 it produces the following result.</p>
<pre>
$./a.out "testing1 testing2"

Progranm name ./a.out
The argument supplied is testing1 testing2
</pre>


<br/><br/><br/><br/><br/>

<a href="CMemoryMgt.jsp">Previous</a>


 <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>