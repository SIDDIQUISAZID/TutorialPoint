<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C++ References</title>
</head>
<body>


<header>
eduOnline
</header>

<h1>C++ REFERENCES</h1>

<p>A reference variable is an alias, that is, another name for an already existing variable. Once a reference is initialized with a variable, either the variable name or the reference name may be used to refer to the variable.</p>
<h2>C++ References vs Pointers:</h2>
<p>References are often confused with pointers but three major differences between references and pointers are:</p>
<ul class="list">
<li><p>You cannot have NULL references. You must always be able to assume that a reference is connected to a legitimate piece of storage.</p></li>
<li><p>Once a reference is initialized to an object, it cannot be changed to refer to another object. Pointers can be pointed to another object at any time.</p></li>
<li><p>A reference must be initialized when it is created. Pointers can be initialized at any time.</p></li>
</ul>
<h2>Creating References in C++:</h2>
<p>Think of a variable name as a label attached to the variable's location in memory. You can then think of a reference as a second label attached to that memory location. Therefore, you can access the contents of the variable through either the original variable name or the reference. For example, suppose we have the following example:</p>
<pre class="prettyprint notranslate">
int    i = 17;
</pre>
<p>We can declare reference variables for i as follows.</p>
<pre class="prettyprint notranslate">
int&amp;    r = i;
</pre>
<p>Read the &amp; in these declarations as <b>reference</b>. Thus, read the first declaration as "r is an integer reference initialized to i" and read the second declaration as "s is a double reference initialized to d.". Following example makes use of references on int and double:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
 
using namespace std;
 
int main ()
{
   // declare simple variables
   int    i;
   double d;
 
   // declare reference variables
   int&amp;    r = i;
   double&amp; s = d;
   
   i = 5;
   cout &lt;&lt; "Value of i : " &lt;&lt; i &lt;&lt; endl;
   cout &lt;&lt; "Value of i reference : " &lt;&lt; r  &lt;&lt; endl;
 
   d = 11.7;
   cout &lt;&lt; "Value of d : " &lt;&lt; d &lt;&lt; endl;
   cout &lt;&lt; "Value of d reference : " &lt;&lt; s  &lt;&lt; endl;
   
   return 0;
}
</pre>
<p>When the above code is compiled together and executed, it produces the following result:</p>
<pre class="prettyprint notranslate">
Value of i : 5
Value of i reference : 5
Value of d : 11.7
Value of d reference : 11.7
</pre>
<p>References are usually used for function argument lists and function return values. So following are two important subjects related to C++ references which should be clear to a C++ programmer:</p>
<table class="table table-bordered">
<tr><th width="40%">Concept</th><th>Description</th></tr>
<tr><td>References as parameters</td><td>C++ supports passing references as function parameter more safely than parameters.</td> </tr>
<tr><td>Reference as return value</td><td>You can return reference from a C++ function like a any other data type can be returned.</td> </tr>
</table>


<br/><br/><br/><br/><br/>
<a href="C++Pointers.jsp">Previous</a>
<a href="C++IO.jsp">Next</a>

<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>