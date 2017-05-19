<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="Layout.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>HTML Phrase Tags</title>
</head>
<body>

<header>
eduOnline
</header>

<h1>HTML PHRASE TAGS</h1>




<p>The phrase tags have been designed for specific purposes, though they are displayed in a similar way as  other basic tags like &lt;b&gt;, &lt;i&gt;, &lt;pre&gt;, and &lt;tt&gt;, you have seen in previous chapter. This chapter will take you through all the important phrase tags, so let's start seeing them one by one.</p>
<h2>Emphasized Text</h2>
<p>Anything that appears within <b>&lt;em&gt;...&lt;/em&gt;</b> element is displayed as emphasized text.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Emphasized Text Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;The following word uses a &lt;em&gt;emphasized&lt;/em&gt; typeface.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>The following word uses a <em>emphasized</em> typeface.</p>
</div>
<h2>Marked Text</h2>
<p>Anything that appears with-in <b>&lt;mark&gt;...&lt;/mark&gt;</b> element, is displayed as marked with yellow ink.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Marked Text Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;The following word has been &lt;mark&gt;marked&lt;/mark&gt; with yellow&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>The following word has been <mark>marked</mark> with yellow.</p>
</div>
<h2>Strong Text</h2>
<p>Anything that appears within <b>&lt;strong&gt;...&lt;/strong&gt;</b> element is displayed as important text.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Strong Text Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;The following word uses a &lt;strong&gt;strong&lt;/strong&gt; typeface.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>The following word uses a <strong>strong</strong> typeface.</p>
</div>
<h2>Text Abbreviation</h2>
<p>You can abbreviate a text by putting it inside opening <b>&lt;abbr&gt;</b> and closing <b>&lt;/abbr&gt;</b> tags.  If present, the title attribute must contain this full description and nothing else.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Text Abbreviation&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;My best friend's name is  &lt;abbr title="Abhishek"&gt;Abhy&lt;/abbr&gt;.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>My best friend's name is  <abbr title="Abhishek">Abhy</abbr>.</p>
</div>
<h2>Acronym Element</h2>
<p>The <b>&lt;acronym&gt;</b> element allows you to indicate that the text between &lt;acronym&gt; and &lt;/acronym&gt; tags is an acronym.</p>
<p>At present, the major browsers do not change the appearance of the content of the &lt;acronym&gt; element.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Acronym Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;This chapter covers marking up text in &lt;acronym&gt;XHTML&lt;/acronym&gt;.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>This chapter covers marking up text in <acronym>XHTML</acronym>.</p>
</div>
<h2>Text Direction</h2>
<p>The <b>&lt;bdo&gt;...&lt;/bdo&gt;</b> element stands for Bi-Directional Override and it is used to override the current text direction.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Text Direction Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;This text will go left to right.&lt;/p&gt;
&lt;p&gt;&lt;bdo dir="rtl"&gt;This text will go right to left.&lt;/bdo&gt;&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>This text will go left to right.</p>
<p><bdo dir="rtl">This text will go right to left.</bdo></p>
</div>
<h2>Special Terms</h2>
<p>The <b>&lt;dfn&gt;...&lt;/dfn&gt;</b> element (or HTML Definition Element)  allows you to specify that you are introducing a special term. It's usage is similar to italic words in the midst of a paragraph.</p>
<p>Typically, you would use the &lt;dfn&gt; element the first time you introduce a key term. Most recent browsers render the content of a &lt;dfn&gt; element in an italic font.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Special Terms Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;The following word is a &lt;dfn&gt;special&lt;/dfn&gt; term.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>The following word is a <dfn>special</dfn> term.</p>
</div>
<h2>Quoting Text</h2>
<p>When you want to quote a passage from another source, you should put it in between <b>&lt;blockquote&gt;...&lt;/blockquote&gt;</b> tags.</p>
<p>Text inside a &lt;blockquote&gt; element is usually indented from the left and right edges of the surrounding text, and sometimes uses an italicized font.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Blockquote Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;The following description of XHTML is taken from the W3C Web site:&lt;/p&gt;

&lt;blockquote&gt;XHTML 1.0 is the W3C's first Recommendation for XHTML, following on from earlier work on HTML 4.01, HTML 4.0, HTML 3.2 and HTML 2.0.&lt;/blockquote&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>The following description of XHTML is taken from the W3C Web site:</p>

