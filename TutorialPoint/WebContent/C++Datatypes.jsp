<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C++ Data Types</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>C++ DATA TYPES</h1>


<p>While doing programming in any programming language, you need to use various variables to store various information. Variables are nothing but reserved memory locations to store values. This means that when you create a variable you reserve some space in memory.</p>
<p>You may like to store information of various data types like character, wide character, integer, floating point, double floating point, boolean etc. Based on the data type of a variable, the operating system allocates memory and decides what can be stored in the reserved memory.</p>
<h2>Primitive Built-in Types:</h2>
<p>C++ offer the programmer a rich assortment of built-in as well as user defined data types. Following table lists down seven basic C++ data types:</p>
<table class="table table-bordered">
<tr>
<th width="50%">Type</th>
<th>Keyword</th>
</tr>
<tr>
<td>Boolean</td>
<td>bool</td>
</tr>
<tr>
<td>Character</td>
<td>char</td>
</tr>
<tr>
<td>Integer</td>
<td>int</td>
</tr>
<tr>
<td>Floating point</td>
<td>float</td>
</tr>
<tr>
<td>Double floating point</td>
<td>double</td>
</tr>
<tr>
<td>Valueless</td>
<td> void</td>
</tr>
<tr>
<td>Wide character</td>
<td>wchar_t</td>
</tr>
</table>
<p>Several of the basic types can be modified using one or more of these type modifiers:</p>
<ul class="list">
<li><p>signed</p></li>
<li><p>unsigned</p></li>
<li><p>short</p></li>
<li><p>long</p></li>
</ul>
<p>The following table shows the variable type, how much memory it takes to store the value in memory, and what is maximum and minimum value which can be stored in such type of variables.</p>
<table class="table table-bordered" border="1" cellpadding="5">
<tr>
<th>Type</th>
<th>Typical Bit Width</th>
<th>Typical Range</th>
</tr>
<tr>
<td>char</td>
<td>1byte</td>
<td>-128 to 127 or 0 to 255</td>
</tr>
<tr>
<td>unsigned char</td>
<td>1byte</td>
<td>0 to 255</td>
</tr>
<tr>
<td>signed char</td>
<td>1byte</td>
<td>-128 to 127</td>
</tr>
<tr>
<td>int</td>
<td>4bytes</td>
<td>-2147483648 to 2147483647</td>
</tr>
<tr>
<td>unsigned int</td>
<td>4bytes</td>
<td>0 to 4294967295</td>
</tr>
<tr>
<td>signed int</td>
<td>4bytes</td>
<td>-2147483648 to 2147483647</td>
</tr>
<tr>
<td>short int</td>
<td>2bytes</td>
<td>-32768 to 32767</td>
</tr>
<tr>
<td>unsigned short int</td>
<td>2bytes</td>
<td>0 to 65,535</td>
</tr>
<tr>
<td>signed short int</td>
<td>2bytes</td>
<td>-32768 to 32767</td>
</tr>
<tr>
<td>long int</td>
<td>4bytes</td>
<td>-2,147,483,648 to 2,147,483,647</td>
</tr>
<tr>
<td>signed long int</td>
<td>4bytes</td>
<td>-2,147,483,648 to 2,147,483,647</td>
</tr>
<tr>
<td>unsigned long int</td>
<td>4bytes</td>
<td>0 to 4,294,967,295</td>
</tr>
<tr>
<td>float</td>
<td>4bytes</td>
<td>+/- 3.4e +/- 38 (~7 digits)</td>
</tr>
<tr>
<td>double</td>
<td>8bytes</td>
<td>+/- 1.7e +/- 308 (~15 digits)</td>
</tr>
<tr>
<td>long double</td>
<td>8bytes</td>
<td>+/- 1.7e +/- 308 (~15 digits)</td>
</tr>
<tr>
<td>wchar_t</td>
<td>2 or 4 bytes</td>
<td>1 wide character</td>
</tr>
</table>
<p>The sizes of variables might be different from those shown in the above table, depending on the compiler and the computer you are using.</p>
<p>Following is the example, which will produce correct size of various data types on your computer.</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;

int main()
{
   cout &lt;&lt; "Size of char : " &lt;&lt; sizeof(char) &lt;&lt; endl;
   cout &lt;&lt; "Size of int : " &lt;&lt; sizeof(int) &lt;&lt; endl;
   cout &lt;&lt; "Size of short int : " &lt;&lt; sizeof(short int) &lt;&lt; endl;
   cout &lt;&lt; "Size of long int : " &lt;&lt; sizeof(long int) &lt;&lt; endl;
   cout &lt;&lt; "Size of float : " &lt;&lt; sizeof(float) &lt;&lt; endl;
   cout &lt;&lt; "Size of double : " &lt;&lt; sizeof(double) &lt;&lt; endl;
   cout &lt;&lt; "Size of wchar_t : " &lt;&lt; sizeof(wchar_t) &lt;&lt; endl;
   return 0;
}
</pre>
<p>This example uses  <b>endl</b>, which inserts a new-line character after every line and &lt;&lt; operator is being used to pass multiple values out to the screen. We are also using <b>sizeof()</b> operator to get size of various data types.</p>
<p>When the above code is compiled and executed, it produces the following result which can vary from machine to machine:</p>
<pre class="prettyprint notranslate">
Size of char : 1
Size of int : 4
Size of short int : 2
Size of long int : 8
Size of float : 4
Size of double : 8
Size of wchar_t : 4
</pre>
<h2>typedef Declarations:</h2>
<p>You can create a new name for an existing type using <b>typedef</b>. Following is the simple syntax to define a new type using typedef:</p>
<pre class="prettyprint notranslate">
typedef type newname; 
</pre>
<p>For example, the following tells the compiler that feet is another name for int:</p>
<pre class="prettyprint notranslate">
typedef int feet;
</pre>
<p>Now, the following declaration is perfectly legal and creates an integer variable called distance:</p>
<pre class="prettyprint notranslate">
feet distance;
</pre>
<h2>Enumerated Types:</h2>
<p>An enumerated type declares an optional type name  and a set of zero or more identifiers that can be used as values of the type. Each enumerator is a constant whose type is the enumeration.</p>
<p>To create an enumeration requires the use of the keyword <b>enum</b>. The general form of an enumeration type is:</p>
<pre class="prettyprint notranslate">
enum enum-name { list of names } var-list; 
</pre>
<p>Here, the enum-name is the enumeration's type name. The list of names is comma separated.</p>
<p>For example, the following code defines an enumeration of colors called colors and the variable c of type color. Finally, c is assigned the value "blue".</p>
<pre class="prettyprint notranslate">
enum color { red, green, blue } c;
c = blue;
</pre>
<p>By default, the value of the first name is 0, the second name has the value 1, the third has the value 2, and so on. But you can give a name a specific value by adding an initializer. For example, in the following enumeration, <b>green</b> will have the value 5.</p>
<pre class="prettyprint notranslate">
enum color { red, green=5, blue };
</pre>
<p>Here, <b>blue</b> will have a value of 6 because each name will be one greater than the one that precedes it.</p>

<br/><br/><br/><br/><br/>
<a href="C++Comments.jsp">Previous</a>
<a href="C++Variabletypes.jsp">Next</a>

<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>