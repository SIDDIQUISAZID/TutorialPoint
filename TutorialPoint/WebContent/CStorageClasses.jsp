<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Storage Classes In C</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>STORAGE CLASSES IN C </h1>

<p>A storage class defines the scope (visibility) and life-time of variables and/or functions within a C Program.
 They precede the type that they modify. We have four different storage classes in a C program &minus;</p>
<ul>
<li>auto</li><br/>
<li>register</li><br/>
<li>static</li><br/>
<li>extern</li><br/>
</ul>
<h2>The auto Storage Class</h2>
<p>The <b>auto</b> storage class is the default storage class for all local variables.</p>
<pre>
{
   int mount;
   auto int month;
}
</pre>
<p>The example above defines two variables with in the same storage class. 'auto' can only be used within functions, i.e.,
 local variables.</p>
<h2>The register Storage Class</h2>
<p>The <b>register</b> storage class is used to define local variables that should be stored in a register instead of RAM.
 This means that the variable has a maximum size equal to the register size (usually one word) and can't have the unary '&amp;'
  operator applied to it (as it does not have a memory location).</p>
<pre>
{
   register int  miles;
}
</pre>
<p>The register should only be used for variables that require quick access such as counters. It should also be noted that defining 'register' does not mean that the variable will be stored in a register. It means that it MIGHT be stored in a register depending on hardware and implementation restrictions.</p>
<h2>The static Storage Class</h2>
<p>The <b>static</b> storage class instructs the compiler to keep a local variable in existence during the life-time of the program instead of creating and destroying it each time it comes into and goes out of scope. Therefore, making local variables static allows them to maintain their values between function calls.</p>
<p>The static modifier may also be applied to global variables. When this is done, it causes that variable's scope to be restricted to the file in which it is declared.</p>
<p>In C programming, when <b>static</b> is used on a class data member, it causes only one copy of that member to be shared by all the objects of its class.</p>
<pre class="prettyprint notranslate tryit">
#include &lt;stdio.h&gt;
 
/* function declaration */
void func(void);
 
static int count = 5; /* global variable */
 
main() {

   while(count--) {
      func();
   }
	
   return 0;
}

/* function definition */
void func( void ) {

   static int i = 5; /* local static variable */
   i++;

   printf("i is %d and count is %d\n", i, count);
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre class="result notranslate">
i is 6 and count is 4
i is 7 and count is 3
i is 8 and count is 2
i is 9 and count is 1
i is 10 and count is 0
</pre>
<h2>The extern Storage Class</h2>
<p>The <b>extern</b> storage class is used to give a reference of a global variable that is visible to ALL the program files.
 When you use 'extern', the variable cannot be initialized however, it points the variable name at a storage location that has
  been previously defined.</p>
<p>When you have multiple files and you define a global variable or function, which will also be used in other files, then 
<i>extern</i> will be used in another file to provide the reference of defined variable or function. Just for understanding,
 <i>extern</i> is used to declare a global variable or function  in another file.</p>
<p>The extern modifier is most commonly used when there are two or more files sharing the same global variables or functions
 as explained below.</p>
<p><b>First File: main.c</b></p>
<pre>
#include &lt;stdio.h&gt;
 
int count ;
extern void write_extern();
 
main() {

   count = 5;
   write_extern();
}
</pre>
<p><b>Second File: support.c</b></p>
<pre>
#include &lt;stdio.h&gt;
 
extern int count;
 
void write_extern(void) {
   printf("count is %d\n", count);
}
</pre>
<p>Here, <i>extern</i> is being used to declare <i>count</i> in the second file, where as it has its definition in the first
 file, main.c. 
<p>When this program is executed, it produces the following result &minus;</p>
<pre>
5
</pre>

<br/><br/><br/><br/><br/>

<a href="CConstants.jsp">Previous</a>
<a href="COperators.jsp">Next</a>

 <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>