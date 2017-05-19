<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C++ Dynamic Memory</title>
</head>
<body>


<header>
eduOnline
</header>

<h1>C++ DYNAMIC MEMORY</h1>

<p>A good understanding of how dynamic memory really works in C++ is essential to becoming a good C++ programmer. Memory in your C++ program is divided into two parts:</p>
<ul class="list">
<li><p><b>The stack:</b> All variables declared inside the function will take up memory from the stack.</p></li>
<li><p><b>The heap:</b> This is unused memory of the program and can be used to allocate the memory dynamically when program runs.</p></li>
</ul>
<p>Many times, you are not aware in advance how much memory you will need to store particular information in a defined variable and the size of required memory can be determined at run time.</p>
<p>You can allocate memory at run time within the heap for the variable of a given type using a special operator in C++ which returns the address of the space allocated. This operator is called <b>new</b> operator.</p>
<p>If you are not in need of dynamically allocated memory anymore, you can use <b>delete</b> operator, which de-allocates memory previously allocated by new operator.</p>
<h2>The new and delete operators:</h2>
<p>There is following generic syntax to use <b>new</b> operator to allocate memory dynamically for any data-type.</p>
<pre class="prettyprint notranslate">
new data-type;
</pre>
<p>Here, <b>data-type</b> could be any built-in data type including an array or any user defined data types include class or structure. Let us start with built-in data types. For example we can define a pointer to type double and then request that the memory be allocated at execution time. We can do this using the <b>new </b> operator with the following statements:</p>
<pre class="prettyprint notranslate">
double* pvalue  = NULL; // Pointer initialized with null
pvalue  = new double;   // Request memory for the variable
</pre>
<p>The memory may not have been allocated successfully, if the free store had been used up. So it is good practice to check if new operator is returning NULL pointer and take appropriate action as below:</p>
<pre class="prettyprint notranslate">
double* pvalue  = NULL;
if( !(pvalue  = new double ))
{
   cout &lt;&lt; "Error: out of memory." &lt;&lt;endl;
   exit(1);

}
</pre>
<p>The <b>malloc()</b> function from C, still exists in C++, but it is recommended to avoid using malloc() function. The main advantage of new over malloc() is that new doesn't just allocate memory, it constructs objects which is prime purpose of C++.</p>
<p>At any point, when you feel a variable that has been dynamically allocated is not anymore required, you can free up the memory that it occupies in the free store with the delete operator as follows:</p>
<pre class="prettyprint notranslate">
delete pvalue;        // Release memory pointed to by pvalue
</pre>
<p>Let us put above concepts and form the following example to show how new and delete work:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;

int main ()
{
   double* pvalue  = NULL; // Pointer initialized with null
   pvalue  = new double;   // Request memory for the variable
 
   *pvalue = 29494.99;     // Store value at allocated address
   cout &lt;&lt; "Value of pvalue : " &lt;&lt; *pvalue &lt;&lt; endl;

   delete pvalue;         // free up the memory.

   return 0;
}
</pre>
<p>If we compile and run above code, this would produce the following result:</p>
<pre class="prettyprint notranslate">
Value of pvalue : 29495
</pre>
<h2>Dynamic Memory Allocation for Arrays:</h2>
<p>Consider you want to allocate memory for an array of characters, i.e., string of 20 characters. Using the same syntax what we have used above we can allocate memory dynamically as shown below.</p>
<pre class="prettyprint notranslate">
char* pvalue  = NULL;   // Pointer initialized with null
pvalue  = new char[20]; // Request memory for the variable
</pre>
<p>To remove the array that we have just created the statement would look like this:</p>
<pre class="prettyprint notranslate">
delete [] pvalue;        // Delete array pointed to by pvalue
</pre>
<p>Following is the syntax of new operator for a multi-dimensional array as follows:</p>
<pre class="prettyprint notranslate">
int ROW = 2;
int COL = 3;
double **pvalue  = new double* [ROW]; // Allocate memory for rows

// Now allocate memory for columns
for(int i = 0; i &lt; COL; i++) {
    pvalue[i] = new double[COL];
}
</pre>
<p>The syntax to release the memory for multi-dimensional will be as follows:</p>
<pre class="prettyprint notranslate">
for(int i = 0; i &lt; COL; i++) {
    delete[] pvalue[i];
}
delete [] pvalue; 
</pre>
<h2>Dynamic Memory Allocation for Objects:</h2>
<p>Objects are no different from simple data types. For example, consider the following code where we are going to use an array of objects to clarify the concept:</p>
<pre class="prettyprint notranslate tryit">
#include &lt;iostream&gt;
using namespace std;

class Box
{
   public:
      Box() { 
         cout &lt;&lt; "Constructor called!" &lt;&lt;endl; 
      }
      ~Box() { 
         cout &lt;&lt; "Destructor called!" &lt;&lt;endl; 
      }
};

int main( )
{
   Box* myBoxArray = new Box[4];

   delete [] myBoxArray; // Delete array

   return 0;
}
</pre>
<p>If you were to allocate an array of four Box objects, the Simple constructor would be called four times and similarly while deleting these objects, destructor will also be called same number of times.</p>
<p>If we compile and run above code, this would produce the following result:</p>
<pre class="prettyprint notranslate">
Constructor called!
Constructor called!
Constructor called!
Constructor called!
Destructor called!
Destructor called!
Destructor called!
Destructor called!
</pre>

<br/><br/><br/><br/><br/>
<a href="C++Exception.jsp">Previous</a>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>