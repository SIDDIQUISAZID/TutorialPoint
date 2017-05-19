<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C++ Variable Scope</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>C++ VARIABLE SCOPE</h1>

<p>A scope is a region of the program and broadly speaking there are three places, where variables can be declared:</p>
<ul class="list">
<li><p>Inside a function or a block which is called local variables,</p></li>
<li><p>In the definition of function parameters which is called formal parameters.</p></li>
<li><p>Outside of all functions which is called global variables.</p></li>
</ul>
<p>We will learn what is a function and it's parameter in subsequent chapters. Here let us explain what are local and global variables.</p>
<h2>Local Variables:</h2>
<p>Variables that are declared inside a function or block are local variables. They can be used only by statements that are inside that function or block of code. Local variables are not known to functions outside their own. Following is the example using local variables:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;
 
int main ()
{
  // Local variable declaration:
  int a, b;
  int c;
 
  // actual initialization
  a = 10;
  b = 20;
  c = a + b;
 
  cout &lt;&lt; c;
 
  return 0;
}
</pre>
<h2>Global Variables:</h2>
<p>Global variables are defined outside of all the functions, usually on top of the program. The global variables will hold their value throughout the life-time of your program.</p>
<p>A global variable can be accessed by any function. That is, a global variable is available for use throughout your entire program after its declaration. Following is the example using global and local variables:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;
 
// Global variable declaration:
int g;
 
int main ()
{
  // Local variable declaration:
  int a, b;
 
  // actual initialization
  a = 10;
  b = 20;
  g = a + b;
 
  cout &lt;&lt; g;
 
  return 0;
}
</pre>
<p>A program can have same name for local and global variables but value of local variable inside a function will take preference. For example:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;
 
// Global variable declaration:
int g = 20;
 
int main ()
{
  // Local variable declaration:
  int g = 10;
 
  cout &lt;&lt; g;
 
  return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="prettyprint notranslate">
10
</pre>
<h2>Initializing Local and Global Variables:</h2>
<p>When a local variable is defined, it is not initialized by the system, you must initialize it yourself. Global variables are initialized automatically by the system when you define them as follows:</p>
<table class="table table-bordered">
<tr>
<th width="30%">Data Type</th><th>Initializer</th></tr>
<tr><td>   int     </td><td>  0    </td> </tr>
<tr><td>   char    </td><td>  '\0' </td> </tr>
<tr><td>   float   </td><td>  0    </td> </tr>
<tr><td>   double   </td><td>  0    </td> </tr>
<tr><td>   pointer </td><td>  NULL </td> </tr>
</table>
<p>It is a good programming practice to initialize variables properly, otherwise sometimes program would produce unexpected result.</p>



<br/><br/><br/><br/><br/>
<a href="C++Variabletypes.jsp">Previous</a>
<a href="C++Constants.jsp">Next</a>

<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>