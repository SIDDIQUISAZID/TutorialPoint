<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Marquees</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>HTML MARQUEES</h1>


<p>An HTML marquee is a scrolling piece of text displayed either horizontally across or vertically down your webpage depending on the settings. This is created by using HTML &lt;marquees&gt; tag.</p>
<blockquote><b>Note: </b>The HTML &lt;marquee&gt; tag may not be supported by various browsers so its not recommended to rely on this tag, instead you can use Javascript and CSS to create such effects.</blockquote>
<h2>Syntax</h2>
<p>A simple syntax to use HTML &lt;marquee&gt; tag is as follows:</p>
<pre class="prettyprint notranslate">
&lt;marquee attribute_name="attribute_value"....more attributes&gt;

One or more lines or text message or image

&lt;/marquee&gt;
</pre>
<h2>The &lt;marquee&gt; Tag Attributes</h2>
<p>Following is the list of important attributes which can be used with &lt;marquee&gt; tag.</p>
<table class="table table-bordered">
<tr><th>Attribute</th><th>Description</th></tr>
<tr><td>width</td><td>This specifies the width of the marquee. This can be a value like 10 or 20% etc.</td></tr>
<tr><td>height</td><td>This specifies the height of the marquee. This can be a value like 10 or 20% etc.</td></tr>
<tr><td>direction</td><td>This specifies the direction in which marquee should scroll. This can be a value like <i>up</i>, <i>down</i>, <i>left</i> or <i>right</i>.</td></tr>
<tr><td>behavior</td><td>This specifies the type of scrolling of the marquee. This can have a value like <i>scroll</i>, <i>slide</i> and <i>alternate</i>.</td></tr>
<tr><td>scrolldelay</td><td>This specifies how long to delay between each jump. This will have a value like 10 etc.</td></tr>
<tr><td>scrollamount</td><td>This specifies the speed of marquee text. This can have a value like 10 etc.</td></tr>
<tr><td>loop</td><td>This specifies how many times to loop. The default value is INFINITE, which means that the marquee loops endlessly.</td></tr>
<tr><td>bgcolor</td><td>This specifies background color in terms of color name or color hex value.</td></tr>
<tr><td>hspace</td><td>This specifies horizontal space around the marquee.  This can be a value like 10 or 20% etc.</td></tr>
<tr><td>vspace</td><td>This specifies vertical space around the marquee. This can be a value like 10 or 20% etc.</td></tr>
</table>

<p>Below are few examples to demonstrate the usage of marquee tag.</p>
<h2>Examples - 1</h2>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML marquee Tag&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;marquee&gt;This is basic example of marquee&lt;/marquee&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<marquee>This is basic example of marquee</marquee>
</div>
<h2>Examples - 2</h2>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML marquee Tag&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;marquee width="50%"&gt;This example will take only 50% width&lt;/marquee&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<marquee width="50%">This example will take only 50% width</marquee>
</div>
<h2>Examples - 3</h2>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML marquee Tag&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;marquee direction="right"&gt;This text will scroll from left to right&lt;/marquee&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
 <marquee direction="right">This text will scroll from left to right</marquee>
</div>
<h2>Examples - 4</h2>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML marquee Tag&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;marquee direction="up"&gt;This text will scroll from bottom to up&lt;/marquee&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<marquee direction="up">This text will scroll from bottom to up</marquee>
</div>

<br/><br/><br/><br/><br/>



<a href="HForms.jsp">Previous</a>
<a href="HHeaders.jsp">Next</a>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>