<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C++ Comments</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>C++ COMMENTS</h1>


<p>Program comments are explanatory statements that you can include in the C++ code that you write and helps anyone reading it's source code. All programming languages allow for some form of comments.</p>
<p>C++ supports single-line and multi-line comments. All characters available inside any comment are ignored by C++ compiler.</p>
<p>C++ comments start with /* and end with */. For example:</p>
<pre class="prettyprint notranslate">
/* This is a comment */

/* C++ comments can  also
 * span multiple lines
 */
</pre>
<p>A comment can also start with //, extending to the end of the line. For example:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;

main()
{
   cout &lt;&lt; "Hello World"; // prints Hello World

   return 0;
}
</pre>
<p>When the above code is compiled, it will ignore <b>// prints Hello World</b> and final executable will produce the following result:</p>
<pre class="prettyprint notranslate">
Hello World
</pre>
<p>Within a /* and */ comment, // characters have no special meaning. Within a // comment, /* and */ have no special meaning. Thus, you can "nest" one kind of comment within the other kind. For example:</p>
<pre class="prettyprint notranslate">
/* Comment out printing of Hello World:

cout &lt;&lt; "Hello World"; // prints Hello World

*/
</pre>


<br/><br/><br/><br/><br/>
<a href="C++Syntax.jsp">Previous</a>
<a href="C++Datatypes.jsp">Next</a>

<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>