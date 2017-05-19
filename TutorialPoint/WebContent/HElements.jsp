<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Elements</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>HTML ELEMENTS</h1>

<p>An <b>HTML element</b> is defined by a starting tag. If the element contains other content, it ends with a closing tag, where the element name is preceded by a forward slash as shown below with few tags:</p>
<table class="table table-bordered">
<tr><th>Start Tag</th><th>Content</th><th>End Tag</th></tr>
<tr><td>&lt;p&gt;</td><td>This is paragraph content.</td><td>&lt;/p&gt;</td></tr>
<tr><td>&lt;h1&gt;</td><td>This is heading content.</td><td>&lt;/h1&gt;</td></tr>
<tr><td>&lt;div&gt;</td><td>This is division content.</td><td>&lt;/div&gt;</td></tr>
<tr><td>&lt;br /&gt;</td><td></td><td></td></tr>
</table>
<p>So here &lt;p&gt;....&lt;/p&gt; is an HTML element, &lt;h1&gt;...&lt;/h1&gt; is another HTML element. There are some HTML elements which don't need to be closed, such as &lt;img.../&gt;, &lt;hr /&gt; and &lt;br /&gt; elements. These are known as <b>void elements</b>.</p>
<p>HTML documents consist of a tree of these elements and  they specify how HTML documents should be built, and what kind of content should be placed in what part of an HTML document.</p>
<h2>HTML Tag vs. Element</h2>
<p>An HTML element is defined by a <i>starting tag</i>. If the element contains other content, it ends with a <i>closing tag</i>.</p>
<p>For example &lt;p&gt; is starting tag of a paragraph and &lt;/p&gt; is closing tag of the same paragraph but <b>&lt;p&gt;This is paragraph&lt;/p&gt;</b> is a paragraph element.</p>
<h2>Nested HTML Elements</h2>
<p>It is very much allowed to keep one HTML element inside another HTML element:</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Nested Elements Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;h1&gt;This is &lt;i&gt;italic&lt;/i&gt; heading&lt;/h1&gt;
&lt;p&gt;This is &lt;u&gt;underlined&lt;/u&gt; paragraph&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will display following result:</p>
<div class="result notranslate">
<h1>This is <i>italic</i> heading</h1>
<p>This is <u>underlined</u> paragraph</p>
</div>
<br/><br/><br/><br/><br/>

<a href="HBasicTags.jsp">Previous</a>
<a href="HAttributes.jsp">Next</a>



<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>