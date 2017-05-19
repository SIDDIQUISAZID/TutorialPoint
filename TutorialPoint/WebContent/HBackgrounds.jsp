<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Backgrounds</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>HTML BACKGROUNDS</h1>

<p>By default, your webpage background is white in color. You may not like it, but no worries. HTML provides you following two good ways to decorate your webpage background.</p>
<ul class="list">
<li>Html Background with Colors</li><br/>
<li>Html Background with Images</li><br/>
</ul>
<p>Now let's see both the approaches one by one using appropriate examples.</p>
 
<h2>Html Background with Colors</h2>
<p>The <b>bgcolor</b> attribute is used to control the background of an HTML element, specifically page body and table backgrounds. Following is the syntax to use bgcolor attribute with any HTML tag.</p>
<pre class="prettyprint notranslate">
&lt;tagname bgcolor="color_value"...&gt;
</pre>
<p>This color_value can be given in any of the following formats:</p>
<pre class="prettyprint notranslate">
&lt;!-- Format 1 - Use color name --&gt;
&lt;table bgcolor="lime" &gt;
 
&lt;!-- Format 2 - Use hex value --&gt;
&lt;table bgcolor="#f1f1f1" &gt;
 
&lt;!-- Format 3 - Use color value in RGB terms --&gt;
&lt;table bgcolor="rgb(0,0,120)" &gt;
</pre>
<h3>Example</h3>
<p>Here are the examples to set background of an HTML tag:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Background Colors&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;

&lt;!-- Format 1 - Use color name --&gt;
&lt;table bgcolor="yellow" width="100%"&gt;
&lt;tr&gt;&lt;td&gt;
This background is yellow
&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;
 
&lt;!-- Format 2 - Use hex value --&gt;
&lt;table bgcolor="#6666FF" width="100%"&gt;
&lt;tr&gt;&lt;td&gt;
This background is sky blue
&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;
 
&lt;!-- Format 3 - Use color value in RGB terms --&gt;
&lt;table bgcolor="rgb(255,0,255)"  width="100%"&gt;
&lt;tr&gt;&lt;td&gt;
This background is green
&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;

&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<!-- Format 1 - Use color name -->
<table style="background-color:yellow; color:#000" width="100%">
<tr><td>
This background is yellow
</td></tr>
</table>
 
<!-- Format 2 - Use hex value -->
<table style="background-color:#6666FF; color:#000" width="100%">
<tr><td>
This background is sky blue
</td></tr>
</table>
 
<!-- Format 3 - Use color value in RGB terms -->
<table style="background-color:#4a7d49; color:#000"  width="100%">
<tr><td>
This background is green
</td></tr>
</table>
</div>
<h2>Html Background with Images</h2>
<p>The <b>background</b> attribute can also be used to control the background of an HTML elmement, specifically page body and table backgrounds. You can specify an image to set background of your HTML page or table. Following is the syntax to use background attribute with any HTML tag.</p>
<blockquote><b>Note: </b>The <i>background</i> attribute is deprecated and it is recommended to use Style Sheet for background setting.</blockquote>
<pre class="prettyprint notranslate">
&lt;tagname background="Image URL"...&gt;
</pre>
<p>The most frequently used image formats are JPEG, GIF and PNG images.</p>
<h3>Example</h3>
<p>Here are the examples to set background  images of a  table.</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Background Images&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;

&lt;!-- Set table background --&gt;
&lt;table background="/images/html.gif" width="100%" height="100"&gt;
&lt;tr&gt;&lt;td&gt;
This background is filled up with HTML image.
&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;
 
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<!-- How to set a table background -->
<table background=".\Images\back1.jpg" width="100%"  height="100">
<tr><td>
This background is filled up with HTML image.
</td></tr>
</table>
</div>
<h2>Patterned &amp; Transparent Backgrounds</h2>
<p>You might have seen many pattern or transparent backgrounds on various websites. This simply can be achieved by using patterned image or transparent image in the background.</p>
<p>It is suggested that while creating patterns or transparent GIF or PNG images, use the smallest dimensions possible even as small as 1x1 to avoid slow loading.</p>
<h3>Example</h3>
<p>Here are the examples to set background  pattern of a  table:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Background Images&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;

&lt;!-- Set a table background using pattrern --&gt;
&lt;table background="/images/pattern1.gif" width="100%" height="100"&gt;
&lt;tr&gt;&lt;td&gt;
This background is filled up with a pattern image.
&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;

&lt;!-- Another example on table background using pattrern --&gt;
&lt;table background="/images/pattern2.gif" width="100%" height="100"&gt;
&lt;tr&gt;&lt;td&gt;
This background is filled up with a pattern image.
&lt;/td&gt;&lt;/tr&gt;
&lt;/table&gt;
 
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<!-- Set a table background using pattrern -->
<table background=".\Images\pattern1.jpg" width="100%"  height="100">
<tr><td>
This background is filled up with a pattern image.
</td></tr>
</table>

<!-- Another example on table background using pattrern -->
<table background="/images/pattern2.gif" width="100%"  height="100">
<tr><td>
This background is filled up with a pattern image.
</td></tr>
</table>
</div>

<br/><br/><br/><br/><br/>



<a href="HBlocks.jsp">Previous</a>
<a href="HColors.jsp">Next</a>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>