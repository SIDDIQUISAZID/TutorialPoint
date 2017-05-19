<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Stylesheet</title>
</head>
<body>


<header>
eduOnline
</header>

<h1>HTML STYLESHEET</h1>

<p>Cascading Style Sheets (CSS) describe how documents are presented on screens, in print, or perhaps how they are pronounced. W3C has actively promoted the use of style sheets on the Web since the Consortium was founded in 1994.</p>
<p>Cascading Style Sheets (CSS) provide easy and effective alternatives to specify various attributes for the HTML tags.  Using CSS, you can specify a number of style properties for a given HTML element. Each property has a name and a value, separated by a colon (:). Each property declaration is separated by a semi-colon (;).</p>
<h3>Example</h3>
<p>First let's consider an example of HTML document which makes use of &lt;font&gt; tag and associated attributes to specify text color and font size:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML CSS&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;&lt;font color="green" size="5"&gt;Hello, World!&lt;/font&gt;&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>We can re-write above example with the help of Style Sheet as follows:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML CSS&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p style="color:green;font-size:24px;"&gt;Hello, World!&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p style="color:green;font-size:24px;">Hello, World!</p>
</div>

<p>You can use CSS in three ways in your HTML document:</p>
<ul class="list">
<li><b>External Style Sheet</b> - Define style sheet rules in a separate .css file and then include that file in your HTML document using HTML &lt;link&gt; tag.</li></br/>
<li><b>Internal Style Sheet</b> - Define style sheet rules in header section of the HTML document using &lt;style&gt; tag.</li><br/>
<li><b>Inline Style Sheet</b> - Define style sheet rules directly along-with the HTML elements using <b>style</b> attribute.</li><br/>
</ul>
<p>Let's see all the three cases one by one with the help of suitable examples.</p>
<h2>External Style Sheet</h2>
<p>If you need to use your style sheet to various pages, then its always recommended to define a common style sheet in a separate file. A cascading style sheet file will have extension as <b>.css</b> and it will be included in HTML files using &lt;link&gt; tag.</p>
<h3>Example</h3>
<p>Consider we define  a style sheet file <b>style.css</b> which has following rules:</p>
<pre class="prettyprint notranslate">
.red{
   color: red;
}
.thick{
   font-size:20px;
}
.green{
   color:green;
}
</pre>
<p>Here we defined three CSS rules which will be applicable to three different classes defined for the HTML tags. I suggest you should not bother about how these rules are being defined because you will learn them while studying CSS. Now let's make use of the above external CSS file in our following HTML document:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML External CSS&lt;/title&gt;
&lt;link rel="stylesheet" type="text/css" href="/html/style.css"&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p class="red"&gt;This is red&lt;/p&gt;

&lt;p class="thick"&gt;This is thick&lt;/p&gt;

&lt;p class="green"&gt;This is green&lt;/p&gt;

&lt;p class="thick green"&gt;This is thick and green&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p style="color:red;">This is red</p>

<p style="font-size:20px;">This is thick</p>

<p style="color:green;">This is green</p>

<p style="color:green;font-size:20px;">This is thick and green</p>
</div>

<h2>Internal Style Sheet</h2>
<p>If you want to apply Style Sheet rules to a single document only then you can include those rules in header section of the HTML document using &lt;style&gt; tag.</p>
<p>Rules defined in internal style sheet overrides the rules defined in an external CSS file.</p>
<h3>Example</h3>
<p>Let's re-write above example once again, but here we will write style sheet rules in the same HTML document using &lt;style&gt; tag:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Internal CSS&lt;/title&gt;
&lt;style type="text/css"&gt;
.red{
   color: red;
}
.thick{
   font-size:20px;
}
.green{
   color:green;
}
&lt;/style&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p class="red"&gt;This is red&lt;/p&gt;

&lt;p class="thick"&gt;This is thick&lt;/p&gt;

&lt;p class="green"&gt;This is green&lt;/p&gt;

&lt;p class="thick green"&gt;This is thick and green&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p style="color:red;">This is red</p>

<p style="font-size:20px;">This is thick</p>

<p style="color:green;">This is green</p>

<p style="color:green;font-size:20px;">This is thick and green</p>
</div>
<h2>Inline Style Sheet</h2>
<p>You can apply style sheet rules directly to any HTML element using <b>style</b> attribute of the relevant tag. This should be done only when you are interested to make a particular change in any HTML element only.</p>
<p>Rules defined inline with the element overrides the rules defined in an external CSS file as well as the rules defined in &lt;style&gt; element.</p>
<h3>Example</h3>
<p>Let's re-write above example once again, but here we will write style sheet rules along with the HTML elements using <b>style</b> attribute of those elements.</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML Inline CSS&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p style="color:red;"&gt;This is red&lt;/p&gt;

&lt;p style="font-size:20px;"&gt;This is thick&lt;/p&gt;

&lt;p style="color:green;"&gt;This is green&lt;/p&gt;

&lt;p style="color:green;font-size:20px;"&gt;This is thick and green&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p style="color:red;">This is red</p>

<p style="font-size:20px;">This is thick</p>

<p style="color:green;">This is green</p>

<p style="color:green;font-size:20px;">This is thick and green</p>
</div>




<br/><br/><br/><br/><br/>



<a href="HHeaders.jsp">Previous</a>
<a href="HJavascript.jsp">Next</a>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>