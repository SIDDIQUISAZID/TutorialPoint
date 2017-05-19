<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C++ Functions</title>
</head>
<body>


<header>
eduOnline
</header>

<h1>C++ FUNCTIONS</h1>

<p>A function is a group of statements that together perform a task. Every C++ program has at least one function, which is <b>main()</b>, and all the most trivial programs can define additional functions.</p>
<p>You can divide up your code into separate functions. How you divide up your code among different functions is up to you, but logically the division usually is so each function performs a specific task.</p>
<p>A function <b>declaration</b> tells the compiler about a function's name, return type, and parameters. A function <b>definition</b> provides the actual body of the function.</p>
<p>The C++ standard library provides numerous built-in functions that your program can call. For example, function <b>strcat()</b> to concatenate two strings, function <b>memcpy()</b> to copy one memory location to another location and many more functions.</p>
<p>A function is knows as with various names like a method  or a sub-routine or a procedure etc.</p>
<h2>Defining a Function:</h2>
<p>The general form of a C++ function definition is as follows:</p>
<pre class="prettyprint notranslate">
return_type function_name( parameter list )
{
   body of the function
}
</pre>
<p>A C++ function definition consists of a function header and a function body. Here are all the parts of a function:</p>
<ul class="list">
<li><p><b>Return Type</b>: A function may return a value. The <b>return_type</b> is the data type of the value the function returns. Some functions perform the desired operations without returning a value. In this case, the return_type is the keyword <b>void</b>.</p></li>
<li><p><b>Function Name:</b> This is the actual name of the function. The function name and the parameter list together constitute the function signature.</p></li>
<li><p><b>Parameters:</b> A parameter is like a placeholder. When a function is invoked, you pass a value to the parameter. This value is referred to as actual parameter or argument. The parameter list refers to the type, order, and number of the parameters of a function. Parameters are optional; that is, a function may contain no parameters.</p></li>
<li><p><b>Function Body:</b> The function body contains a collection of statements that define what the function does.</p></li>
</ul>
<h2>Example:</h2>
<p>Following is the source code for a function called <b>max()</b>. This function takes two parameters num1 and num2 and returns the maximum between the two:</p>
<pre class="prettyprint notranslate">
// function returning the max between two numbers
 
int max(int num1, int num2) 
{
   // local variable declaration
   int result;
 
   if (num1 &gt; num2)
      result = num1;
   else
      result = num2;
 
   return result; 
}
</pre>
<h2>Function Declarations:</h2>
<p>A function <b>declaration</b> tells the compiler about a function name and how to call the function. The actual body of the function can be defined separately.</p>
<p>A function declaration has the following parts:</p>
<pre class="prettyprint notranslate">
return_type function_name( parameter list );
</pre>
<p>For the above defined function max(), following is the function declaration:</p>
<pre class="prettyprint notranslate">
int max(int num1, int num2);
</pre>
<p>Parameter names are not importan in function declaration only their type is required, so following is also valid declaration:</p>
<pre class="prettyprint notranslate">
int max(int, int);
</pre>
<p>Function declaration is required when you define a function in one source file and you call that function in another file. In such case, you should declare the function at the top of the file calling the function.</p>
<h2>Calling a Function:</h2>
<p>While creating a C++ function, you give a definition of what the function has to do. To use a function, you will have to call or invoke that function.</p>
<p>When a program calls a function, program control is transferred to the called function. A called function performs defined task and when its return statement is executed or when its function-ending closing brace is reached, it returns program control back to the main program.</p>
<p>To call a function, you simply need to pass the required parameters along with function name, and if function returns a value, then you can store returned value. For example:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;
 
// function declaration
int max(int num1, int num2);
 
int main ()
{
   // local variable declaration:
   int a = 100;
   int b = 200;
   int ret;
 
   // calling a function to get max value.
   ret = max(a, b);
 
   cout &lt;&lt; "Max value is : " &lt;&lt; ret &lt;&lt; endl;
 
   return 0;
}
 
// function returning the max between two numbers
int max(int num1, int num2) 
{
   // local variable declaration
   int result;
 
   if (num1 &gt; num2)
      result = num1;
   else
      result = num2;
 
   return result; 
}
</pre>
<p>I kept max() function along with main() function and compiled the source code. While running final executable, it would produce the following result:</p>
<pre class="prettyprint notranslate">
Max value is : 200
</pre>
<h2>Function Arguments:</h2>
<p>If a function is to use arguments, it must declare variables that accept the values of the arguments. These variables are called the <b>formal parameters</b> of the function.</p>
<p>The formal parameters behave like other local variables inside the function and are created upon entry into the function and destroyed upon exit.</p>
<p>While calling a function, there are two ways that arguments can be passed to a function:</p>
<table class="table table-bordered">
<tr><th width="30%">Call Type</th><th>Description</th></tr>
<tr><td><p><a href="/cplusplus/cpp_function_call_by_value.htm" title="C++ function call by value">Call by value</a></p></td><td>This method copies the actual value of an argument into the formal parameter of the function. In this case, changes made to the parameter inside the function have no effect on the argument. </td> </tr>
<tr><td><p><a href="/cplusplus/cpp_function_call_by_pointer.htm" title="C++ function call by pointer">Call by pointer</a></p></td><td>This method copies the address of an argument into the formal parameter. Inside the function, the address is used to access the actual argument used in the call. This means that changes made to the parameter affect the argument.</td> </tr>
<tr><td><p><a href="/cplusplus/cpp_function_call_by_reference.htm" title="C++ function call by reference">Call by reference</a></p></td><td>This method copies the reference of an argument into the formal parameter. Inside the function, the reference is used to access the actual argument used in the call. This means that changes made to the parameter affect the argument.</td> </tr>
</table>
<p>By default, C++ uses <b>call by value</b> to pass arguments. In general, this means that code within a function cannot alter the arguments used to call the function and above mentioned example while calling max() function used the same method.</p>
<h2>Default Values for Parameters:</h2>
<p>When you define a function, you can specify a default value for each of the last parameters. This value will be used if the corresponding argument is left blank when calling to the function.</p>
<p>This is done by using the assignment operator and assigning values for the arguments in the function definition. If a value for that parameter is not passed when the function is called, the default given value is used, but if a value is specified, this default value is ignored and the passed value is used instead. Consider the following example:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;
 
int sum(int a, int b=20)
{
  int result;

  result = a + b;
  
  return (result);
}

int main ()
{
   // local variable declaration:
   int a = 100;
   int b = 200;
   int result;
 
   // calling a function to add the values.
   result = sum(a, b);
   cout &lt;&lt; "Total value is :" &lt;&lt; result &lt;&lt; endl;

   // calling a function again as follows.
   result = sum(a);
   cout &lt;&lt; "Total value is :" &lt;&lt; result &lt;&lt; endl;
 
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result:</p>
<pre class="prettyprint notranslate">
Total value is :300
Total value is :120
</pre>

<br/><br/><br/><br/><br/>
<a href="C++Decision.jsp">Previous</a>
<a href="C++Numbers.jsp">Next</a>

<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>