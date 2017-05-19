<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Typedef In C</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>THE C TYPEDEF</h1>

<p>The C programming language provides a keyword called <b>typedef</b>, which you can use to give a type, a new name.
 Following is an example to define a term <b>BYTE</b> for one-byte numbers &minus;</p>
<pre>
typedef unsigned char BYTE;
</pre>
<p>After this type definition, the identifier BYTE can be used as an abbreviation for the type <b>unsigned char,
 for example.</b>.</p>
<pre">
BYTE  b1, b2;
</pre>
<p>By convention, uppercase letters are used for these definitions to remind the user that the type name is really a
 symbolic abbreviation, but you can use lowercase, as follows &minus;</p>
<pre>
typedef unsigned char byte;
</pre>
<p>You can use <b>typedef</b> to give a name to your user defined data types as well. For example, you can use 
 with structure to define a new data type and then use that data type to define structure variables directly as follows &minus;</p>
<pre>
#include &lt;stdio.h&gt;
#include &lt;string.h&gt;
 
typedef struct Books {
   char title[50];
   char author[50];
   char subject[100];
   int book_id;
} Book;
 
int main( ) {

   Book book;
 
   strcpy( book.title, "C Programming");
   strcpy( book.author, "Nuha Ali"); 
   strcpy( book.subject, "C Programming Tutorial");
   book.book_id = 6495407;
 
   printf( "Book title : %s\n", book.title);
   printf( "Book author : %s\n", book.author);
   printf( "Book subject : %s\n", book.subject);
   printf( "Book book_id : %d\n", book.book_id);

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
Book  title : C Programming
Book  author : Nuha Ali
Book  subject : C Programming Tutorial
Book  book_id : 6495407
</pre>
<h2>typedef vs #define</h2><br/><br/>
<b>#define</b> is a C-directive which is also used to define the aliases for various data types similar 
to <b>typedef</b> but with the following differences &minus;
<ul class="list">
<li><b>typedef</b> is limited to giving symbolic names to types only where as <b>#define</b> can be used to define alias
 for values as well, q., you can define 1 as ONE etc.</li><br/>
<li><b>typedef</b> interpretation is performed by the compiler whereas <b>#define</b> statements are processed by the
 pre-processor.</li><br/>
</ul>
<p>The following example shows how to use #define in a program &minus;</p>
<pre>
#include &lt;stdio.h&gt;
 
#define TRUE  1
#define FALSE 0
 
int main( ) {
   printf( "Value of TRUE : %d\n", TRUE);
   printf( "Value of FALSE : %d\n", FALSE);

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
Value of TRUE : 1
Value of FALSE : 0
</pre>


<br/><br/><br/><br/><br/>

<a href="CBitFields.jsp">Previous</a>
<a href="CIO.jsp">Next</a>


 <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>
</body>
</html>