<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Lists</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>HTML LISTS</h1>


<p>HTML offers web authors three ways  for specifying lists of information. All lists must contain one or more list elements. Lists may contain:</p>
<ul class="list">
<li><b>&lt;ul&gt;</b> - An unordered list. This will list items using plain bullets.</li><br/>
<li><b>&lt;ol&gt;</b> - An ordered list. This will use different schemes of numbers to list your items.</li><br/>
<li><b>&lt;dl&gt;</b> - A definition list. This arranges your items in the same way as they are arranged in a dictionary.</li><br/>
</ul>
<h2>HTML Unordered Lists</h2>
<p>An unordered list is a collection of related items that have no special order or sequence. This list is created by using HTML <b>&lt;ul&gt;</b> tag. Each item in the list is marked with a bullet.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Unordered List&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;ul&gt;
&lt;li&gt;Beetroot&lt;/li&gt;
&lt;li&gt;Ginger&lt;/li&gt;
&lt;li&gt;Potato&lt;/li&gt;
&lt;li&gt;Radish&lt;/li&gt;
&lt;/ul&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<ul>
<li>Beetroot</li><br/>
<li>Ginger</li><br/>
<li>Potato</li><br/>
<li>Radish</li><br/>
</ul>
</div>
<h2>The type Attribute</h2>
<p>You can use <b>type</b> attribute for &lt;ul&gt; tag to specify the type of bullet you like. By default it is a disc. Following are the possible options:</p>
<pre class="prettyprint notranslate">
&lt;ul type="square"&gt;
&lt;ul type="disc"&gt;
&lt;ul type="circle"&gt;
</pre>
<h3>Example</h3>
<p>Following is an example where we used &lt;ul type="square"&gt;</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Unordered List&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
   &lt;ul type="square"&gt;
   &lt;li&gt;Beetroot&lt;/li&gt;
   &lt;li&gt;Ginger&lt;/li&gt;
   &lt;li&gt;Potato&lt;/li&gt;
   &lt;li&gt;Radish&lt;/li&gt;
   &lt;/ul&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<ul type="square">
<li>Beetroot</li><br/>
<li>Ginger</li><br/>
<li>Potato</li><br/>
<li>Radish</li><br/>
</ul>
</div>
<h3>Example</h3>
<p>Following is an example where we used &lt;ul type="disc"&gt; :</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Unordered List&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
   &lt;ul type="disc"&gt;
   &lt;li&gt;Beetroot&lt;/li&gt;
   &lt;li&gt;Ginger&lt;/li&gt;
   &lt;li&gt;Potato&lt;/li&gt;
   &lt;li&gt;Radish&lt;/li&gt;
   &lt;/ul&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<ul type="disc">
<li>Beetroot</li><br/>
<li>Ginger</li><br/>
<li>Potato</li><br/>
<li>Radish</li><br/>
</ul>
</div>
<h3>Example</h3>
<p>Following is an example where we used &lt;ul type="circle"&gt; :</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Unordered List&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
   &lt;ul type="circle"&gt;
   &lt;li&gt;Beetroot&lt;/li&gt;
   &lt;li&gt;Ginger&lt;/li&gt;
   &lt;li&gt;Potato&lt;/li&gt;
   &lt;li&gt;Radish&lt;/li&gt;
   &lt;/ul&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<ul type="circle">
<li>Beetroot</li><br/>
<li>Ginger</li><br/>
<li>Potato</li><br/>
<li>Radish</li><br/>
</ul>
</div>
<h2>HTML Ordered Lists</h2>
<p>If you are required to put your items in a numbered list instead of bulleted then HTML ordered list will be used. This list is created by using <b>&lt;ol&gt;</b> tag. The numbering starts at one and is incremented by one for each successive ordered list element tagged with &lt;li&gt;.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Ordered List&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;ol&gt;
&lt;li&gt;Beetroot&lt;/li&gt;
&lt;li&gt;Ginger&lt;/li&gt;
&lt;li&gt;Potato&lt;/li&gt;
&lt;li&gt;Radish&lt;/li&gt;
&lt;/ol&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<ol>
<li>Beetroot</li><br/>
<li>Ginger</li><br/>
<li>Potato</li><br/>
<li>Radish</li><br/>
</ol>
</div>
<h2>The type Attribute</h2>
<p>You can use <b>type</b> attribute for &lt;ol&gt; tag to specify the type of numbering you like. By default it is a number. Following are the possible options:</p>
<pre class="prettyprint notranslate">
&lt;ol type="1"&gt; - Default-Case Numerals.
&lt;ol type="I"&gt; - Upper-Case Numerals.
&lt;ol type="i"&gt; - Lower-Case Numerals.
&lt;ol type="a"&gt; - Lower-Case Letters.
&lt;ol type="A"&gt; - Upper-Case Letters.
</pre>
<h3>Example</h3>
<p>Following is an example where we used &lt;ol type="1"&gt;</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Ordered List&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
   &lt;ol type="1"&gt;
   &lt;li&gt;Beetroot&lt;/li&gt;
   &lt;li&gt;Ginger&lt;/li&gt;
   &lt;li&gt;Potato&lt;/li&gt;
   &lt;li&gt;Radish&lt;/li&gt;
   &lt;/ol&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<ol type="1">
