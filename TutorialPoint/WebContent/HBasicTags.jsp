<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="CoursePages.css" >
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Basic Tags In HTML</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>HTML BASIC TAGS</h1>
<h2>Heading Tags</h2>
<p>Any document starts with a heading. You can use different sizes for your headings. HTML also has six levels of headings, which use the elements <b>&lt;h1&gt;, &lt;h2&gt;, &lt;h3&gt;, &lt;h4&gt;, &lt;h5&gt;, and &lt;h6&gt;</b>. While displaying any heading, browser adds one line before and one line after that heading.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Heading Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;h1&gt;This is heading 1&lt;/h1&gt;
&lt;h2&gt;This is heading 2&lt;/h2&gt;
&lt;h3&gt;This is heading 3&lt;/h3&gt;
&lt;h4&gt;This is heading 4&lt;/h4&gt;
&lt;h5&gt;This is heading 5&lt;/h5&gt;
&lt;h6&gt;This is heading 6&lt;/h6&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<img src="/html/images/html_heading_tags.jpg" alt="HTML Heading Tags" />
<h2>Paragraph Tag</h2>
<p>The <b>&lt;p&gt;</b> tag offers a way to structure your text into different paragraphs. Each paragraph of text should go in between an opening &lt;p&gt; and a closing &lt;/p&gt; tag as shown below in the example:</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Paragraph Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Here is a first paragraph of text.&lt;/p&gt;
&lt;p&gt;Here is a second paragraph of text.&lt;/p&gt;
&lt;p&gt;Here is a third paragraph of text.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>Here is a first paragraph of text.</p>
<p>Here is a second paragraph of text.</p>
<p>Here is a third paragraph of text.</p>
</div>
<h2>Line Break Tag</h2>
<p>Whenever you use the <b>&lt;br /&gt;</b> element, anything following it starts from the next line. This tag is an example of an <b>empty</b> element, where you do not need opening and closing tags, as there is nothing to go in between them.</p>
<p>The &lt;br /&gt; tag has a space between the characters <b>br</b> and the forward slash. If you omit this space, older browsers will have trouble rendering the line break, while if you miss the forward slash character and just use &lt;br&gt; it is not valid in XHTML</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Line Break  Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Hello&lt;br /&gt;
You delivered your assignment ontime.&lt;br /&gt;
Thanks&lt;br /&gt;
Mahnaz&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>Hello<br />
You delivered your assignment ontime.<br />
Thanks<br />
Mahnaz</p>
</div>
<h2>Centering Content</h2>
<p>You can use <b>&lt;center&gt;</b> tag to put any content in the center of the page or any table cell.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Centring Content Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;This text is not in the center.&lt;/p&gt;
&lt;center&gt;
&lt;p&gt;This text is in the center.&lt;/p&gt;
&lt;/center&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>This text is not in the center.</p>
<center>
<p style="text-align:center;">This text is in the center.</p>
</center>
</div>
<h2>Horizontal Lines</h2>
<p>Horizontal lines are used to visually break up sections of a document. The <b>&lt;hr&gt;</b> tag creates a line from the current position in the document to the right margin and breaks the line accordingly.</p>
<p>For example you may want to give a line between two paragraphs as in the given example below:</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Horizontal Line Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;This is paragraph one and should be on top&lt;/p&gt;
&lt;hr /&gt;
&lt;p&gt;This is paragraph two and should be at bottom&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>This is paragraph one and should be on top</p>
<hr />
<p>This is paragraph two and should be at bottom</p>
</div>
<p>Again <b>&lt;hr /&gt;</b> tag is an example of the <b>empty</b> element, where you do not need opening and closing tags, as there is nothing to go in between them.</p>
<p>The &lt;hr /&gt; element has a space between the characters <b>hr</b> and the forward slash. If you omit this space, older browsers will have trouble rendering the horizontak line, while if you miss the forward slash character and just use &lt;hr&gt; it is not valid in XHTML</p>
<h2>Preserve Formatting</h2>
<p>Sometimes you want your text to follow the exact format of how it is written in the HTML document. In those cases, you can use the preformatted tag &lt;pre&gt;.</p>
<p>Any text between the opening &lt;pre&gt; tag and the closing &lt;/pre&gt; tag will preserve the formatting of the source document.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Preserve Formatting Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;pre&gt;
function testFunction( strText ){
   alert (strText)
}
&lt;/pre&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<pre style="background:none; border:0px;">
function testFunction( strText ){
   alert (strText)
}
</pre>
</div>
<p>Try using same code without keeping it inside &lt;pre&gt;...&lt;/pre&gt; tags</p>
<h2>Nonbreaking Spaces</h2>
<p>Suppose you want to use the phrase <span class="notranslate">"12 Angry Men."</span> Here you would not want a browser to split the <span class="notranslate">"12, Angry"</span> and <span class="notranslate">"Men"</span> across two lines:</p>
<pre class="prettyprint notranslate">
An example of this technique appears in the movie "12 Angry Men."
</pre>
<p>In cases where you do not want the client browser to break text, you should use a nonbreaking space entity <b>&amp;nbsp;</b> instead of a normal space. For example, when coding the "12 Angry Men" in a paragraph, you should use something similar to the following code:</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Nonbreaking Spaces Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;An example of this technique appears in the movie "12&amp;nbsp;Angry&amp;nbsp;Men."&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>

<br/><br/><br/><br/><br/>


<a href="HIntro.jsp">Previous</a>
<a href="HElements.jsp">Next</a>




<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>
</body>
</html>