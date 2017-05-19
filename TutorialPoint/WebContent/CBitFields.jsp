<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Bit Fields In C</title>
</head>
<body>

<header>
eduOnline
</header>

<h1> BIT FIELDS IN C</h1>

<p>The above structure requires 4 bytes of memory space for status variable, but only 2 bits will be used to 
store the values.</p>
<p>If you will use up to 32 variables each one with a width of 1 bit, then also the status structure will use 4 bytes.
 However as soon as you have 33 variables, it will allocate the next slot of the memory and it will start using 8 bytes. 
 Let us check the following example to understand the concept &minus;</p>
<pre>
#include &lt;stdio.h&gt;
#include &lt;string.h&gt;

/* define simple structure */
struct {
   unsigned int widthValidated;
   unsigned int heightValidated;
} status1;

/* define a structure with bit fields */
struct {
   unsigned int widthValidated : 1;
   unsigned int heightValidated : 1;
} status2;
 
int main( ) {

   printf( "Memory size occupied by status1 : %d\n", sizeof(status1));
   printf( "Memory size occupied by status2 : %d\n", sizeof(status2));

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
Memory size occupied by status1 : 8
Memory size occupied by status2 : 4
</pre>
<h2>Bit Field Declaration</h2>
<p>The declaration of a bit-field has the following form inside a structure &minus;</p>
<pre>
struct {
   type [member_name] : width ;
};
</pre>
<p>The following table describes the variable elements of a bit field &minus;</p>
<table border="1">
<tr>
<th style="width:20%">Elements</th>
<th>Description</th>
</tr>
<tr>
<td>type</td>
<td>An integer type that determines how a bit-field's value is interpreted. The type may be int, signed int,
 or unsigned int.</td>
</tr>
<tr>
<td>member_name</td>
<td>The name of the bit-field.</td>
</tr>
<tr>
<td>width</td>
<td>The number of bits in the bit-field. The width must be less than or equal to the bit width of the specified type.</td>
</tr>
</table>
<p>The variables defined with a predefined width are called <b>bit fields</b>. A bit field can hold more than a single bit;
 for example, if you need a variable to store a value from 0 to 7, then you can define a bit field with a width of 3 bits
  as follows &minus;</p>
<pre>
struct {
   unsigned int age : 3;
} Age;
</pre>
<p>The above structure definition instructs the C compiler that the age variable is going to use only 3 bits 
to store the value. If you try to use more than 3 bits, then it will not allow you to do so.
 Let us try the following example &minus;</p>
<pre>
#include &lt;stdio.h&gt;
#include &lt;string.h&gt;

struct {
   unsigned int age : 3;
} Age;

int main( ) {

   Age.age = 4;
   printf( "Sizeof( Age ) : %d\n", sizeof(Age) );
   printf( "Age.age : %d\n", Age.age );

   Age.age = 7;
   printf( "Age.age : %d\n", Age.age );

   Age.age = 8;
   printf( "Age.age : %d\n", Age.age );

   return 0;
}
</pre>
<p>When the above code is compiled it will compile with a warning and when executed,
 it produces the following result &minus;</p>
<pre>
Sizeof( Age ) : 4
Age.age : 4
Age.age : 7
Age.age : 0
</pre>

<br/><br/><br/><br/><br/>

<a href="CUnions.jsp">Previous</a>
<a href="CTypedef.jsp">Next</a>

 <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>