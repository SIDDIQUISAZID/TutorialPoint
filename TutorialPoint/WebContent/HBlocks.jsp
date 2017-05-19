<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Blocks</title>
</head>
<body>

<header>
eduOnline
</header>


<h1>HTML BLOCKS</h1>

<p>All the HTML elements can be categorized into  two categories <b>(a)</b> Block Level Elements <b>(b)</b> Inline Elements</p>
<h2>Block Elements</h2>
<p>Block elements appear on the screen as if they have a line break before and after them. For example the &lt;p&gt;, &lt;h1&gt;, &lt;h2&gt;, &lt;h3&gt;, &lt;h4&gt;, &lt;h5&gt;, &lt;h6&gt;, &lt;ul&gt;, &lt;ol&gt;, &lt;dl&gt;, &lt;pre&gt;, &lt;hr /&gt;, &lt;blockquote&gt;, and &lt;address&gt; elements are all block level elements. They all start on their own new line, and anything that follows them appears on its own new line.</p>
<h2>Inline Elements</h2>
<p>Inline elements, on the other hand, can appear within sentences and do not have to appear on a new line of their own. The &lt;b&gt;, &lt;i&gt;, &lt;u&gt;, &lt;em&gt;, &lt;strong&gt;, &lt;sup&gt;, &lt;sub&gt;, &lt;big&gt;, &lt;small&gt;, &lt;li&gt;, &lt;ins&gt;, &lt;del&gt;, &lt;code&gt;, &lt;cite&gt;, &lt;dfn&gt;, &lt;kbd&gt;, and &lt;var&gt; elements are all inline elements.</p>
<h2>Grouping HTML Elements</h2>
<p>There are two important tags which we use very frequently to group various other HTML tags (i) &lt;div&gt; tag and (ii) &lt;span&gt; tag</p>
<h2>The &lt;div&gt; tag</h2>
<p>This is the very important block level tag which plays a big role in grouping various other HTML tags and applying CSS on group of elements. Even now &lt;div&gt; tag can be used to create webpage layout where we define different parts ( Left, Right, Top etc) of the page using &lt;div&gt; tag.  This tag does not provide any visual change on the block but this has more meaning when it is used with CSS.</p>
<h3>Example</h3>
<p>Following is a simple example of &lt;div&gt; tag. We will learn Cascading Style Sheet (CSS) in a separate chapter but we used it here to show the usage of &lt;div&gt; tag:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML div Tag&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;

&lt;!-- First group of tags --&gt;
&lt;div style="color:red"&gt;
   &lt;h4&gt;This is first group&lt;/h4&gt;
   &lt;p&gt;Following is a list of vegetables&lt;/p&gt;
   &lt;ul&gt;
   &lt;li&gt;Beetroot&lt;/li&gt;
   &lt;li&gt;Ginger&lt;/li&gt;
   &lt;li&gt;Potato&lt;/li&gt;
   &lt;li&gt;Radish&lt;/li&gt;
   &lt;/ul&gt;
&lt;/div&gt;

&lt;!-- Second group of tags --&gt;
&lt;div style="color:green"&gt;
   &lt;h4&gt;This is second group&lt;/h4&gt;
   &lt;p&gt;Following is a list of fruits&lt;/p&gt;
   &lt;ul&gt;
   &lt;li&gt;Apple&lt;/li&gt;
   &lt;li&gt;Banana&lt;/li&gt;
   &lt;li&gt;Mango&lt;/li&gt;
   &lt;li&gt;Strawberry&lt;/li&gt;
   &lt;/ul&gt;
&lt;/div&gt;

&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<!-- First group of tags -->
<div style="color:red">
   <h4>This is first group</h4>
   <p>Following is a list of vegetables</p>
   <ul>
   <li>Beetroot</li><br/>
   <li>Ginger</li><br/>
   <li>Potato</li><br/>
   <li>Radish</li><br/>
   </ul>
</div>

<!-- Second group of tags -->
<div style="color:green">
   <h4>This is second group</h4>
   <p>Following is a list of fruits</p>
   <ul>
   <li>Apple</li><br/>
   <li>Banana</li><br/>
   <li>Mango</li><br/>
   <li>Strawberry</li><br/>
   </ul>
</div>
</div>
<h2>The &lt;span&gt; tag</h2>
<p>The HTML &lt;span&gt; is an inline element and it can be used to group inline-elements in an HTML document.  This tag also does not provide any visual change on the block but has more meaning when it is used with CSS.</p>
<p>The difference between the &lt;span&gt; tag and the &lt;div&gt; tag is that the &lt;span&gt; tag is used with inline elements where as the &lt;div&gt; tag is used with block-level elements.</p>
<h3>Example</h3>
<p>Following is a simple example of &lt;span&gt; tag. We will learn Cascading Style Sheet (CSS) in a separate chapter but we used it here to show the usage of &lt;span&gt; tag:</p>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;HTML span Tag&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;

&lt;p&gt;This is &lt;span style="color:red"&gt;red&lt;/span&gt; and this is &lt;span style="color:green"&gt;green&lt;/span&gt;&lt;/p&gt;

&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>This is <span style="color:red">red</span>, and this is <span style="color:green">green</span></p>
</div>



<br/><br/><br/><br/><br/>



<a href="HIFrames.jsp">Previous</a>
<a href="HBackgrounds.jsp">Next</a>


<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>

</body>
</html>