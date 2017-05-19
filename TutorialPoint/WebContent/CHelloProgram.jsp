<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C Program Structure</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>PROGRAM STRUCTURE</h1>

<h3>Hello World Example</h3>

<p>A C program basically consists of the following parts </p>

<ul>

<li> Preprocessor Commands </li><br/>
<li> Functions </li><br/>
<li> Variables </li><br/>
<li> Statements & Expressions</li><br/>
<li> Comments</li><br/>

</ul>

<p>Let us look at a simple code that would print the words "Hello World" </p>

<pre>

<code>

#include &lt;stdio.h&gt;

int main() {
   /* my first program in C */
   printf("Hello, World! \n");
   
   return 0;
}


</code>
</pre>

<p>Let us take a look at the various parts of the above program </p>

<ul>

<li> The first line of the program #include &lt;stdio.h&gt; is a preprocessor command,
 which tells a C compiler to include stdio.h file before going to actual compilation. </li>
 <li> The next line int main() is the main function where the program execution begins. </li>
 <li> The next line /*...*/ will be ignored by the compiler and it has been put to add additional comments in the program. 
 So such lines are called comments in the program. </li>
 <li> The next line printf(...) is another function available in C which causes the message "Hello, World!"
 to be displayed on the screen.</li>
 <li> The next line return 0; terminates the main() function and returns the value 0.</li>
 
 <br/><br/><br/><br/><br/><br/>
 <a href="CIntro.jsp">Previous</a> <a href="CSyntax.jsp">Next</a>
 
 
  <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</ul>
</body>
</html>