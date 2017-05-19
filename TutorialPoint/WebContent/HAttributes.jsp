<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Attributes</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>HTML ATTRIBUTES</h1>

<p>We have seen few HTML tags and their usage like heading tags &lt;h1&gt;, &lt;h2&gt;, paragraph tag &lt;p&gt; and other tags. We used them so far in their simplest form, but most of the HTML tags can also have attributes, which are extra bits of information.</p> 
<p>An attribute is used to define the characteristics of an HTML element and is placed inside the element's opening tag. All attributes are made up of two parts: a <b>name</b> and a <b>value</b>:</p>
<ul class="list">
<li><p>The <b>name</b> is the property you want to set. For example, the paragraph &lt;p&gt; element in the example carries an attribute whose name is <b>align</b>, which you can use to indicate the alignment of paragraph on the page.</p></li>
<li><p>The <b>value</b> is what you want the value of the property to be set and always put within quotations. The below example shows three possible values of align attribute: <b>left, center</b> and <b>right</b>.</p></li>
</ul>
<p>Attribute names and attribute values are case-insensitive. However, the World Wide Web Consortium (W3C) recommends lowercase attributes/attribute values in their HTML 4 recommendation.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Align Attribute Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p align="left"&gt;This is left aligned&lt;/p&gt;
&lt;p align="center"&gt;This is center aligned&lt;/p&gt;
&lt;p align="right"&gt;This is right aligned&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will display following result:</p>
<div class="result notranslate">
<p style="text-align:left">This is left aligned</p>
<p style="text-align:center">This is center aligned</p>
<p style="text-align:right">This is right aligned</p>
</div>
<h2>Core Attributes</h2>
<p>The four core attributes that can be used on the majority of HTML elements (although not all) are:</p>
<ul class="list">
<li>id</li>
<li>title</li>
<li>class</li>
<li>style</li>
</ul>
<h3>The id Attribute</h3>
<p>The <b>id</b> attribute of an HTML tag can be used to uniquely identify any element within an HTML page. There are two primary reasons that you might want to use an id attribute on an element:</p>
<ul>
<li><p>If an element carries an id attribute as a unique identifier it is possible to identify just that element and its content.</p></li>
<li><p>If you have two elements of the same name within a Web page (or style sheet), you can use the id
attribute to distinguish between elements that have the same name.</p></li>
</ul>
<p>We will discuss style sheet in separate tutorial. For now, let's use the id attribute to distinguish between two paragraph elements as shown below.</p>
<h4>Example</h4>
<pre class="result">
&lt;p id="html"&gt;This para explains what is HTML&lt;/p&gt;
&lt;p id="css"&gt;This para explains what is Cascading Style Sheet&lt;/p&gt;
</pre>
<h3>The title Attribute</h3>
<p>The <b>title</b> attribute gives a suggested title for the element. They syntax for the <b>title</b> attribute is similar as explained for <b>id</b> attribute:</p>
<p>The behavior of this attribute will depend upon the element that carries it, although it is often displayed as a tooltip when cursor comes over the element or while the element is loading.</p>
<h4>Example</h4>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;The title Attribute Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;h3 title="Hello HTML!"&gt;Titled Heading Tag Example&lt;/h3&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<h3 title="Hello HTML!">Titled Heading Tag Example</h3>
</div>
<p>Now try to bring your cursor over "Titled Heading Tag Example" and you will see that whatever title you used in your code is coming out as a tooltip of the cursor.</p>
<h3>The class Attribute</h3>
<p>The <b>class</b> attribute is used to associate an element with a style sheet, and specifies the class of element. You will learn more about the use of the class attribute when you will learn Cascading Style Sheet (CSS). So for now you can avoid it. </p>
<p>The value of the attribute may also be a space-separated list of class names. For example:</p>
<pre class="prettyprint notranslate">
class="className1 className2 className3"
</pre>
<h3>The style Attribute</h3>
<p>The style attribute allows you to specify Casecading Style Sheet (CSS) rules within the element.</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;The style Attribute&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p style="font-family:arial; color:#FF0000;"&gt;Some text...&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p style="font-family:arial; color:#FF0000;">Some text...</p>
</div>
<p>At this point of time, we are not learning CSS, so just let's proceed without bothering much about CSS. Here you need to understand what are HTML attributes and how they can be used while formatting content.</p>
<h2>Internationalization Attributes</h2>
<p>There are three internationalization attributes, which are available for most (although not all) XHTML elements.</p>
<ul>
<li>dir</li>
<li>lang</li>
<li>xml:lang</li>
</ul>
<h3>The dir Attribute</h3>
<p>The <b>dir</b> attribute allows you to indicate to the browser the direction in which the text should flow. The dir attribute can take one of two values, as you can see in the table that follows:</p>
<table class="table table-bordered">
<tr><th>Value</th><th>Meaning</th></tr>
<tr><td>ltr</td><td>Left to right (the default value)</td></tr>
<tr><td>rtl</td><td>Right to left (for languages such as Hebrew or Arabic that are read right to left)</td></tr>
</table>
<h4>Example</h4>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html dir="rtl"&gt;
&lt;head&gt;
&lt;title&gt;Display Directions&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
This is how IE 5 renders right-to-left directed text.
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate" style="text-align:right;">
This is how IE 5 renders right-to-left directed text.
</div>
<p>When <i>dir</i> attribute is used within the &lt;html&gt; tag, it determines how text will be presented within the entire document. When used within another tag, it controls the text's direction for just the content of that tag.</p>
<h3>The lang Attribute</h3>
<p>The <b>lang</b> attribute allows you to indicate the main language used in a document, but this attribute was kept in HTML only for backwards compatibility with earlier versions of HTML. This attribute has been replaced by the <b>xml:lang</b> attribute in new XHTML documents.</p>
<p>The values of the <i>lang</i> attribute are ISO-639 standard two-character language codes. Check <a href="/html/language_iso_codes.htm"><b>HTML Language Codes: ISO 639</b></a> for a complete list of language codes.</p>
<h4>Example</h4>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html lang="en"&gt;
&lt;head&gt;
&lt;title&gt;English Language Page&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
This page is using English Language
&lt;/body&gt;
&lt;/html&gt;
</pre>
<h3>The xml:lang Attribute</h3>
<p>The <i>xml:lang</i> attribute is the XHTML replacement for the <i>lang</i> attribute. The value of the <i>xml:lang</i> attribute should be an ISO-639 country code as mentioned in previous section.</p>
<h2>Generic Attributes</h2>
<p>Here's a table of some other attributes that are readily usable with many of the HTML tags.</p>
<table class="table table-bordered">
<tr><th><b>Attribute</b></th><th><b>Options</b></th><th><b>Function</b></th></tr>
<tr><td>align</td><td>right, left, center</td><td>Horizontally aligns tags</td></tr>
<tr><td>valign</td><td>top, middle, bottom</td><td>Vertically aligns tags within an HTML element.</td></tr>
<tr><td>bgcolor</td><td>numeric, hexadecimal, RGB values</td><td>Places a background color behind an element</td></tr>
<tr><td>background</td><td>URL</td><td>Places a background image behind an element</td></tr>
<tr><td>id</td><td>User Defined</td><td>Names an element for use with Cascading Style Sheets.</td></tr>
<tr><td>class</td><td>User Defined</td><td>Classifies an element for use with Cascading Style Sheets.</td></tr>
<tr><td>width</td><td>Numeric Value</td><td>Specifies the width of tables, images, or table cells.</td></tr>
<tr><td>height</td><td>Numeric Value</td><td>Specifies the height of tables, images, or table cells.</td></tr>
<tr><td>title</td><td>User Defined</td><td>"Pop-up" title of the elements.</td></tr>
</table>



<br/><br/><br/><br/><br/>


<a href="HElements.jsp">Previous</a>
<a href="HFormatting.jsp">Next</a>




<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>