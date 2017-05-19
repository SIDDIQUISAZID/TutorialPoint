<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Strings In C</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>STRINGS IN C</h1>

<p>Strings are actually one-dimensional array of characters terminated by a <b>null</b> character '\0'.
 Thus a null-terminated string contains the characters that comprise the string followed by a <b>null</b>.</p>
<p>The following declaration and initialization create a string consisting of the word "Hello". To hold the null character
 at the end of the array, the size of the character array containing the string is one more than the number of characters in the word "Hello."</p>
<pre>
char greeting[6] = {'H', 'e', 'l', 'l', 'o', '\0'};
</pre>
<p>If you follow the rule of array initialization then you can write the above statement as follows &minus;</p>
<pre>
char greeting[] = "Hello";
</pre>
<p>Following is the memory presentation of the above defined string in C/C++ &minus;</p>
<img src=".\Images\string_representation.jpg" alt="String Presentation in C/C++"/>
<p>Actually, you do not place the <i>null</i> character at the end of a string constant. The C compiler automatically places 
the '\0' at the end of the string when it initializes the array. Let us try to print the above mentioned string &minus;</p>
<pre>
#include &lt;stdio.h&gt;

int main () {

   char greeting[6] = {'H', 'e', 'l', 'l', 'o', '\0'};
   printf("Greeting message: %s\n", greeting );
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
Greeting message: Hello
</pre>
<p>C supports a wide range of functions that manipulate null-terminated strings &minus;</p>
<table border="1">
<tr>
<th style="width:5%">S.N.</th>
<th style="text-align:center;">Function &amp; Purpose</th>
</tr>
<tr>
<td>1</td>
<td><p><b>strcpy(s1, s2);</b></p>
<p>Copies string s2 into string s1.</p>
</td>
</tr>
<tr>
<td>2</td>
<td><p><b>strcat(s1, s2);</b></p>
<p>Concatenates string s2 onto the end of string s1.</p>
</td>
</tr>
<tr>
<td>3</td>
<td><p><b>strlen(s1);</b></p>
<p>Returns the length of string s1.</p>
</td>
</tr>
<tr>
<td>4</td>
<td><p><b>strcmp(s1, s2);</b></p>
<p>Returns 0 if s1 and s2 are the same; less than 0 if s1&lt;s2; greater than 0 if s1&gt;s2.</p>
</td>
</tr>
<tr>
<td>5</td>
<td><p><b>strchr(s1, ch);</b></p>
<p>Returns a pointer to the first occurrence of character ch in string s1.</p>
</td>
</tr>
<tr>
<td>6</td>
<td><p><b>strstr(s1, s2);</b></p>
<p>Returns a pointer to the first occurrence of string s2 in string s1.</p>
</td>
</tr>
</table>
<p>The following example uses some of the above-mentioned functions &minus;</p>
<pre>
#include &lt;stdio.h&gt;
#include &lt;string.h&gt;

int main () {

   char str1[12] = "Hello";
   char str2[12] = "World";
   char str3[12];
   int  len ;

   /* copy str1 into str3 */
   strcpy(str3, str1);
   printf("strcpy( str3, str1) :  %s\n", str3 );

   /* concatenates str1 and str2 */
   strcat( str1, str2);
   printf("strcat( str1, str2):   %s\n", str1 );

   /* total lenghth of str1 after concatenation */
   len = strlen(str1);
   printf("strlen(str1) :  %d\n", len );

   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
strcpy( str3, str1) :  Hello
strcat( str1, str2):   HelloWorld
strlen(str1) :  10
</pre>

<br/><br/><br/><br/><br/>

<a href="CPointers.jsp">Previous</a>
<a href="CStructures.jsp">Next</a>


 <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>
</body>
</html>