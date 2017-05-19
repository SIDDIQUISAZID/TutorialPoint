<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pointers In C</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>POINTERS IN C</h1>

<p>Pointers in C are easy and fun to learn. Some C programming tasks are performed more easily with pointers, and other tasks,
 such as dynamic memory allocation, cannot be performed without using pointers. So it becomes necessary to learn pointers to 
 become a perfect C programmer. Let's start learning them in simple and easy steps.</p>
<p>As you know, every variable is a memory location and every memory location has its address defined which can
 be accessed using ampersand (&amp;) operator, which denotes an address in memory. Consider the following example, 
 which prints the address of the variables defined &minus;</p>
<pre>
#include &lt;stdio.h&gt;

int main () {

   int  var1;
   char var2[10];

   printf("Address of var1 variable: %x\n", &amp;var1  );
   printf("Address of var2 variable: %x\n", &amp;var2  );

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
Address of var1 variable: bff5a400
Address of var2 variable: bff5a3f6
</pre>
<h2>What are Pointers?</h2>
<p>A <b>pointer</b> is a variable whose value is the address of another variable, i.e., direct address of the memory location. Like any variable or constant, you must declare a pointer before using it to store any variable address. The general form of a pointer variable declaration is &minus;</p>
<pre>
type *var-name;
</pre>
<p>Here, <b>type</b> is the pointer's base type; it must be a valid C data type and <b>var-name</b> is 
the name of the pointer variable. The asterisk * used to declare a pointer is the same asterisk used for multiplication.
 However, in this statement the asterisk is being used to designate a variable as a pointer. Take a look at some 
 of the valid pointer declarations &minus;</p>
<pre>
int    *ip;    /* pointer to an integer */
double *dp;    /* pointer to a double */
float  *fp;    /* pointer to a float */
char   *ch     /* pointer to a character */
</pre>
<p>The actual data type of the value of all pointers, whether integer, float, character, or otherwise, is the same, 
a long hexadecimal number that represents a memory address. The only difference between pointers of different data types
 is the data type of the variable or constant that the pointer points to.</p>
<h2>How to Use Pointers?</h2>
<p>There are a few important operations, which we will do with the help of pointers very frequently. <b>(a)</b> We define
 a pointer variable, <b>(b)</b> assign the address of a variable to a pointer and <b>(c)</b> finally access the value at 
 the address available in the pointer variable. This is done by using unary operator <b>*</b> that returns the value of 
 the variable located at the address specified by its operand. The following example makes use of these operations &minus;</p>
<pre>
#include &lt;stdio.h&gt;

int main () {

   int  var = 20;   /* actual variable declaration */
   int  *ip;        /* pointer variable declaration */

   ip = &amp;var;  /* store address of var in pointer variable*/

   printf("Address of var variable: %x\n", &amp;var  );

   /* address stored in pointer variable */
   printf("Address stored in ip variable: %x\n", ip );

   /* access the value using the pointer */
   printf("Value of *ip variable: %d\n", *ip );

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
Address of var variable: bffd8b3c
Address stored in ip variable: bffd8b3c
Value of *ip variable: 20
</pre>
<h2>NULL Pointers</h2>
<p>It is always a good practice to assign a NULL value to a pointer variable in case you do not have an exact address 
to be assigned. This is done at the time of variable declaration. A pointer that is assigned NULL is called a <b>null</b>
 pointer.</p>
<p>The NULL pointer is a constant with a value of zero defined in several standard libraries. 
Consider the following program &minus;</p>
<pre>
#include &lt;stdio.h&gt;

int main () {

   int  *ptr = NULL;

   printf("The value of ptr is : %x\n", ptr  );
 
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
The value of ptr is 0
</pre>
<p>In most of the operating systems, programs are not permitted to access memory at address 0 because 
that memory is reserved by the operating system. However, the memory address 0 has special significance; 
it signals that the pointer is not intended to point to an accessible memory location. 
But by convention, if a pointer contains the null (zero) value, it is assumed to point to nothing.</p>
<p>To check for a null pointer, you can use an 'if' statement as follows &minus;</p>
<pre>
if(ptr)     /* succeeds if p is not null */
if(!ptr)    /* succeeds if p is null */
</pre>
<h2>Pointers in Detail</h2>
<p>Pointers have many but easy concepts and they are very important to C programming. The following important pointer 
concepts should be clear to any C programmer &minus;</p>
<table border="1">
<tr>
<th>S.N.</th>
<th style="text-align:center;">Concept &amp; Description</th>
</tr>
<tr>
<td>1</td>
<td>Pointer arithmetic
<p>There are four arithmetic operators that can be used in pointers: ++, --, +, -</p></td> 
</tr>
<tr>
<td>2</td>
<td>Array of pointers
<p>You can define arrays to hold a number of pointers.</p></td> 
</tr>
<tr>
<td>3</td>
<td>Pointer to pointer
<p>C allows you to have pointer on a pointer and so on.</p></td> 
</tr>
<tr>
<td>4</td>
<td>Passing pointers to functions in C
<p>Passing an argument by reference or by address enable the passed argument to be changed in the calling function by the called function.</p></td> 
</tr>
<tr>
<td>5</td>
<td>Return pointer from functions in C
<p>C allows a function to return a pointer to the local variable, static variable, and dynamically allocated memory as well.
</p></td> 
</tr>
</table>


<br/><br/><br/><br/><br/>

<a href="CArrays.jsp">Previous</a>
<a href="CStrings.jsp">Next</a>


 <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>