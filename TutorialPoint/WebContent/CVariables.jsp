<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Variables In C</title>
</head>
<body>

<header>
eduOnline
</header>
<h1>VARIABLES  IN C</h1>

<p>A variable is nothing but a name given to a storage area that our programs can manipulate.
 Each variable in C has a specific type, which determines the size and layout of the variable's memory; 
 the range of values that can be stored within that memory; and the set of operations that can be applied to the variable.</p>
 
<p>The name of a variable can be composed of letters, digits, and the underscore character.
 It must begin with either a letter or an underscore. Upper and lowercase letters are distinct because C is case-sensitive.
  Based on the basic types explained in the previous chapter, there will be the following basic variable types &minus;</p>
  
<table border="1">

<tr>
<th style="width:20%">Type</th>
<th>Description</th>
</tr>
<tr>
<td>char</td>
<td>Typically a single octet(one byte). This is an integer type.</td>
</tr>
<tr>
<td>int</td>
<td>The most natural size of integer for the machine.</td>
</tr>
<tr>
<td>float</td>
<td>A single-precision floating point value.</td>
</tr>
<tr>
<td>double</td>
<td>A double-precision floating point value.</td>
</tr>
<tr>
<td>void</td>
<td>Represents the absence of type.</td>
</tr>

</table>

<p>C programming language also allows to define various other types of variables, which we will cover in subsequent chapters
 like Enumeration, Pointer, Array, Structure, Union, etc. For this chapter, let us study only basic variable types.</p>
 
<h3>Variable Definition in C</h3>
<p>A variable definition tells the compiler where and how much storage to create for the variable.
 A variable definition specifies a data type and contains a list of one or more variables of that type as follows &minus;</p>
 
<pre>
type variable_list;
</pre>

<p>Here, <b>type</b> must be a valid C data type including char, w_char, int, float, double, bool,
 or any user-defined object; and <b>variable_list</b> may consist of one or more identifier names separated by commas.
  Some valid declarations are shown here &minus;</p>
  
<pre>
int    i, j, k;
char   c, ch;
float  f, salary;
double d;
</pre>

<p>The line <b>int i, j, k;</b> declares and defines the variables i, j, and k;  which instruct the compiler to 
create variables named i, j and k of type int.</p>
<p>Variables can be initialized (assigned an initial value) in their declaration. The initializer consists of an equal sign
 followed by a constant expression as follows &minus;</p>
 
<pre>
type variable_name = value;
</pre>

<p>Some examples are &minus;</p>

<pre>
extern int d = 3, f = 5;    // declaration of d and f. 
int d = 3, f = 5;           // definition and initializing d and f. 
byte z = 22;                // definition and initializes z. 
char x = 'x';               // the variable x has the value 'x'.
</pre>

<p>For definition without an initializer: variables with static storage duration are implicitly initialized
 with NULL (all bytes have the value 0); the initial value of all other variables are undefined.</p>
 
<h2>Variable Declaration in C</h2>

<p>A variable declaration provides assurance to the compiler that there exists a variable with the given type and
 name so that the compiler can proceed for further compilation without requiring the complete detail about the variable. 
 A variable definition has its meaning at the time of compilation only, the compiler needs actual variable definition at the
  time of linking the program.</p>
<p>A variable declaration is useful when you are using multiple files and you define your variable in one of the files which
 will be available at the time of linking of the program. You will use the  keyword <b>extern</b> to declare a variable
  at any place. Though you can declare a variable multiple times in your C program, it can be defined only once in a file,
   a function, or a block of code.</p>
   
<h3>Example</h3>
<p>Try the following example, where variables have been declared at the top, but they have been defined and initialized inside
 the main function &minus;</p>
 
<pre>
#include &lt;stdio.h&gt;

// Variable declaration:
extern int a, b;
extern int c;
extern float f;

int main () {

   /* variable definition: */
   int a, b;
   int c;
   float f;
 
   /* actual initialization */
   a = 10;
   b = 20;
  
   c = a + b;
   printf("value of c : %d \n", c);

   f = 70.0/3.0;
   printf("value of f : %f \n", f);
 
   return 0;
}
</pre>

<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
value of c : 30
value of f : 23.333334
</pre>

<p>The same concept applies on function declaration where you provide a function name at the time of its declaration 
and its actual definition can be given anywhere else. For example &minus;</p>

<pre>
// function declaration
int func();

int main() {

   // function call
   int i = func();
}

// function definition
int func() {
   return 0;
}
</pre>

<h2>Lvalues and Rvalues in C</h2>

<p>There are two kinds of expressions in C &minus;</p>

<ul>

<li><p><b>lvalue</b> &minus; Expressions that refer to a memory location are called "lvalue" expressions. 
An lvalue may appear as either the left-hand or right-hand side of an assignment.</p></li>
<li><p><b>rvalue</b> &minus; The term rvalue refers to a data value that is stored at some address in memory.
 An rvalue is an expression that cannot have a value assigned to it which means an rvalue may appear on the right-hand side but
  not on the left-hand side of an assignment.</p></li>
  
</ul>

<p>Variables are lvalues and so they may appear on the left-hand side of an assignment.
 Numeric literals are rvalues and so they may not be assigned and cannot appear on the left-hand side. Take a look at 
 the following valid and invalid statements &minus;</p>
 
<pre>
int g = 20; // valid statement

10 = 20; // invalid statement; would generate compile-time error
</pre>
<br/><br/><br/><br/><br/><br/>

<a href="CDataTypes.jsp">Previous</a>
<a href="CConstants.jsp">Next</a>

 <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>