<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Arrays In C</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>ARRAYS IN C</h1>

<p>Arrays a kind of data structure that can store a fixed-size sequential collection of elements of the same type.
 An array is used to store a collection of data, but it is often more useful to think of an array as a collection of
  variables of the same type.</p>
<p>Instead of declaring individual variables, such as number0, number1, ..., and number99, you declare one array variable
 such as numbers and use numbers[0], numbers[1], and ..., numbers[99] to represent individual variables. A specific element in
  an array is accessed by an index.</p>
<p>All arrays consist of contiguous memory locations. The lowest address corresponds to the first element and the highest
 address to the last element.</p>
<img src=".\Images\arrays1.jpg" alt="Arrays in C" />
<h2>Declaring Arrays</h2>
<p>To declare an array in C, a programmer specifies the type of the elements and the number of elements required by 
an array as follows &minus;</p>
<pre>
type arrayName [ arraySize ];
</pre>
<p>This is called a <i>single-dimensional</i> array. The <b>arraySize</b> must be an integer constant greater than zero
 and <b>type</b> can be any valid C data type. For example, to declare a 10-element array called <b>balance</b> of type double,
  use this statement &minus;</p>
<pre>
double balance[10];
</pre>
<p>Here <i>balance</i> is a variable array which is sufficient to hold up to 10 double numbers.</p>
<h2>Initializing Arrays</h2>
<p>You can initialize an array in C either one by one or using a single statement as follows &minus;</p>
<pre>
double balance[5] = {1000.0, 2.0, 3.4, 7.0, 50.0};
</pre>
<p>The number of values between braces { } cannot be larger than the number of elements that we declare for the array between
 square brackets [ ].</p>
<p>If you omit the size of the array, an array just big enough to hold the initialization is created. 
Therefore, if you write &minus;</p>
<pre>
double balance[] = {1000.0, 2.0, 3.4, 7.0, 50.0};
</pre>
<p>You will create exactly the same array as you did in the previous example. Following is an example to assign 
a single element of the array &minus;</p>
<pre>
balance[4] = 50.0;
</pre>
<p>The above statement assigns the 5<sup>th</sup> element in the array with a value of 50.0. All arrays 
have 0 as the index of their first element which is also called the base index and the last index of an array will
 be total size of the array minus 1. Shown below is the pictorial representation of the array we discussed above &minus;</p>
<img src=".\Images\array2jpg.jpg" alt="Array Presentation" />
<h2>Accessing Array Elements</h2>
<p>An element is accessed by indexing the array name. This is done by placing the index of the element within
 square brackets after the name of the array. For example &minus;</p>
<pre>
double salary = balance[9];
</pre>
<p>The above statement will take the 10<sup>th</sup> element from the array and assign the value to salary variable.
 The following example Shows how to use all the three above mentioned concepts viz. declaration, assignment, and accessing
  arrays &minus;</p>
<pre>
#include &lt;stdio.h&gt;
 
int main () {

   int n[ 10 ]; /* n is an array of 10 integers */
   int i,j;
 
   /* initialize elements of array n to 0 */         
   for ( i = 0; i &lt; 10; i++ ) {
      n[ i ] = i + 100; /* set element at location i to i + 100 */
   }
   
   /* output each array element's value */
   for (j = 0; j &lt; 10; j++ ) {
      printf("Element[%d] = %d\n", j, n[j] );
   }
 
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
Element[0] = 100
Element[1] = 101
Element[2] = 102
Element[3] = 103
Element[4] = 104
Element[5] = 105
Element[6] = 106
Element[7] = 107
Element[8] = 108
Element[9] = 109
</pre>
<h2>Arrays in Detail</h2>
<p>Arrays are important to C and should need a lot more attention. The following important concepts related to array should be
 clear to a C programmer &minus;</p>
<table border="1">
<tr>
<th>S.N.</th>
<th style="text-align:center;">Concept &amp; Description</th>
</tr>
<tr>
<td>1</td>
<td>Multi-dimensional arrays
<p>C supports multidimensional arrays. The simplest form of the multidimensional array is the two-dimensional array.</p></td> 
</tr>
<tr>
<td>2</td>
<td>Passing arrays to functions
<p>You can pass to the function a pointer to an array by specifying the array's name without an index.</p></td> 
</tr>
<tr>
<td>3</td>
<td>Return array from a function
<p>C allows a function to return an array.</p></td> 
</tr>
<tr>
<td>4</td>
<td>Pointer to an array
<p>You can generate a pointer to the first element of an array by simply specifying the array name, without any index.</p></td> 
</tr>
</table>

<br/><br/><br/><br/><br/>

<a href="CScopeRules.jsp">Previous</a>
<a href="CPointers.jsp">Next</a>

 <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>