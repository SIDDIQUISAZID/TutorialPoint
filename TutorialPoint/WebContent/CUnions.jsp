<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Unions In C</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>UNIONS IN C </h1>

<p>A <b>union</b> is a special data type available in C that allows to store different data types in the same memory location.
 You can define a union with many members, but only one member can contain a value at any given time. 
 Unions provide an efficient way of using the same memory location for multiple-purpose.</p>
<h2>Defining a Union</h2>
<p>To define a union, you must use the <b>union</b> statement in the same way as you did while defining a structure.
 The union statement defines a new data type with more than one member for your program.
  The format of the union statement is as follows &minus;</p>
<pre>
union [union tag] {
   member definition;
   member definition;
   ...
   member definition;
} [one or more union variables];  
</pre>
<p>The <b>union tag</b> is optional and each member definition is a normal variable definition, such as int i; 
or float f; or any other valid variable definition. At the end of the union's definition, before the final semicolon, 
you can specify one or more union variables but it is optional. Here is the way you would define a union type named
 Data having three members i, f, and str &minus;</p>
<pre>
union Data {
   int i;
   float f;
   char str[20];
} data;  
</pre>
<p>Now, a variable of <b>Data</b> type can store an integer, a floating-point number, or a string of characters.
 It means a single variable, i.e., same memory location, can be used to store multiple types of data.
  You can use any built-in or user defined data types inside a union based on your requirement.</p>
<p>The memory occupied by a union will be large enough to hold the largest member of the union. For example, 
in the above example, Data type will occupy 20 bytes of memory space because this is the maximum space which
 can be occupied by a character string. The following example displays the total memory size occupied by
  the above union &minus;</p>
<pre>
#include &lt;stdio.h&gt;
#include &lt;string.h&gt;
 
union Data {
   int i;
   float f;
   char str[20];
};
 
int main( ) {

   union Data data;        

   printf( "Memory size occupied by data : %d\n", sizeof(data));

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
Memory size occupied by data : 20
</pre>
<h2>Accessing Union Members</h2>
<p>To access any member of a union, we use the <b>member access operator (.)</b>.
 The member access operator is coded as a period between the union variable name and the union member that
  we wish to access. You would use the keyword <b>union</b> to define variables of union type.
   The following example shows how to use unions in a program &minus;</p>
<pre>
#include &lt;stdio.h&gt;
#include &lt;string.h&gt;
 
union Data {
   int i;
   float f;
   char str[20];
};
 
int main( ) {

   union Data data;        

   data.i = 10;
   data.f = 220.5;
   strcpy( data.str, "C Programming");

   printf( "data.i : %d\n", data.i);
   printf( "data.f : %f\n", data.f);
   printf( "data.str : %s\n", data.str);

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
data.i : 1917853763
data.f : 4122360580327794860452759994368.000000
data.str : C Programming
</pre>
<p>Here, we can see that the values of <b>i</b> and <b>f</b> members of union got corrupted because
 the final value assigned to the variable has occupied the memory location and this is the reason that
  the value of <b>str</b> member is getting printed very well.</p>
<p>Now let's look into the same example once again where we will use one variable at a time which is
 the main purpose of having unions &minus;</p>
<pre>
#include &lt;stdio.h&gt;
#include &lt;string.h&gt;
 
union Data {
   int i;
   float f;
   char str[20];
};
 
int main( ) {

   union Data data;        

   data.i = 10;
   printf( "data.i : %d\n", data.i);
   
   data.f = 220.5;
   printf( "data.f : %f\n", data.f);
   
   strcpy( data.str, "C Programming");
   printf( "data.str : %s\n", data.str);

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
data.i : 10
data.f : 220.500000
data.str : C Programming
</pre>
<p>Here, all the members are getting printed very well because one member is being used at a time.</p>


<br/><br/><br/><br/><br/>

<a href="CStructures.jsp">Previous</a>
<a href="CBitFields.jsp">Next</a>
 <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>