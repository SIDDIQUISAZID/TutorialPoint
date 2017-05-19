<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Memory Management In C</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>MEMORY MANAGEMENT IN C</h1>

<p>This chapter explains dynamic memory management in C. The C programming language provides several functions
 for memory allocation and management. These functions can be found in the <b>&lt;stdlib.h&gt;</b> header file.</p>
<table border="1">
<tr>
<th>S.N.</th>
<th style="text-align:center;">Function &amp; Description</th>
</tr>
<tr>
<td>1</td>
<td><p><b>void *calloc(int num, int size);</b></p>
<p>This function allocates an array of <b>num</b> elements each of which size in bytes will be <b>size</b>.</p>
</td>
</tr>
<tr>
<td>2</td>
<td><p><b>void free(void *address);</b></p>
<p>This function releases a block of memory block specified by address.</p>
</td>
</tr>
<tr>
<td>3</td>
<td><p><b>void *malloc(int num);</b></p>
<p>This function allocates an array of <b>num</b> bytes and leave them initialized.</p>
</td>
</tr>
<tr>
<td>4</td>
<td><p><b>void *realloc(void *address, int newsize);</b></p>
<p>This function re-allocates memory extending it upto <b>newsize</b>.</p>
</td>
</tr>
</table>
<h2>Allocating Memory Dynamically</h2>
<p>While programming, if you are aware of the size of an array, then it is easy and you can define it as an array.
 For example, to store a name of any person, it can go up to a maximum of 100 characters, so you can define something as
  follows &minus;</p>
<pre>
char name[100];
</pre>
<p>But now let us consider a situation where you have no idea about the length of the text you need to store,
 for example, you want to store a detailed description about a topic. Here we need to define a pointer to character
  without defining how much memory is required and later, based on requirement, we can allocate memory as shown
   in the below example &minus;</p>
<pre>
#include &lt;stdio.h&gt;
#include &lt;stdlib.h&gt;
#include &lt;string.h&gt;

int main() {

   char name[100];
   char *description;

   strcpy(name, "Zara Ali");

   /* allocate memory dynamically */
   description = malloc( 200 * sizeof(char) );
	
   if( description == NULL ) {
      fprintf(stderr, "Error - unable to allocate required memory\n");
   }
   else {
      strcpy( description, "Zara ali a DPS student in class 10th");
   }
   
   printf("Name = %s\n", name );
   printf("Description: %s\n", description );
}
</pre>
<p>When the above code is compiled and executed, it produces the following result.</p>
<pre>
Name = Zara Ali
Description: Zara ali a DPS student in class 10th
</pre>
<p>Same program can be written using <b>calloc();</b> only thing is you need to replace malloc with calloc as follows
 &minus;</p>
<pre>
calloc(200, sizeof(char));
</pre>
<p>So you have complete control and you can pass any size value while allocating memory, unlike arrays where once the
 size defined, you cannot change it.</p>
<h2>Resizing and Releasing Memory</h2>
<p>When your program comes out, operating system automatically release all the memory allocated by your program but 
as a good practice when you are not in need of memory anymore then you should release that memory by calling the function
 <b>free()</b>.</p>
<p>Alternatively, you can increase or decrease the size of an allocated memory block by calling the function <b>realloc()</b>.
 Let us check the above program once again and make use of realloc() and free() functions &minus;</p>
<pre>
#include &lt;stdio.h&gt;
#include &lt;stdlib.h&gt;
#include &lt;string.h&gt;

int main() {

   char name[100];
   char *description;

   strcpy(name, "Zara Ali");

   /* allocate memory dynamically */
   description = malloc( 30 * sizeof(char) );
	
   if( description == NULL ) {
      fprintf(stderr, "Error - unable to allocate required memory\n");
   }
   else {
      strcpy( description, "Zara ali a DPS student.");
   }
	
   /* suppose you want to store bigger description */
   description = realloc( description, 100 * sizeof(char) );
	
   if( description == NULL ) {
      fprintf(stderr, "Error - unable to allocate required memory\n");
   }
   else {
      strcat( description, "She is in class 10th");
   }
   
   printf("Name = %s\n", name );
   printf("Description: %s\n", description );

   /* release memory using free() function */
   free(description);
}
</pre>
<p>When the above code is compiled and executed, it produces the following result.</p>
<pre>
Name = Zara Ali
Description: Zara ali a DPS student.She is in class 10th
</pre>
<p>You can try the above example without re-allocating extra memory, and strcat() function will give an error due 
to lack of available memory in description.</p>


<br/><br/><br/><br/><br/>

<a href="CVarArguments.jsp">Previous</a>
<a href="CCmdargs.jsp">Next</a>

 <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>