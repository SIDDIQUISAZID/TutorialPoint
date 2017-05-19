<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Formatting</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>HTML FORMATTING</h1>

<p>If you use a word processor, you must be familiar with the ability to make text bold, italicized, or underlined; these are just three of the ten options available to indicate how text can appear in HTML and XHTML.</p>
<h2>Bold Text</h2>
<p>Anything that appears within <b>&lt;b&gt;...&lt;/b&gt;</b> element, is displayed in bold as shown below:</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Bold Text Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;The following word uses a &lt;b&gt;bold&lt;/b&gt; typeface.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>The following word uses a <b>bold</b> typeface.</p> 
</div>
<h2>Italic Text</h2>
<p>Anything that appears within <b>&lt;i&gt;...&lt;/i&gt;</b> element is displayed in italicized as shown below:</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Italic Text Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;The following word uses a &lt;i&gt;italicized&lt;/i&gt; typeface.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>The following word uses a <i>italicized</i> typeface.</p> 
</div>
<h2>Underlined Text</h2>
<p>Anything that appears within <b>&lt;u&gt;...&lt;/u&gt;</b> element, is displayed with underline as shown below:</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Underlined Text Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;The following word uses a &lt;u&gt;underlined&lt;/u&gt; typeface.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>The following word uses a <u>underlined</u> typeface.</p> 
</div>
<h2>Strike Text</h2>
<p>Anything that appears within <b>&lt;strike&gt;...&lt;/strike&gt;</b> element is displayed with strikethrough, which is a thin line through the text as shown below:</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Strike Text Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;The following word uses a &lt;strike&gt;strikethrough&lt;/strike&gt; typeface.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>The following word uses a <strike>strikethrough</strike> typeface.</p> 
</div>
<h2>Monospaced Font</h2>
<p>The content of a <b>&lt;tt&gt;...&lt;/tt&gt;</b> element is written in monospaced font. Most of the fonts are known as variable-width fonts because different letters are of different widths (for example, the letter 'm' is wider than the letter 'i'). In a monospaced font, however, each letter has the same width.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Monospaced Font Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;The following word uses a &lt;tt&gt;monospaced&lt;/tt&gt; typeface.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>The following word uses a <tt>monospaced</tt> typeface.</p> 
</div>
<h2>Superscript Text</h2>
<p>The content of a <b>&lt;sup&gt;...&lt;/sup&gt;</b> element is written in superscript; the font size used is the same size as the characters surrounding it but is displayed half a character's height above the other characters.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Superscript Text Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;The following word uses a &lt;sup&gt;superscript&lt;/sup&gt; typeface.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>The following word uses a <sup>superscript</sup> typeface.</p> 
</div>
<h2>Subscript Text</h2>
<p>The content of a <b>&lt;sub&gt;...&lt;/sub&gt;</b> element is written in subscript; the font size used is the same as the characters surrounding it, but is displayed half a character's height beneath the other characters.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Subscript Text Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;The following word uses a &lt;sub&gt;subscript&lt;/sub&gt; typeface.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>The following word uses a <sub>subscript</sub> typeface.</p> 
</div>
<h2>Inserted Text</h2>
<p>Anything that appears within <b>&lt;ins&gt;...&lt;/ins&gt;</b> element is displayed as inserted text.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Inserted Text Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;I want to drink &lt;del&gt;cola&lt;/del&gt; &lt;ins&gt;wine&lt;/ins&gt;&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>I want to drink <del>cola</del> <ins>wine</ins></p>
</div>
<h2>Deleted Text</h2>
<p>Anything that appears within <b>&lt;del&gt;...&lt;/del&gt;</b> element, is displayed as deleted text.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Deleted Text Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;I want to drink &lt;del&gt;cola&lt;/del&gt; &lt;ins&gt;wine&lt;/ins&gt;&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>I want to drink <del>cola</del> <ins>wine</ins></p>
</div>
<h2>Larger Text</h2>
<p>The content of the <b>&lt;big&gt;...&lt;/big&gt;</b> element is displayed one font size larger than the rest of the text surrounding it as shown below:</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Larger Text Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;The following word uses a &lt;big&gt;big&lt;/big&gt; typeface.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>The following word uses a <big>big</big> typeface.</p> 
</div>
<h2>Smaller Text</h2>
<p>The content of the <b>&lt;small&gt;...&lt;/small&gt;</b> element is displayed one font size smaller than the rest of the text surrounding it as shown below:</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Smaller Text Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;The following word uses a &lt;small&gt;small&lt;/small&gt; typeface.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>The following word uses a <small>small</small> typeface.</p> 
</div>
<h2>Grouping Content</h2>
<p>The <b>&lt;div&gt;</b> and <b>&lt;span&gt;</b> elements allow you to group together several elements to create sections or subsections of a page.</p>
<p>For example, you might want to put all of the footnotes on a page within a &lt;div&gt; element to indicate that all of the elements within that &lt;div&gt; element relate to the footnotes. You might then attach a style to this &lt;div&gt; element so that they appear using a special set of style rules.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Div Tag Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;div id="menu" align="middle" &gt;
&lt;a href="/index.htm"&gt;HOME&lt;/a&gt; | 
&lt;a href="/about/contact_us.htm"&gt;CONTACT&lt;/a&gt; | 
&lt;a href="/about/index.htm"&gt;ABOUT&lt;/a&gt;
&lt;/div&gt;

&lt;div id="content" align="left" bgcolor="white"&gt;
&lt;h5&gt;Content Articles&lt;/h5&gt;
&lt;p&gt;Actual content goes here.....&lt;/p&gt;
&lt;/div&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<div id="menu" align="middle" >
<a href="/index.htm">HOME</a> | 
<a href="/about/contact_us.htm">CONTACT</a> | 
<a href="/about/index.htm">ABOUT</a>
</div>
<div id="content" align="left" bgcolor="white">
<h5>Content Articles</h5>
<p>Actual content goes here.....</p>
</div>
</div>
<p>The &lt;span&gt; element, on the other hand, can be used to group inline elements only. So, if you have a part of a sentence or paragraph which you want to group together,  you could use the &lt;span&gt; element as follows</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Span Tag Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;This is the example of &lt;span style="color:green"&gt;span tag&lt;/span&gt; and the &lt;span style="color:red"&gt;div tag&lt;/span&gt; alongwith CSS&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>This is the example of <span style="color:green">span tag</span> and the <span style="color:red">div tag</span> alongwith CSS</p>
</div>
<p>These tags are commonly used with CSS to allow you to attach a style to a section of a page.</p>


<br/><br/><br/><br/><br/>


<a href="HAttributes.jsp">Previous</a>
<a href="HPhraseTags.jsp">Next</a>




<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>