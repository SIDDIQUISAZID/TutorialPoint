<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C Syntax</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>BASIC SYNTAX</h1>

<h3>Tokens in C</h3>

<p>A C program consists of various tokens and a token is either a keyword, an identifier, a constant,
a string literal, or a symbol. For example, the following C statement consists of five tokens.
<br/>
printf("Hello, World! \n");
<br/>
The individual tokens are 
</p>

<pre>

<code>

printf
(
"Hello, World! \n"
)
;

</code>

</pre>

<h3>Semicolons</h3>

<p>In a C program, the semicolon is a statement terminator. That is, each individual statement must be ended with a semicolon.
 It indicates the end of one logical entity.<br/>
Given below are two different statements
<pre>
<code>
printf("Hello, World! \n");
return 0;

</code>
</pre>

<h3>Comments</h3>
<p>
Comments are like helping text in your C program and they are ignored by the compiler.
They start with /* and terminate with the characters */ as shown below <br/>

/* my first program in C */<br/>

You cannot have comments within comments and they do not occur within a string or character literals.
</p>

<h3>Identifiers</h3>

<p>A C identifier is a name used to identify a variable, function, or any other user-defined item.
 An identifier starts with a letter A to Z, a to z, or an underscore '_' followed by zero or more letters, underscores,
  and digits (0 to 9).<br/>
C does not allow punctuation characters such as @, $, and % within identifiers.
 C is a case-sensitive programming language. Thus, Manpower and manpowerare two different identifiers in C. <br/>
 
Here are some examples of acceptable identifiers <br/></p>

<pre>

mohd   zara    abc   move_name  a_123
myname50   _temp   j     a23b9      retVal
</pre>

<h3>Keywords</h3>

<p>The following list shows the reserved words in C. These reserved words may not be 
used as constants or variables or any other identifier names.</p>

<pre>

auto	else	Long	switch
break	enum	register	typedef
case	extern	return	union
char	float	Short	unsigned
const	for	signed	void
continue	goto	sizeof	volatile
default	if	static	while
do	int	struct	_Packed
double			

</pre>

<h3>Whitespace in C</h3>
<p>
A line containing only whitespace, possibly with a comment, is known as a blank line, and a C compiler totally ignores it.
Whitespace is the term used in C to describe blanks, tabs, newline characters and comments. 
Whitespace separates one part of a statement from another and enables the compiler to identify where one element in a statement, 
such as int, ends and the next element begins. Therefore, in the following statement </p>

int age;<br/>

there must be at least one whitespace character (usually a space) between int and age for the compiler to be able to
 distinguish them. On the other hand, in the following statement <br/>
 <pre>
 fruit = apples + oranges;   // get the total fruit</br>
 </pre>
 no whitespace characters are necessary between fruit and =, or between = and apples, 
 although you are free to include some if you wish to increase readability.

<br/><br/><br/><br/><br/>
<a href="CHelloProgram.jsp">Previous</a>
<a href="CDataTypes.jsp">Next</a>
 <footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>