<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C++ Pointers</title>
</head>
<body>


<header>
eduOnline
</header>

<h1>C++ POINTERS</h1>


<p>C++ pointers are easy and fun to learn. Some C++ tasks are performed more easily with pointers, and other C++ tasks, such as dynamic memory allocation, cannot be performed without them.</p>
<p>As you know every variable is a memory location and every memory location has its address defined which can be accessed using ampersand (&amp;) operator which denotes an address in memory. Consider the following which will print the address of the variables defined:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;

using namespace std;

int main ()
{
   int  var1;
   char var2[10];

   cout &lt;&lt; "Address of var1 variable: ";
   cout &lt;&lt; &amp;var1 &lt;&lt; endl;

   cout &lt;&lt; "Address of var2 variable: ";
   cout &lt;&lt; &amp;var2 &lt;&lt; endl;

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces result something as follows:</p>
<pre class="prettyprint notranslate">
Address of var1 variable: 0xbfebd5c0
Address of var2 variable: 0xbfebd5b6
</pre>
<h2>What Are Pointers?</h2>
<p>A <b>pointer</b> is a variable whose value is the address of another variable. Like any variable or constant, you must declare a pointer before you can work with it. The general form of a pointer variable declaration is:</p>
<pre class="prettyprint notranslate">
type *var-name;
</pre>
<p>Here, <b>type</b> is the pointer's base type; it must be a valid C++ type and <b>var-name</b> is the name of the pointer variable. The asterisk you used to declare a pointer is the same asterisk that you use for multiplication. However, in this statement the asterisk is being used to designate a variable as a pointer. Following are the valid pointer declaration:</p>
<pre class="prettyprint notranslate">
int    *ip;    // pointer to an integer
double *dp;    // pointer to a double
float  *fp;    // pointer to a float
char   *ch     // pointer to character
</pre>
<p>The actual data type of the value of all pointers, whether integer, float, character, or otherwise, is the same, a long hexadecimal number that represents a memory address. The only difference between pointers of different data types is the data type of the variable or constant that the pointer points to.</p>
<h2>Using Pointers in C++:</h2>
<p>There are few important operations, which we will do with the pointers very frequently. <b>(a)</b> we define a pointer variables <b>(b)</b> assign the address of a variable to a pointer and <b>(c)</b> finally access the value at the address available in the pointer variable. This is done by using unary operator <b>*</b> that returns the value of the variable located at the address specified by its operand. Following example makes use of these operations:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;

using namespace std;

int main ()
{
   int  var = 20;   // actual variable declaration.
   int  *ip;        // pointer variable 

   ip = &amp;var;       // store address of var in pointer variable

   cout &lt;&lt; "Value of var variable: ";
   cout &lt;&lt; var &lt;&lt; endl;

   // print the address stored in ip pointer variable
   cout &lt;&lt; "Address stored in ip variable: ";
   cout &lt;&lt; ip &lt;&lt; endl;

   // access the value at the address available in pointer
   cout &lt;&lt; "Value of *ip variable: ";
   cout &lt;&lt; *ip &lt;&lt; endl;

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces result something as follows:</p>
<pre class="prettyprint notranslate">
Value of var variable: 20
Address stored in ip variable: 0xbfc601ac
Value of *ip variable: 20
</pre>
<h2>C++ Pointers in Detail:</h2>
<p>Pointers have many but easy concepts and they are very important to C++ programming. There are following few important pointer concepts which should be clear to a C++ programmer:</p>
<table class="table table-bordered">
<tr>
<th width="40%">Concept</th>
<th>Description</th>
</tr>
<tr>
<td>C++ Null Pointers</td>
<td>C++ supports null pointer, which is a constant with a value of zero defined in several standard libraries.</td> </tr>
<tr><td>C++ pointer arithmetic</td><td>There are four arithmetic operators that can be used on pointers: ++, --, +, -</td> </tr>
<tr><td>C++ pointers vs arrays</td><td>There is a close relationship between pointers and arrays. Let us check how?</td> </tr>
<tr><td>C++ array of pointers</td><td>You can define arrays to hold a number of pointers.</td> </tr>
<tr><td>C++ pointer to pointer</td><td>C++ allows you to have pointer on a pointer and so on.</td> </tr>
<tr><td>Passing pointers to functions</td><td>Passing an argument by reference or by address both enable the passed argument to be changed in the calling function by the called function.</td> </tr>
<tr><td>Return pointer from functions</td><td>C++ allows a function to return a pointer to local variable, static variable and dynamically allocated memory as well.</td> </tr>
</table>


<br/><br/><br/><br/><br/>
<a href="C++Strings.jsp">Previous</a>
<a href="C++References.jsp">Next</a>

<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>