<li>Beetroot</li><br/>
<li>Ginger</li><br/>
<li>Potato</li><br/>
<li>Radish</li><br/>
</ol>
</div>
<h3>Example</h3>
<p>Following is an example where we used &lt;ol type="I"&gt;</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Ordered List&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
   &lt;ol type="I"&gt;
   &lt;li&gt;Beetroot&lt;/li&gt;
   &lt;li&gt;Ginger&lt;/li&gt;
   &lt;li&gt;Potato&lt;/li&gt;
   &lt;li&gt;Radish&lt;/li&gt;
   &lt;/ol&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<ol type="I">
<li>Beetroot</li><br/>
<li>Ginger</li><br/>
<li>Potato</li><br/>
<li>Radish</li><br/>
</ol>
</div>

<h3>Example</h3>
<p>Following is an example where we used &lt;ol type="i"&gt;</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Ordered List&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
   &lt;ol type="i"&gt;
   &lt;li&gt;Beetroot&lt;/li&gt;
   &lt;li&gt;Ginger&lt;/li&gt;
   &lt;li&gt;Potato&lt;/li&gt;
   &lt;li&gt;Radish&lt;/li&gt;
   &lt;/ol&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<ol type="i">
<li>Beetroot</li><br/>
<li>Ginger</li><br/>
<li>Potato</li><br/>
<li>Radish</li><br/>
</ol>
</div>

<h3>Example</h3>
<p>Following is an example where we used &lt;ol type="A"&gt;</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Ordered List&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
   &lt;ol type="A"&gt;
   &lt;li&gt;Beetroot&lt;/li&gt;
   &lt;li&gt;Ginger&lt;/li&gt;
   &lt;li&gt;Potato&lt;/li&gt;
   &lt;li&gt;Radish&lt;/li&gt;
   &lt;/ol&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<ol type="A">
<li>Beetroot</li><br/>
<li>Ginger</li><br/>
<li>Potato</li><br/>
<li>Radish</li><br/>
</ol>
</div>

<h3>Example</h3>
<p>Following is an example where we used &lt;ol type="a"&gt;</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Ordered List&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
   &lt;ol type="a"&gt;
   &lt;li&gt;Beetroot&lt;/li&gt;
   &lt;li&gt;Ginger&lt;/li&gt;
   &lt;li&gt;Potato&lt;/li&gt;
   &lt;li&gt;Radish&lt;/li&gt;
   &lt;/ol&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<ol type="a">
<li>Beetroot</li><br/>
<li>Ginger</li><br/>
<li>Potato</li><br/>
<li>Radish</li><br/>
</ol>
</div>
<h2>The start Attribute</h2>
<p>You can use <b>start</b> attribute for &lt;ol&gt; tag to specify the starting point of numbering you need. Following are the possible options:</p>
<pre class="prettyprint notranslate">
&lt;ol type="1" start="4"&gt;    - Numerals starts with 4.
&lt;ol type="I" start="4"&gt;    - Numerals starts with IV.
&lt;ol type="i" start="4"&gt;    - Numerals starts with iv.
&lt;ol type="a" start="4"&gt;    - Letters starts with d.
&lt;ol type="A" start="4"&gt;    - Letters starts with D.
</pre>
<h3>Example</h3>
<p>Following is an example where we used &lt;ol type="i" start="4" &gt;</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Ordered List&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
   &lt;ol type="i" start="4"&gt;
   &lt;li&gt;Beetroot&lt;/li&gt;
   &lt;li&gt;Ginger&lt;/li&gt;
   &lt;li&gt;Potato&lt;/li&gt;
   &lt;li&gt;Radish&lt;/li&gt;
   &lt;/ol&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<ol type="i" start="4">
<li>Beetroot</li><br/>
<li>Ginger</li><br/>
<li>Potato</li><br/>
<li>Radish</li><br/>
</ol>
</div>
<h2>HTML Definition Lists</h2>
<p>HTML and XHTML support a list style which is called <b>definition lists</b> where entries are listed like in a dictionary or encyclopedia. The definition list is the ideal way to present a glossary, list of terms, or other name/value list.</p>
<p>Definition List makes use of following three tags.</p>
<ul class="list">
<li>&lt;dl&gt; - Defines the start of the list</li><br/>
<li>&lt;dt&gt; - A term</li><br/>
<li>&lt;dd&gt; - Term definition</li><br/>
<li>&lt;/dl&gt; - Defines the end of the list</li><br/>
</ul>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Definition List&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;dl&gt;
&lt;dt&gt;&lt;b&gt;HTML&lt;/b&gt;&lt;/dt&gt;
&lt;dd&gt;This stands for Hyper Text Markup Language&lt;/dd&gt;
&lt;dt&gt;&lt;b&gt;HTTP&lt;/b&gt;&lt;/dt&gt;
&lt;dd&gt;This stands for Hyper Text Transfer Protocol&lt;/dd&gt;
&lt;/dl&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<dl>
<dt><b>HTML</b></dt>
<dd>This stands for Hyper Text Markup Language</dd>
<dt><b>HTTP</b></dt>
<dd>This stands for Hyper Text Transfer Protocol</dd>
</dl>
</div>


<br/><br/><br/><br/><br/>



<a href="HTables.jsp">Previous</a>
<a href="HTextLinks.jsp">Next</a>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>


</body>
</html>