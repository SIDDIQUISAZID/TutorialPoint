<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>C Course Contents</title>
</head>
<body>

<header>
eduOnline
</header>

<b style="font-size: 25px">Hello <%= session.getAttribute("fname") %>. Now you can get started with learning how to program in C</b><br/><br/><br/>

<a href="CIntro.jsp">Introduction</a><br/>
<a href="CHelloProgram.jsp">A Simple Program</a><br/>
<a href="CSyntax.jsp">Syntax</a><br/>
<a href="CDataTypes.jsp">Data types</a><br/>
<a href="CVariables.jsp">Variables</a><br/>
<a href="CConstants.jsp">Constants</a><br/>
<a href="CStorageClasses.jsp">Storage Classes</a><br/>
<a href="COperators.jsp">Operators</a><br/>
<a href="CDecisionMaking.jsp">Decision Making</a><br/>
<a href="CLoops.jsp">Loops</a><br/>
<a href="CFunctions.jsp">Functions</a><br/>
<a href="CScopeRules.jsp">Scope Rules</a><br/>
<a href="CArrays.jsp">Arrays</a><br/>
<a href="CPointers.jsp">Pointers</a><br/>
<a href="CStrings.jsp">Strings</a><br/>
<a href="CStructures.jsp">Structures</a><br/>
<a href="CUnions.jsp">Unions</a><br/>
<a href="CBitFields.jsp">Bit Fields</a><br/>
<a href="CTypedef.jsp">Typedef</a><br/>
<a href="CIO.jsp">Input and Output</a><br/>
<a href="CFileio.jsp">File I/O</a><br/>
<a href="CPreprocessors.jsp">Preprocessors</a><br/>
<a href="CHeaderFiles.jsp">Header Files</a><br/>
<a href="CTypeCasting.jsp">Type Casting</a><br/>
<a href="CErrorHandling.jsp">Error Handling</a><br/>
<a href="CRecursion.jsp">Recursion</a><br/>
<a href="CVarArguments.jsp">Variable Arguments</a><br/>
<a href="CMemoryMgt.jsp">Memory Management</a><br/>
<a href="CCmdargs.jsp">Command Line Arguments</a><br/>
<br/>
<br/>
<br/>

<a href="Quiz.jsp?table_name=cquiz">Take the Quiz</a>

<br/>
<br/>
<form>

<input type="hidden" name="course_name" value="C">
<input type="submit" formaction="RemoveCourseServlet" value="Mark Course As Completed">
</form>
<br/><br/><br/>
<b>Caution:</b><br/>
<small>Marking a course as "completed" would remove it permanently from your list of courses.
 To access the contents and the quiz again regarding this course you would have to enroll again.</small>



<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>