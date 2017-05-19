<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C++ Exception Handling</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>C++ EXCEPTION HANDLING</h1>

<p>An exception is a problem that arises during the execution of a program. A C++ exception is a response to an exceptional circumstance that arises while a program is running, such as an attempt to divide by zero.</p>
<p>Exceptions provide a way to transfer control from one part of a program to another. C++ exception handling is built upon three keywords: <b>try, catch,</b> and <b>throw</b>.</p>
<ul class="list">
<li><p><b>throw:</b> A program throws an exception when a problem shows up. This is done using a <b>throw</b> keyword.</p></li>
<li><p><b>catch:</b> A program catches an exception with an exception handler at the place in a program where you want to handle the problem. The <b>catch</b> keyword indicates the catching of an exception.</p></li>
<li><p><b>try:</b> A <b>try</b> block identifies a block of code for which particular exceptions will be activated. It's followed by one or more catch blocks.</p></li>
</ul>
<p>Assuming a block will raise an exception, a method catches an exception using a combination of the <b>try</b> and <b>catch</b> keywords. A try/catch block is placed around the code that might generate an
exception. Code within a try/catch block is referred to as protected code, and the syntax for using try/catch looks like the following:</p>
<pre class="prettyprint notranslate">
try
{
   // protected code
}catch( ExceptionName e1 )
{
   // catch block
}catch( ExceptionName e2 )
{
   // catch block
}catch( ExceptionName eN )
{
   // catch block
}
</pre>
<p>You can list down multiple <b>catch</b> statements to catch different type of exceptions in case your <b>try</b> block raises more than one exception in different situations.</p>
<h2>Throwing Exceptions:</h2>
<p>Exceptions can be thrown anywhere within a code block using  <b>throw</b> statements. The operand of the throw statements determines a type for the exception and can be any expression and the type of the result of the expression determines the type of exception thrown.</p>
<p>Following is an example of throwing an exception when dividing by zero condition occurs:</p>
<pre class="prettyprint notranslate">
double division(int a, int b)
{
   if( b == 0 )
   {
      throw "Division by zero condition!";
   }
   return (a/b);
}
</pre>
<h2>Catching Exceptions:</h2>
<p>The <b>catch</b> block following the <b>try</b> block catches any exception. You can specify what type of exception you want to catch and this is determined by the exception declaration that appears in parentheses following the keyword catch.</p> 
<pre class="prettyprint notranslate">
try
{
   // protected code
}catch( ExceptionName e )
{
  // code to handle ExceptionName exception
}
</pre>
<p>Above code will catch an exception of <b>ExceptionName</b> type. If you want to specify that a catch block should handle any type of exception that is thrown in a try block, you must put an ellipsis, ...,  between the parentheses enclosing the exception declaration as follows:</p>
<pre class="prettyprint notranslate">
try
{
   // protected code
}catch(...)
{
  // code to handle any exception
}
</pre>
<p>The following is an example, which throws a division by zero exception and we catch it in catch block.</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;

double division(int a, int b)
{
   if( b == 0 )
   {
      throw "Division by zero condition!";
   }
   return (a/b);
}

int main ()
{
   int x = 50;
   int y = 0;
   double z = 0;
 
   try {
     z = division(x, y);
     cout &lt;&lt; z &lt;&lt; endl;
   }catch (const char* msg) {
     cerr &lt;&lt; msg &lt;&lt; endl;
   }

   return 0;
}
</pre>
<p>Because we are raising an exception of type <b>const char*</b>, so while catching this exception, we have to use const char* in catch block. If we compile and run above code, this would produce the following result:</p>
<pre class="prettyprint notranslate">
Division by zero condition!
</pre>
<h2>C++ Standard Exceptions:</h2>
<p>C++ provides a list of standard exceptions defined in <b>&lt;exception&gt;</b>  which we can use in our programs. These are arranged in a parent-child class hierarchy shown below:</p>
<center>
<img src=".\Images\cpp_exceptions.jpg" alt="C++ Exceptions Hierarchy" />
</center>
<p>Here is the small description of each exception mentioned in the above hierarchy:</p>
<table class="table table-bordered">
<tr>
<th width="24%">Exception</th>
<th>Description</th>
</tr>
<tr>
<td><b>std::exception</b></td>
<td>An exception and parent class of all the standard C++ exceptions.</td>
</tr>
<tr>
<td>std::bad_alloc</td>
<td>This can be thrown by <b>new</b>.</td>
</tr>
<tr>
<td>std::bad_cast</td>
<td>This can be thrown by <b>dynamic_cast</b>.</td>
</tr>
<tr>
<td>std::bad_exception</td>
<td>This is useful device to handle unexpected exceptions in a C++ program</td>
</tr>
<tr>
<td>std::bad_typeid</td>
<td>This can be thrown by <b>typeid</b>.</td>
</tr>
<tr>
<td><b>std::logic_error</b></td>
<td>An exception that theoretically can be detected by reading the code.</td>
</tr>
<tr>
<td>std::domain_error</td>
<td>This is an exception thrown when a mathematically invalid domain is used</td>
</tr>
<tr>
<td>std::invalid_argument</td>
<td>This is thrown due to invalid arguments.</td>
</tr>
<tr>
<td>std::length_error</td>
<td>This is thrown when a too big std::string is created</td>
</tr>
<tr>
<td>std::out_of_range</td>
<td>This can be thrown by the at method from for example a std::vector and std::bitset&lt;&gt;::operator[]().</td>
</tr>
<tr>
<td><b>std::runtime_error</b></td>
<td>An exception that theoretically can not be detected by reading the code.</td>
</tr>
<tr>
<td>std::overflow_error</td>
<td>This is thrown if a mathematical overflow occurs.</td>
</tr>
<tr>
<td>std::range_error</td>
<td>This is occured when you try to store a value which is out of range.</td></tr>
<tr>
<td>std::underflow_error</td>
<td>This is thrown if a mathematical underflow occurs.</td>
</tr>
</table>
<h2>Define New Exceptions:</h2>
<p>You can define your own exceptions by inheriting and overriding <b>exception</b> class functionality. Following is the example, which shows how you can use std::exception class to implement your own exception in standard way:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
#include &lt;exception&gt;
using namespace std;

struct MyException : public exception
{
  const char * what () const throw ()
  {
    return "C++ Exception";
  }
};
 
int main()
{
  try
  {
    throw MyException();
  }
  catch(MyException&amp; e)
  {
    std::cout &lt;&lt; "MyException caught" &lt;&lt; std::endl;
    std::cout &lt;&lt; e.what() &lt;&lt; std::endl;
  }
  catch(std::exception&amp; e)
  {
    //Other errors
  }
}
</pre>
<p>This would produce the following result:</p>
<pre class="prettyprint notranslate">
MyException caught
C++ Exception
</pre>
<p>Here, <b>what()</b> is a public method provided by exception class and it has been overridden by all the child exception classes. This returns the cause of an exception.</p>

<br/><br/><br/><br/><br/>
<a href="C++Files.jsp">Previous</a>
<a href="C++Dynamic.jsp">Next</a>

<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>