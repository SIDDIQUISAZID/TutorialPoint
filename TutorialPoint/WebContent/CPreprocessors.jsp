<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Preprocessors In C</title>
</head>
<body>

<header>
eduOnline
</header>

<h1> PREPROCESSORS IN C</h1>

<p>The <b>C Preprocessor</b> is not a part of the compiler, but is a separate step in the compilation process. 
In simple terms, a C Preprocessor is just a text substitution tool and it instructs the compiler to do 
required pre-processing before the actual compilation. We'll refer to the C Preprocessor as CPP.</p>
<p>All preprocessor commands begin with a hash symbol (#). It must be the first nonblank character, and for readability, 
a preprocessor directive should begin in the first column. The following section lists down all the important preprocessor
 directives &minus;</p>
<table border="1">
<tr>
<th style="width:20%">Directive</th>
<th>Description</th>
</tr>
<tr>
<td>#define</td>
<td>Substitutes a preprocessor macro.</td>
</tr>
<tr>
<td>#include</td>
<td>Inserts a particular header from another file.</td>
</tr>
<tr>
<td>#undef</td>
<td>Undefines a preprocessor macro.</td>
</tr>
<tr>
<td>#ifdef</td>
<td>Returns true if this macro is defined.</td>
</tr>
<tr>
<td>#ifndef</td>
<td>Returns true if this macro is not defined.</td>
</tr>
<tr>
<td>#if</td>
<td>Tests if a compile time condition is true.</td>
</tr>
<tr>
<td>#else</td>
<td>The alternative for #if.</td>
</tr>
<tr>
<td>#elif</td>
<td>#else and #if in one statement.</td>
</tr>
<tr>
<td>#endif</td>
<td>Ends preprocessor conditional.</td>
</tr>
<tr>
<td>#error</td>
<td>Prints error message on stderr.</td>
</tr>
<tr>
<td>#pragma</td>
<td>Issues special commands to the compiler, using a standardized method.</td>
</tr>
</table>
<h2>Preprocessors Examples</h2>
<p>Analyze the following examples to understand various directives.</p>
<pre>
#define MAX_ARRAY_LENGTH 20
</pre>
<p>This directive tells the CPP to replace instances of MAX_ARRAY_LENGTH with 20. Use <i>#define</i> 
for constants to increase readability.</p>
<pre>
#include &lt;stdio.h&gt;
#include "myheader.h"
</pre>
<p>These directives tell the CPP to get stdio.h from <b>System Libraries</b> and add the text to the current source file.
 The next line tells CPP to get <b>myheader.h</b> from the local directory and add the content to the current source file.</p>
<pre>
#undef  FILE_SIZE
#define FILE_SIZE 42
</pre>
<p>It tells the CPP to undefine existing FILE_SIZE and define it as 42.</p>
<pre class="prettyprint notranslate">
#ifndef MESSAGE
   #define MESSAGE "You wish!"
#endif
</pre>
<p>It tells the CPP to define MESSAGE only if MESSAGE isn't already defined.</p>
<pre class="prettyprint notranslate">
#ifdef DEBUG
   /* Your debugging statements here */
#endif
</pre>
<p>It tells the CPP to process the statements enclosed if DEBUG is defined. This is useful if you pass the <i>-DDEBUG</i>
 flag to the gcc compiler at the time of compilation. This will define DEBUG, so you can turn debugging on and off on
  the fly during compilation.</p>
<h2>Predefined Macros</h2>
<p>ANSI C defines a number of macros. Although each one is available for use in programming,
 the predefined macros should not be directly modified.</p>
<table border="1">
<tr>
<th style="width:20%">Macro</th>
<th>Description</th>
</tr>
<tr>
<td>__DATE__</td>
<td>The current date as a character literal in "MMM DD YYYY" format.</td>
</tr>
<tr>
<td>__TIME__</td>
<td>The current time as a character literal in "HH:MM:SS" format.</td>
</tr>
<tr>
<td>__FILE__</td>
<td>This contains the current filename as a string literal.</td>
</tr>
<tr>
<td>__LINE__</td>
<td>This contains the current line number as a decimal constant.</td>
</tr>
<tr>
<td>__STDC__</td>
<td>Defined as 1 when the compiler complies with the ANSI standard.</td>
</tr>
</table>
<p>Let's try the following example &minus;</p>
<pre>
#include &lt;stdio.h&gt;

main() {

   printf("File :%s\n", __FILE__ );
   printf("Date :%s\n", __DATE__ );
   printf("Time :%s\n", __TIME__ );
   printf("Line :%d\n", __LINE__ );
   printf("ANSI :%d\n", __STDC__ );

}
</pre>
<p>When the above code in a file <b>test.c</b> is compiled and executed, it produces the following result &minus;</p>
<pre>
File :test.c
Date :Jun 2 2012
Time :03:36:24
Line :8
ANSI :1
</pre>
<h2>Preprocessor Operators</h2>
<p>The C preprocessor offers the following operators to help create macros &minus;</p>
<h3>The Macro Continuation (\) Operator</h3>
<p>A macro is normally confined to a single line. The macro continuation operator (\) is used to continue a macro 
that is too long for a single line. For example &minus;</p>
<pre>
#define  message_for(a, b)  \
   printf(#a " and " #b ": We love you!\n")
</pre>
<h3>The Stringize (#) Operator</h3>
<p>The stringize or number-sign operator ( '#' ), when used within a macro definition, converts a macro parameter 
into a string constant. This operator may be used only in a macro having a specified argument or parameter list.
 For example &minus;</p>
<pre>
#include &lt;stdio.h&gt;

#define  message_for(a, b)  \
   printf(#a " and " #b ": We love you!\n")

int main(void) {
   message_for(Carole, Debra);
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre class="result notranslate">
Carole and Debra: We love you!
</pre>
<h3>The Token Pasting (##) Operator</h3>
<p>The token-pasting operator (##) within a macro definition combines two arguments. It permits two separate tokens
 in the macro definition to be joined into a single token. For example &minus;</p>
<pre>
#include &lt;stdio.h&gt;

#define tokenpaster(n) printf ("token" #n " = %d", token##n)

int main(void) {
   int token34 = 40;
   tokenpaster(34);
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre class="result notranslate">
token34 = 40
</pre>
<p>It happened so because this example results in the following actual output from the preprocessor &minus;</p>
<pre>
printf ("token34 = %d", token34);
</pre>
<p>This example shows the concatenation of token##n into token34 and here we have used both 
<b>stringize</b> and <b>token-pasting</b>.</p>
<h3>The Defined() Operator</h3>
<p>The preprocessor <b>defined</b> operator is used in constant expressions to determine if an identifier is 
defined using #define. If the specified identifier is defined, the value is true (non-zero). If the symbol is not defined,
 the value is false (zero). The defined operator is specified as follows &minus;</p>
<pre>
#include &lt;stdio.h&gt;

#if !defined (MESSAGE)
   #define MESSAGE "You wish!"
#endif

int main(void) {
   printf("Here is the message: %s\n", MESSAGE);  
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
Here is the message: You wish!
</pre>
<h2>Parameterized Macros</h2>
<p>One of the powerful functions of the CPP is the ability to simulate functions using parameterized macros.
 For example, we might have some code to square a number as follows &minus;</p>
<pre>
int square(int x) {
   return x * x;
}
</pre>
<p>We can rewrite above the code using a macro as follows &minus;</p>
<pre class="prettyprint notranslate">
#define square(x) ((x) * (x))
</pre>
<p>Macros with arguments must be defined using the <b>#define</b> directive before they can be used. 
The argument list is enclosed in parentheses and must immediately follow the macro name. Spaces are not allowed 
between the macro name and open parenthesis. For example &minus;</p>
<pre>
#include &lt;stdio.h&gt;

#define MAX(x,y) ((x) &gt; (y) ? (x) : (y))

int main(void) {
   printf("Max between 20 and 10 is %d\n", MAX(10, 20));  
   return 0;
}
</pre>
<p>When the above code is compiled and executed, it produces the following result &minus;</p>
<pre>
Max between 20 and 10 is 20
</pre>


<br/><br/><br/><br/><br/>

<a href="CFileio.jsp">Previous</a>
<a href="CHeaderFiles.jsp">Next</a>



 <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>
</body>
</html>