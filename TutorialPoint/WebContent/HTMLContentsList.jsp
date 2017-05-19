<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Course Contents</title>
</head>
<body>


<header>
eduOnline
</header>

<b style="font-size: 25px">Hello <%= session.getAttribute("fname") %>. Now you can get started with learning how to design web pages in HTML</b><br/><br/><br/>

<a href="HIntro.jsp">Introduction</a><br/>
<a href="HBasicTags.jsp">Basic Tags</a><br/>
<a href="HElements.jsp">Elements</a><br/>
<a href="HAttributes.jsp">Attributes</a><br/>
<a href="HFormatting.jsp">Formatting</a><br/>
<a href="HPhraseTags.jsp">Phrase Tags</a><br/>
<a href="HMetaTags.jsp">Meta Tags</a><br/>
<a href="HComments.jsp">Comments</a><br/>
<a href="HImages.jsp">Images</a><br/>
<a href="HTables.jsp">Tables</a><br/>
<a href="HLists.jsp">Lists</a><br/>
<a href="HTextLinks.jsp">Text Links</a><br/>
<a href="HImageLinks.jsp">Image Links</a><br/>
<a href="HEmailLinks.jsp">Email Links</a><br/>
<a href="HFrames.jsp">Frames</a><br/>
<a href="HIFrames.jsp">IFrames</a><br/>
<a href="HBlocks.jsp">Blocks</a><br/>
<a href="HBackgrounds.jsp">Backgrounds</a><br/>
<a href="HColors.jsp">Colors</a><br/>
<a href="HFonts.jsp">Fonts</a><br/>
<a href="HForms.jsp">Forms</a><br/>
<a href="HMarquees.jsp">Marquees</a><br/>
<a href="HHeaders.jsp">Headers</a><br/>
<a href="HStylesheet.jsp">Stylesheet</a><br/>
<a href="HJavascript.jsp">Javascript</a><br/>
<a href="HLayouts.jsp">Layouts</a><br/>
<br/><br/><br/><br/><br/>
<a href="Quiz.jsp?table_name=htmlquiz">Take the Quiz</a>

<br/>
<br/>
<form>

<input type="hidden" name="course_name" value="HTML">
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