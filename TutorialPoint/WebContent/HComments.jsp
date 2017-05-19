<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Comments</title>
</head>
<body>

<header>
eduOnline
</header>


<h1>HTML COMMENTS</h1>
<p>Comment is a piece of code which is ignored by any web browser. It is a good practice to add comments into your HTML code, especially in complex documents, to indicate sections of a document, and any other notes to anyone looking at the code. Comments help you and others understand your code and increases code readability.</p>
<p>HTML comments are placed in between <b>&lt;!-- ... --&gt;</b> tags. So any content placed with-in &lt;!-- ... --&gt; tags will be treated as comment and will be completely ignored by the browser.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;  &lt;!-- Document Header Starts --&gt;
&lt;title&gt;This is document title&lt;/title&gt;
&lt;/head&gt; &lt;!-- Document Header Ends --&gt;
&lt;body&gt;
&lt;p&gt;Document content goes here.....&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result without displaying the content given as a part of comments:</p>
<div class="result notranslate">
<p>Document content goes here.....</p>
</div>
<h2>Valid vs Invalid Comments</h2>
<p>Comments do not nest which means a comment can not be put inside another comment. Second the double-dash sequence "--" may not appear inside a comment except as part of the closing --&gt; tag. You must also make sure that there are no spaces in the start-of-comment string.</p>
<h3>Example</h3>
<p>Here given comment is a valid comment and will be wiped off by the browser.</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Valid Comment Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;!--   This is valid comment --&gt;
&lt;p&gt;Document content goes here.....&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>But following line is not a valid comment and will be displayed by the browser. This is because there is a space between the left angle bracket and the exclamation mark.</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;  
&lt;title&gt;Invalid Comment Example&lt;/title&gt;
&lt;/head&gt; 
&lt;body&gt;
&lt; !--   This is not a valid comment --&gt;
&lt;p&gt;Document content goes here.....&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
&lt; !--   This is not a valid comment --&gt;
<p>Document content goes here.....</p>
</div>
<h2>Multiline Comments</h2>
<p>So far we have seen single line comments, but HTML supports multi-line comments as well.</p>
<p>You can comment multiple lines by the special beginning tag &lt;!-- and ending tag --&gt; placed before the first line and end of the last line as shown in the given example below.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;&lt;html&gt;
&lt;head&gt;  
&lt;title&gt;Multiline Comments&lt;/title&gt;
&lt;/head&gt; 
&lt;body&gt;
&lt;!--   
This is a multiline comment and it can
span through as many as lines you like.
--&gt;
&lt;p&gt;Document content goes here.....&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>Document content goes here.....</p>
</div>
<h2>Conditional Comments</h2>
<p>Conditional comments only work in Internet Explorer (IE) on Windows but they are ignored by other browsers. They are supported from Explorer 5 onwards, and you can use them to give conditional instructions to different versions of IE.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;&lt;html&gt;
&lt;head&gt;  
&lt;title&gt;Conditional Comments&lt;/title&gt;

&lt;!--[if IE 6]&gt;
   Special instructions for IE 6 here
&lt;![endif]--&gt;

&lt;/head&gt; 
&lt;body&gt;
&lt;p&gt;Document content goes here.....&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>You will come across a situation where you will need to apply a different style sheet based on different versions of Internet Explorer, in such situation conditional comments will be helpful.</p>
<h2>Using Comment Tag</h2>
<p>There are few browsers that support &lt;comment&gt; tag to comment a part of HTML code.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Using Comment Tag&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;This is &lt;comment&gt;not&lt;/comment&gt; Internet Explorer.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>If you are using IE then it will produce following result:</p>
<div class="result notranslate">
<p>This is Internet Explorer.</p>
</div>
<p>But if you are not using IE, then it will produce following result:</p>
<div class="result notranslate">
<p>This is <comment>not</comment> Internet Explorer.</p>
</div>
<h2>Commenting Script Code</h2>
<p>Though you will learn Javascript with HTML, in a separate tutorial, but here you must make a note that if you are using Java Script or VB Script in your HTML code then it is recommended to put that script code inside proper HTML comments so that old browsers can work properly.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Commenting Script Code&lt;/title&gt;
&lt;script&gt;
&lt;!-- 
   document.write("Hello World!")
//--&gt;
&lt;/script&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Hello , World!&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>Hello World!</p>
<p>Hello , World!</p>
</div>
<h2>Commenting Style Sheets</h2>
<p>Though you will learn using style sheets with HTML in a separate tutorial, but here you must make a note that if you are using Casecading Style Sheet (CSS) in your HTML code then it is recommended to put that style sheet code inside proper HTML comments so that old browsers can work properly.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Commenting Style Sheets&lt;/title&gt;
&lt;style&gt;
&lt;!--
.example {
  border:1px solid #4a7d49;
}
//--&gt;
&lt;/style&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;div class="example"&gt;Hello , World!&lt;/div&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<div style="border:1px solid #4a7d49;">Hello , World!</div>
</div>




<br/><br/><br/><br/><br/>



<a href="HMetaTags.jsp">Previous</a>
<a href="HImages.jsp">Next</a>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>