<blockquote style="border-left:0px; padding-left:25px;padding-right:25px;">XHTML 1.0 is the W3C's first Recommendation for XHTML, following on from earlier work on HTML 4.01, HTML 4.0, HTML 3.2 and HTML 2.0.</blockquote>
</div>
<h2>Short Quotations</h2>
<p>The <b>&lt;q&gt;...&lt;/q&gt;</b> element is used when you want to add a double quote within a sentence.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Double Quote Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Amit is in Spain, &lt;q&gt;I think I am wrong&lt;/q&gt;.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>Amit is in Spain, <q>I think I am wrong</q>.</p>
</div>
<h2>Text Citations</h2>
<p>If you are quoting a text, you can indicate the source placing it between an opening <b>&lt;cite&gt;</b> tag and closing <b>&lt;/cite&gt;</b> tag</p>
<p>As you would expect in a print publication, the content of the &lt;cite&gt; element is rendered in italicized text by default.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Citations Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;This HTML tutorial is derived from &lt;cite&gt;W3 Standard for HTML&lt;/cite&gt;.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>This HTML tutorial is derived from <cite style="font-style:italic">W3 Standard for HTML</cite>.</p>
</div>
<h2>Computer Code</h2>
<p>Any programming code to appear on a Web page should be placed inside <b>&lt;code&gt;...&lt;/code&gt;</b> tags. Usually the content of the &lt;code&gt; element is presented in a monospaced font, just like the code in most programming books.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Computer Code Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Regular text. &lt;code&gt;This is code.&lt;/code&gt; Regular text.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>Regular text. <code style="color:#000;background-color:#fff;">This is code.</code> Regular text.</p>
</div>
<h2>Keyboard Text</h2>
<p>When you are talking about computers, if you want to tell a reader to enter some text, you can use the <b>&lt;kbd&gt;...&lt;/kbd&gt;</b> element to indicate what should be typed in, as in this example.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Keyboard Text Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Regular text. &lt;kbd&gt;This is inside kbd element&lt;/kbd&gt; Regular text.&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>Regular text. <kbd style="color:#000;background-color:#fff;box-shadow:none;">This is inside kbd element</kbd> Regular text.</p>
</div>
<h2>Programming Variables</h2>
<p>This element is usually used in conjunction with the <b>&lt;pre&gt;</b> and <b>&lt;code&gt;</b> elements to indicate that the content of that element is a variable.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Variable Text Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;&lt;code&gt;document.write("&lt;var&gt;user-name&lt;/var&gt;")&lt;/code&gt;&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p><code style="color:#000;background-color:#fff;">document.write("<var>user-name</var>")</code></p>
</div>
<h2>Program Output</h2>
<p>The <b>&lt;samp&gt;...&lt;/samp&gt;</b> element indicates sample output from a program, and script etc. Again, it is mainly used when documenting programming or coding concepts.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Program Output Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;p&gt;Result produced by the program is &lt;samp&gt;Hello World!&lt;/samp&gt;&lt;/p&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<p>Result produced by the program is <samp>Hello World!</samp></p>
</div>
<h2>Address Text</h2>
<p>The <b>&lt;address&gt;...&lt;/address&gt;</b> element is used to contain any address.</p>
<h3>Example</h3>
<pre class="prettyprint notranslate tryit">
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
&lt;title&gt;Address Example&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;
&lt;address&gt;388A, Road No 22, Jubilee Hills -  Hyderabad&lt;/address&gt;
&lt;/body&gt;
&lt;/html&gt;
</pre>
<p>This will produce following result:</p>
<div class="result notranslate">
<address style="font-style:italic; margin-bottom:0px;">388A, Road No 22, Jubilee Hills -  Hyderabad</address>
</div>
<hr />



<br/><br/><br/><br/><br/>


<a href="HFormatting.jsp">Previous</a>
<a href="HMetaTags.jsp">Next</a>




<footer>
<pre>eduOnline
<span style="font-family:Times New Roman; font-size: 20px; color:crimson;margin-top:0px;">Accessible Quality Education</span>
<p style="font-size:10px; color:black;"> &#169 2016. All Rights Reserved</p></pre>
</footer>
</body>
</html>