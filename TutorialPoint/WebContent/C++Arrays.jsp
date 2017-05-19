<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C++ Arrays</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>C++ ARRAYS</h1>

<p>C++ provides a data structure, <b>the array</b>, which stores a fixed-size sequential collection of elements of the same type. An array is used to store a collection of data, but it is often more useful to think of an array as a collection of variables of the same type.</p>
<p>Instead of declaring individual variables, such as number0, number1, ..., and number99, you declare one array variable such as numbers and use numbers[0], numbers[1], and ..., numbers[99] to represent individual variables. A specific element in an array is accessed by an index. </p>
<p>All arrays consist of contiguous memory locations. The lowest address corresponds to the first element and the highest address to the last element.</p>
<h2>Declaring Arrays:</h2>
<p>To declare an array in C++, the programmer specifies the type of the elements and the number of elements required by an array as follows:</p>
<pre class="prettyprint notranslate">
type arrayName [ arraySize ];
</pre>
<p>This is called a single-dimension array. The <b>arraySize</b> must be an integer constant greater than zero and <b>type</b> can be any valid C++ data type. For example, to declare a 10-element array called balance of type double,
use this statement:</p>
<pre class="prettyprint notranslate">
double balance[10];
</pre>
<h2>Initializing Arrays:</h2>
<p>You can initialize C++ array elements either one by one or using a single statement as follows:</p>
<pre class="prettyprint notranslate">
double balance[5] = {1000.0, 2.0, 3.4, 17.0, 50.0};
</pre>
<p>The number of values between braces { } can not be larger than the number of elements that we declare for the array between square brackets [ ]. Following is an example to assign a single element of the array:</p>
<p>If you omit the size of the array, an array just big enough to hold the initialization is created.  Therefore, if you write:</p>
<pre class="prettyprint notranslate">
double balance[] = {1000.0, 2.0, 3.4, 17.0, 50.0};
</pre>
<p>You will create exactly the same array as you did in the previous example.</p>
<pre class="prettyprint notranslate">
balance[4] = 50.0;
</pre>
<p>The above statement assigns element number 5th in the array a value of 50.0. Array with 4th index will be 5th, i.e., last element because all arrays have 0 as the index of their first element which is also called base index. Following is the pictorial representaion of the same array we discussed above:</p>
<center>
<img src=".\Images\array_presentation1.jpg" alt="Array Presentation" />
</center>
<h2>Accessing Array Elements:</h2>
<p>An element is accessed by indexing the array name. This is done by placing the index of the element within square brackets after the name of the array. For example:</p>
<pre class="prettyprint notranslate">
double salary = balance[9];
</pre>
<p>The above statement will take 10th element from the array and assign the value to salary variable. Following is an example, which will use all the above-mentioned three concepts viz. declaration, assignment and accessing arrays:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;
 
#include &lt;iomanip&gt;
using std::setw;
 
int main ()
{
   int n[ 10 ]; // n is an array of 10 integers
 
   // initialize elements of array n to 0          
   for ( int i = 0; i &lt; 10; i++ )
   {
      n[ i ] = i + 100; // set element at location i to i + 100
   }
   cout &lt;&lt; "Element" &lt;&lt; setw( 13 ) &lt;&lt; "Value" &lt;&lt; endl;
 
   // output each array element's value                      
   for ( int j = 0; j &lt; 10; j++ )
   {
      cout &lt;&lt; setw( 7 )&lt;&lt; j &lt;&lt; setw( 13 ) &lt;&lt; n[ j ] &lt;&lt; endl;
   }
 
   return 0;
}
</pre>
<p>This program makes use of <b>setw()</b> function to format the output. When the above code is compiled and executed, it produces the following result:</p>
<pre class="prettyprint notranslate">
Element        Value
      0          100
      1          101
      2          102
      3          103
      4          104
      5          105
      6          106
      7          107
      8          108
      9          109
</pre>
<h2>C++ Arrays in Detail:</h2>
<p>Arrays are important to C++ and should need lots of more detail. There are following few important concepts, which should be clear to a C++ programmer:</p>
<table class="table table-bordered">
<tr><th width="40%">Concept</th><th>Description</th></tr>
<tr><td>Multi-dimensional arrays</td><td>C++ supports multidimensional arrays. The simplest form of the multidimensional array is the two-dimensional array.</td> </tr>
<tr><td>Pointer to an array</td><td>You can generate a pointer to the first element of an array by simply specifying the array name, without any index.</td> </tr>
<tr><td>Passing arrays to functions</td><td>You can pass to the function a pointer to an array by specifying the array's name without an index.</td></tr>
<tr><td>Return array from functions</td><td>C++ allows a function to return an array.</td> </tr>
</table>

<br/><br/><br/><br/><br/>
<a href="C++Numbers.jsp">Previous</a>
<a href="C++Strings.jsp">Next</a>

<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>