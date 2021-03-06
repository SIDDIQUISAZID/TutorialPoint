<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Header Files In C</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>HEADER FILES IN C</h1>

<p>A header file is a file with extension <b>.h</b> which contains C function declarations and macro definitions
 to be shared between several source files. There are two types of header files: the files that the programmer writes
  and the files that comes with your compiler.</p>
<p>You request to use a header file in your program by including it with the C preprocessing directive <b>#include</b>, like
 you have seen inclusion of <b>stdio.h</b> header file, which comes along with your compiler.</p>
<p>Including a header file is equal to copying the content of the header file but we do not do it because it will be error-prone
 and it is not a good idea to copy the content of a header file in the source files, especially if we have multiple source files
  in a program.</p>
<p>A simple practice in C or C++ programs is that we keep all the constants, macros, system wide global variables,
 and function prototypes in the header files and include that header file wherever it is required.</p>
<h2>Include Syntax</h2>
<p>Both the user and the system header files are included using the preprocessing directive <b>#include</b>. 
It has the following two forms &minus;</p>
<pre>
#include &lt;file&gt;
</pre>
<p>This form is used for system header files. It searches for a file named 'file' in a standard list of system directories.
 You can prepend directories to this list with the -I option while compiling your source code.</p>
<pre>
#include "file"
</pre>
<p>This form is used for header files of your own program. It searches for a file named 'file' in the directory 
containing the current file. You can prepend directories to this list with the -I option while compiling your source code.</p>
<h2>Include Operation</h2>
<p>The <b>#include</b> directive works by directing the C preprocessor to scan the specified file as input before
 continuing with the rest of the current source file. The output from the preprocessor contains the output already generated,
  followed by the output resulting from the included file, followed by the output that comes from the text after the
   <b>#include</b> directive. For example, if you have a header file header.h as follows &minus;</p>
<pre>
char *test (void);
</pre>
<p>and a main program called <i>program.c</i> that uses the header file, like this &minus;</p>
<pre>
int x;
#include "header.h"

int main (void) {
   puts (test ());
}
</pre>
<p>the compiler will see the same token stream as it would if program.c read.</p>
<pre>
int x;
char *test (void);

int main (void) {
   puts (test ());
}
</pre>
<h2>Once-Only Headers</h2>
<p>If a header file happens to be included twice, the compiler will process its contents twice and it will result
 in an error. The standard way to prevent this is to enclose the entire real contents of the file in a conditional, 
 like this &minus;</p>
<pre>
#ifndef HEADER_FILE
#define HEADER_FILE

the entire header file file

#endif
</pre>
<p>This construct is commonly known as a wrapper <b>#ifndef</b>. When the header is included again, the conditional will be false,
 because HEADER_FILE is defined. The preprocessor will skip over the entire contents of the file, and the compiler will not see
  it twice.</p>
<h2>Computed Includes</h2>
<p>Sometimes it is necessary to select one of the several different header files to be included into your program.
 For instance, they might specify configuration parameters to be used on different sorts of operating systems.
  You could do this with a series of conditionals as follows &minus;</p>
<pre>
#if SYSTEM_1
   # include "system_1.h"
#elif SYSTEM_2
   # include "system_2.h"
#elif SYSTEM_3
   ...
#endif
</pre>
<p>But as it grows, it becomes tedious, instead the preprocessor offers the ability to use a macro for the header name.
 This is called a <b>computed include</b>. Instead of writing a header name as the direct argument of <b>#include</b>, you
  simply put a macro name there &minus;</p>
<pre>
#define SYSTEM_H "system_1.h"
...
#include SYSTEM_H
</pre>
<p>SYSTEM_H will be expanded, and the preprocessor will look for system_1.h as if the <b>#include</b> had been written that
 way originally. SYSTEM_H could be defined by your Makefile with a -D option.</p>
 
 
 <br/><br/><br/><br/><br/>

<a href="CPreprocessors.jsp">Previous</a>
<a href="CTypeCasting.jsp">Next</a>


  <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>